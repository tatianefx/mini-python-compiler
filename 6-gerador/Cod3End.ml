open Printf

open Ast
open Tast
open Codigo

let conta_temp = ref 0
let conta_rotulos = ref (Hashtbl.create 5)

let zera_contadores () =
  begin
    conta_temp := 0;
    conta_rotulos := Hashtbl.create 5
  end

let novo_temp () =
   let numero = !conta_temp in
   let _ = incr conta_temp in
   Temp numero

let novo_rotulo prefixo =
  if Hashtbl.mem !conta_rotulos prefixo
  then
     let numero = Hashtbl.find !conta_rotulos prefixo in
     let _ = Hashtbl.replace !conta_rotulos prefixo (numero + 1) in
     Rotulo (prefixo ^ (string_of_int numero))
  else
     let _ = Hashtbl.add !conta_rotulos prefixo 1 in
     Rotulo (prefixo ^ "0")

(* Codigo para impressão *)

let endr_to_str = function
   | Nome s -> s
   | ConstInt n -> string_of_int n
   | ConstFloat n -> string_of_float n
   | Temp n  -> "t" ^ string_of_int n

let tipo_to_str t =
    match t with
    | INTEIRO -> "inteiro"
    | STRING -> "string"
    | BOOLEAN -> "bool"
    | NONE -> "void"
    | REAL -> "float"

let op_to_str op =
  match op with
  | ADICAO  -> "+"
  | SUBTRACAO -> "-"
  | MULTIPLICACAO  -> "*"
  | DIVISAO   -> "/"
  | MOD -> "%"
  | MENORQ -> "<"
  | MENORIGUALQ -> "<="
  | EHIGUAL -> "="
  | EHDIFERENTE -> "!="
  | MAIORQ -> ">"
  | MAIORIGUALQ -> ">="
  | AND     -> "&&"
  | OR    -> "||"
  | NEGACAO -> "not"

let rec args_to_str ats =
   match ats with
   | [] -> ""
   | [(a,t)] ->
     let str = sprintf "(%s,%s)" (endr_to_str a) (tipo_to_str t) in
     str
   | (a,t) :: ats ->
     let str = sprintf "(%s,%s)" (endr_to_str a) (tipo_to_str t) in
     str ^ ", " ^ args_to_str ats

let rec escreve_cod3 c =
  match c with
  | AtribBin (x,y,op,z) ->
      sprintf "%s := %s %s %s\n" (endr_to_str x)
                                (endr_to_str y) (op_to_str (fst op)) (endr_to_str z)
  | AtribUn (x,op,y) ->
      sprintf "%s := %s %s\n" (endr_to_str x) (op_to_str (fst op)) (endr_to_str y)
  | Copia (x,y) ->
      sprintf "%s := %s\n" (endr_to_str x) (endr_to_str y)
  | Goto l ->
      sprintf "goto %s\n" (escreve_cod3 l)
  | If (x,l) ->
      sprintf "if %s goto %s\n" (endr_to_str x) (escreve_cod3 l)
  | IfFalse (x,l) ->
      sprintf "ifFalse %s goto %s\n" (endr_to_str x) (escreve_cod3 l)
  | IfRelgoto (x,oprel,y,l) ->
      sprintf "if %s %s %s goto %s\n" (endr_to_str x) (op_to_str (fst oprel))
                                     (endr_to_str y) (escreve_cod3 l)
  | Call (p,ats,t) -> sprintf "call %s(%s): %s\n" p (args_to_str ats) (tipo_to_str t)
  | Recebe (x,t) -> sprintf "recebe %s,%s\n" x (tipo_to_str t)
  | Local (x,t)  -> sprintf "local %s,%s\n" x (tipo_to_str t)
  | Global (x,t) -> sprintf "global %s,%s\n" x (tipo_to_str t)
  | CallFn (x,p,ats,t) ->
      sprintf "%s := call %s(%s): %s\n" (endr_to_str x) p (args_to_str ats) (tipo_to_str t)
  | Return x ->
    (match x with
       None   -> "return\n"
     | Some x -> sprintf "return %s\n" (endr_to_str x) )
  | BeginFun (id,np,nl) -> sprintf "beginFun %s(%d,%d)\n" id np nl
  | EndFun -> "endFun\n\n"
  | Rotulo r -> sprintf "%s: " r


let rec escreve_codigo cod =
  match cod with
  | [] -> printf "\n"
  | c::cs -> printf "%s" (escreve_cod3 c);
             escreve_codigo cs

(* Código do tradutor para código de 3 endereço *)

let pega_tipo exp =
  match exp with
  | EXPINT (n, t) -> t
  | EXPVAR (v, t) -> t
  | EXPOPB ((op,t),_,_) -> t
  | EXPCALL (id, args, t) -> t
  | _ -> failwith "pega_tipo: não implementado"


let rec traduz_exp exp =
  match exp with
  | EXPINT (n, INTEIRO) ->
     let t = novo_temp () in
    (t, [Copia (t, ConstInt n)])
  | EXPVAR (v, tipo) ->
    (match v with
       VarSimples nome ->
       let id = fst nome in
       ((Nome id), [])
     | _ -> failwith "traduz_exp: não implementado"
    )
  | EXPOPB (op, exp1, exp2) ->
    let (endr1, codigo1) = let (e1,t1) = exp1 in traduz_exp e1
    and (endr2, codigo2) = let (e2,t2) = exp2 in traduz_exp e2
    and t = novo_temp () in
    let codigo = codigo1 @ codigo2 @ [AtribBin (t, endr1, op, endr2)] in
    (t, codigo)

  | EXPCALL (id, args, tipo_fn) ->
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos
      and t = novo_temp () in
      let codigo = (List.concat codigos) @
                   [CallFn (t, id, endr_tipos, tipo_fn)]
      in
        (t, codigo)
  | _ -> failwith "traduz_exp: não implementado"


let rec traduz_cmd cmd =
  match cmd with
  | RETORNO exp ->
    (match exp with
     | None -> [Return None]
     | Some e ->
       let (endr_exp, codigo_exp) = traduz_exp e in
       codigo_exp @ [Return (Some endr_exp)]
    )
  | ATRIBUICAO (elem, EXPINT (n, INTEIRO)) ->
    let (endr_elem, codigo_elem) = traduz_exp elem
    in codigo_elem @ [Copia (endr_elem, ConstInt n)]

  | ATRIBUICAO (elem, exp) ->
    let (endr_exp, codigo_exp) = traduz_exp exp
    and (endr_elem, codigo_elem) = traduz_exp elem in
    let codigo = codigo_exp @ codigo_elem @ [Copia (endr_elem, endr_exp)]
    in codigo
  | CONDICAOIF (teste, entao, senao) ->
    let (endr_teste, codigo_teste) = traduz_exp teste
    and codigo_entao = traduz_cmds entao
    and rotulo_falso = novo_rotulo "L" in
    (match senao with
        | None -> codigo_teste @
                  [IfFalse (endr_teste, rotulo_falso)] @
                  codigo_entao @
                  [rotulo_falso]
        | Some cmds ->
          let codigo_senao = traduz_cmds [cmds]
          and rotulo_fim = novo_rotulo "L" in
              codigo_teste @
              [IfFalse (endr_teste, rotulo_falso)] @
              codigo_entao @
              [Goto rotulo_fim] @
              [rotulo_falso] @ codigo_senao @
              [rotulo_fim]
    )
  | CONDICAOElifElse comandos ->
        traduz_cmds comandos
  | CHAMADADEFUNCAO (EXPCALL (id, args, tipo_fn)) ->
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos in
      (List.concat codigos) @
      [Call (id, endr_tipos, tipo_fn)]

  (* | CmdSaida args ->
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos in
      (List.concat codigos) @
      [Call ("print", endr_tipos, NONE)] *)

  | _ -> failwith "traduz_cmd: não implementado"


and traduz_cmds cmds =
  match cmds with
  | [] -> []
  | cmd :: cmds ->
     let codigo = traduz_cmd cmd in
     codigo @ traduz_cmds cmds

let traduz_fun ast =
  let trad_local x =
    match x with
      DecVar ((id,pos),t) -> Local (id,t)
  in
  match ast with
    Funcao {fn_nome; fn_tiporet; fn_formais; fn_locais; fn_corpo} ->
    let nome = fst fn_nome
    and formais = List.map (fun ((id,pos),tipo) -> Recebe (id,tipo)) fn_formais
    and nformais = List.length fn_formais
    and locais = List.map trad_local fn_locais
    and nlocais = List.length fn_locais
    and corpo = traduz_cmds fn_corpo
    in
    [BeginFun (nome,nformais,nlocais)] @ formais @ locais @ corpo @ [EndFun]


let tradutor ast_tipada =
  let trad_global x =
    match x with
      DecVar ((id,pos),t) -> Global (id,t)
  in
  let _ = zera_contadores () in
  let (Programa (decs_globais, decs_funs)) = ast_tipada in
  let globais_trad = List.map trad_global decs_globais in
  let funs_trad = List.map traduz_fun decs_funs in
  globais_trad @ (List.concat funs_trad) @
  [BeginFun ("main",0,0)] @ [EndFun]
