
type token = 
  | WHILE of (
# 18 "sintatico.mly"
       (Lexing.position)
# 7 "sintatico.ml"
)
  | VIRG of (
# 12 "sintatico.mly"
       (Lexing.position)
# 12 "sintatico.ml"
)
  | VEZES of (
# 14 "sintatico.mly"
       (Lexing.position)
# 17 "sintatico.ml"
)
  | STR of (
# 22 "sintatico.mly"
       (Lexing.position)
# 22 "sintatico.ml"
)
  | SETA of (
# 11 "sintatico.mly"
       (Lexing.position)
# 27 "sintatico.ml"
)
  | RETURN of (
# 20 "sintatico.mly"
       (Lexing.position)
# 32 "sintatico.ml"
)
  | RANGE of (
# 18 "sintatico.mly"
       (Lexing.position)
# 37 "sintatico.ml"
)
  | PRINT of (
# 16 "sintatico.mly"
       (Lexing.position)
# 42 "sintatico.ml"
)
  | OU of (
# 14 "sintatico.mly"
       (Lexing.position)
# 47 "sintatico.ml"
)
  | NOVALINHA
  | NOT of (
# 14 "sintatico.mly"
       (Lexing.position)
# 53 "sintatico.ml"
)
  | NONE of (
# 21 "sintatico.mly"
       (Lexing.position)
# 58 "sintatico.ml"
)
  | MODULO of (
# 14 "sintatico.mly"
       (Lexing.position)
# 63 "sintatico.ml"
)
  | MENOS of (
# 14 "sintatico.mly"
       (Lexing.position)
# 68 "sintatico.ml"
)
  | MENORIGUAL of (
# 13 "sintatico.mly"
       (Lexing.position)
# 73 "sintatico.ml"
)
  | MENOR of (
# 13 "sintatico.mly"
       (Lexing.position)
# 78 "sintatico.ml"
)
  | MAIS of (
# 14 "sintatico.mly"
       (Lexing.position)
# 83 "sintatico.ml"
)
  | MAIORIGUAL of (
# 13 "sintatico.mly"
       (Lexing.position)
# 88 "sintatico.ml"
)
  | MAIOR of (
# 13 "sintatico.mly"
       (Lexing.position)
# 93 "sintatico.ml"
)
  | Linha of (
# 5 "sintatico.mly"
       (int * int * token list)
# 98 "sintatico.ml"
)
  | LITSTRING of (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 103 "sintatico.ml"
)
  | LITINT of (
# 9 "sintatico.mly"
       (int * Lexing.position)
# 108 "sintatico.ml"
)
  | LITFLOAT of (
# 6 "sintatico.mly"
       (float * Lexing.position)
# 113 "sintatico.ml"
)
  | LITBOOL of (
# 10 "sintatico.mly"
       (bool * Lexing.position)
# 118 "sintatico.ml"
)
  | INT of (
# 23 "sintatico.mly"
       (Lexing.position)
# 123 "sintatico.ml"
)
  | INPUT of (
# 17 "sintatico.mly"
       (Lexing.position)
# 128 "sintatico.ml"
)
  | INDENTA
  | IN of (
# 18 "sintatico.mly"
       (Lexing.position)
# 134 "sintatico.ml"
)
  | IGUALDADE of (
# 13 "sintatico.mly"
       (Lexing.position)
# 139 "sintatico.ml"
)
  | IF of (
# 19 "sintatico.mly"
       (Lexing.position)
# 144 "sintatico.ml"
)
  | ID of (
# 7 "sintatico.mly"
       (string *Lexing.position )
# 149 "sintatico.ml"
)
  | FPAR of (
# 15 "sintatico.mly"
       (Lexing.position)
# 154 "sintatico.ml"
)
  | FOR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 159 "sintatico.ml"
)
  | FLOAT of (
# 24 "sintatico.mly"
       (Lexing.position)
# 164 "sintatico.ml"
)
  | EOF
  | ELSE of (
# 19 "sintatico.mly"
       (Lexing.position)
# 170 "sintatico.ml"
)
  | ELIF of (
# 19 "sintatico.mly"
       (Lexing.position)
# 175 "sintatico.ml"
)
  | E of (
# 14 "sintatico.mly"
       (Lexing.position)
# 180 "sintatico.ml"
)
  | DPONTOS of (
# 11 "sintatico.mly"
       (Lexing.position)
# 185 "sintatico.ml"
)
  | DIVIDIDO of (
# 14 "sintatico.mly"
       (Lexing.position)
# 190 "sintatico.ml"
)
  | DIFERENTE of (
# 13 "sintatico.mly"
       (Lexing.position)
# 195 "sintatico.ml"
)
  | DEF of (
# 11 "sintatico.mly"
       (Lexing.position)
# 200 "sintatico.ml"
)
  | DEDENTA
  | BOOL of (
# 25 "sintatico.mly"
       (Lexing.position)
# 206 "sintatico.ml"
)
  | ATRIB of (
# 13 "sintatico.mly"
       (Lexing.position)
# 211 "sintatico.ml"
)
  | APAR of (
# 15 "sintatico.mly"
       (Lexing.position)
# 216 "sintatico.ml"
)

# 1 "sintatico.mly"
  
	open Ast

# 223 "sintatico.ml"

let menhir_begin_marker =
  0

and (xv_tipo, xv_separated_nonempty_list_VIRG_parametro_, xv_separated_nonempty_list_VIRG_exprLogicoAritmetica_, xv_separated_list_VIRG_parametro_, xv_separated_list_VIRG_exprLogicoAritmetica_, xv_retorno, xv_programa, xv_print, xv_parametro, xv_option_exprLogicoAritmetica_, xv_option_condicaoELIFELSE_, xv_opU, xv_opB, xv_nonempty_list_comando_, xv_loption_separated_nonempty_list_VIRG_parametro__, xv_loption_separated_nonempty_list_VIRG_exprLogicoAritmetica__, xv_loopWhile, xv_loopFOR, xv_list_instrucao_, xv_leias, xv_leiai, xv_leiaf, xv_instrucao, xv_funcao, xv_exprLogicoAritmetica, xv_condicaoIF, xv_condicaoELIFELSE, xv_comandos, xv_comando, xv_chamadafuncao, xv_chamada, xv_atribuicao) =
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (xs : 'tv_separated_nonempty_list_VIRG_parametro_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (_2 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 232 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (x : 'tv_parametro) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 243 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 237 "sintatico.ml"
     : 'tv_separated_nonempty_list_VIRG_parametro_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (x : 'tv_parametro) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 241 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 243 "sintatico.ml"
     : 'tv_separated_nonempty_list_VIRG_parametro_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (xs : 'tv_separated_nonempty_list_VIRG_exprLogicoAritmetica_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (_2 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 248 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (x : 'tv_exprLogicoAritmetica) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 243 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 253 "sintatico.ml"
     : 'tv_separated_nonempty_list_VIRG_exprLogicoAritmetica_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (x : 'tv_exprLogicoAritmetica) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 241 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 259 "sintatico.ml"
     : 'tv_separated_nonempty_list_VIRG_exprLogicoAritmetica_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (xs : 'tv_loption_separated_nonempty_list_VIRG_parametro__) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) ->
    (
# 232 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 265 "sintatico.ml"
     : 'tv_separated_list_VIRG_parametro_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (xs : 'tv_loption_separated_nonempty_list_VIRG_exprLogicoAritmetica__) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) ->
    (
# 232 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 271 "sintatico.ml"
     : 'tv_separated_list_VIRG_exprLogicoAritmetica_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (x : 'tv_exprLogicoAritmetica) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 116 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( Some x )
# 277 "sintatico.ml"
     : 'tv_option_exprLogicoAritmetica_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 114 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( None )
# 283 "sintatico.ml"
     : 'tv_option_exprLogicoAritmetica_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (x : 'tv_condicaoELIFELSE) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 116 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( Some x )
# 289 "sintatico.ml"
     : 'tv_option_condicaoELIFELSE_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 114 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( None )
# 295 "sintatico.ml"
     : 'tv_option_condicaoELIFELSE_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (xs : 'tv_nonempty_list_comando_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (x : 'tv_comando) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 223 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 301 "sintatico.ml"
     : 'tv_nonempty_list_comando_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (x : 'tv_comando) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 221 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 307 "sintatico.ml"
     : 'tv_nonempty_list_comando_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (x : 'tv_separated_nonempty_list_VIRG_parametro_) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 144 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x )
# 313 "sintatico.ml"
     : 'tv_loption_separated_nonempty_list_VIRG_parametro__) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 142 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 319 "sintatico.ml"
     : 'tv_loption_separated_nonempty_list_VIRG_parametro__) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (x : 'tv_separated_nonempty_list_VIRG_exprLogicoAritmetica_) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 144 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x )
# 325 "sintatico.ml"
     : 'tv_loption_separated_nonempty_list_VIRG_exprLogicoAritmetica__) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 142 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 331 "sintatico.ml"
     : 'tv_loption_separated_nonempty_list_VIRG_exprLogicoAritmetica__) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (xs : 'tv_list_instrucao_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (x : 'tv_instrucao) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 213 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 337 "sintatico.ml"
     : 'tv_list_instrucao_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 211 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 343 "sintatico.ml"
     : 'tv_list_instrucao_) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 348 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 146 "sintatico.mly"
                 ( STRING 	)
# 353 "sintatico.ml"
     : 'tv_tipo) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_1 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 358 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 145 "sintatico.mly"
           ( NONE 		)
# 363 "sintatico.ml"
     : 'tv_tipo) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 368 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 144 "sintatico.mly"
           ( REAL 		)
# 373 "sintatico.ml"
     : 'tv_tipo) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 378 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 143 "sintatico.mly"
          ( INTEIRO 	)
# 383 "sintatico.ml"
     : 'tv_tipo) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 388 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 142 "sintatico.mly"
           ( BOOLEAN 	)
# 393 "sintatico.ml"
     : 'tv_tipo) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_3 : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (expr : 'tv_option_exprLogicoAritmetica_) (_startpos_expr_ : Lexing.position) (_endpos_expr_ : Lexing.position) (_startofs_expr_ : int) (_endofs_expr_ : int) (_loc_expr_ : Lexing.position * Lexing.position) (_1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 398 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 91 "sintatico.mly"
                                                  ( RETORNO(expr) )
# 403 "sintatico.ml"
     : 'tv_retorno) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_2 : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (ins : 'tv_list_instrucao_) (_startpos_ins_ : Lexing.position) (_endpos_ins_ : Lexing.position) (_startofs_ins_ : int) (_endofs_ins_ : int) (_loc_ins_ : Lexing.position * Lexing.position) ->
    (
# 44 "sintatico.mly"
     (Programa ins )
# 409 "sintatico.ml"
     : (
# 38 "sintatico.mly"
      (Ast.programa)
# 413 "sintatico.ml"
    )) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_3 : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (exprla : 'tv_exprLogicoAritmetica) (_startpos_exprla_ : Lexing.position) (_endpos_exprla_ : Lexing.position) (_startofs_exprla_ : int) (_endofs_exprla_ : int) (_loc_exprla_ : Lexing.position * Lexing.position) (_1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 418 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 95 "sintatico.mly"
                                                    (PRINT(exprla) )
# 423 "sintatico.ml"
     : 'tv_print) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (tp : 'tv_tipo) (_startpos_tp_ : Lexing.position) (_endpos_tp_ : Lexing.position) (_startofs_tp_ : int) (_endofs_tp_ : int) (_loc_tp_ : Lexing.position * Lexing.position) (_2 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 428 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (id : (
# 7 "sintatico.mly"
       (string *Lexing.position )
# 432 "sintatico.ml"
  )) (_startpos_id_ : Lexing.position) (_endpos_id_ : Lexing.position) (_startofs_id_ : int) (_endofs_id_ : int) (_loc_id_ : Lexing.position * Lexing.position) ->
    (
# 64 "sintatico.mly"
                                  ( (id,tp) )
# 437 "sintatico.ml"
     : 'tv_parametro) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 442 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 167 "sintatico.mly"
                ( (SUBTRACAO, pos ) )
# 447 "sintatico.ml"
     : 'tv_opU) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 452 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 166 "sintatico.mly"
              ( (NEGACAO, pos) 		)
# 457 "sintatico.ml"
     : 'tv_opU) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 462 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 162 "sintatico.mly"
                   ( (OR, 		pos)	)
# 467 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 472 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 161 "sintatico.mly"
                   ( (AND, 	pos)		)
# 477 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 13 "sintatico.mly"
       (Lexing.position)
# 482 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 160 "sintatico.mly"
                         ( (EHDIFERENTE, pos)	)
# 487 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 13 "sintatico.mly"
       (Lexing.position)
# 492 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 159 "sintatico.mly"
                          ( (MENORIGUALQ,	pos))
# 497 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 13 "sintatico.mly"
       (Lexing.position)
# 502 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 158 "sintatico.mly"
                      ( (MENORQ, 	pos)	)
# 507 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 13 "sintatico.mly"
       (Lexing.position)
# 512 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 157 "sintatico.mly"
                         ( (MAIORIGUALQ, pos)	)
# 517 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 13 "sintatico.mly"
       (Lexing.position)
# 522 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 156 "sintatico.mly"
                       ( (MAIORQ, 	pos)	)
# 527 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 13 "sintatico.mly"
       (Lexing.position)
# 532 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 155 "sintatico.mly"
                          ( (EHIGUAL, pos)		)
# 537 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 542 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 154 "sintatico.mly"
                      ( (MOD, 	pos)		)
# 547 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 552 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 153 "sintatico.mly"
                         ( (DIVISAO, pos)		)
# 557 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 562 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 152 "sintatico.mly"
                       ( (MULTIPLICACAO,pos)	)
# 567 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 572 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 151 "sintatico.mly"
                       ( (SUBTRACAO,	pos)	)
# 577 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (pos : (
# 14 "sintatico.mly"
       (Lexing.position)
# 582 "sintatico.ml"
  )) (_startpos_pos_ : Lexing.position) (_endpos_pos_ : Lexing.position) (_startofs_pos_ : int) (_endofs_pos_ : int) (_loc_pos_ : Lexing.position * Lexing.position) ->
    (
# 150 "sintatico.mly"
                      ( (ADICAO, pos)	)
# 587 "sintatico.ml"
     : 'tv_opB) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_7 : unit) (_startpos__7_ : Lexing.position) (_endpos__7_ : Lexing.position) (_startofs__7_ : int) (_endofs__7_ : int) (_loc__7_ : Lexing.position * Lexing.position) (stm : 'tv_comandos) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) (_5 : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (_4 : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (_3 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 592 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (exprla : 'tv_exprLogicoAritmetica) (_startpos_exprla_ : Lexing.position) (_endpos_exprla_ : Lexing.position) (_startofs_exprla_ : int) (_endofs_exprla_ : int) (_loc_exprla_ : Lexing.position * Lexing.position) (_1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 596 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 127 "sintatico.mly"
                                                                                                ( WHILELOOP(exprla,stm) )
# 601 "sintatico.ml"
     : 'tv_loopWhile) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_14 : unit) (_startpos__14_ : Lexing.position) (_endpos__14_ : Lexing.position) (_startofs__14_ : int) (_endofs__14_ : int) (_loc__14_ : Lexing.position * Lexing.position) (stm : 'tv_comandos) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) (_12 : unit) (_startpos__12_ : Lexing.position) (_endpos__12_ : Lexing.position) (_startofs__12_ : int) (_endofs__12_ : int) (_loc__12_ : Lexing.position * Lexing.position) (_11 : unit) (_startpos__11_ : Lexing.position) (_endpos__11_ : Lexing.position) (_startofs__11_ : int) (_endofs__11_ : int) (_loc__11_ : Lexing.position * Lexing.position) (_10 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 606 "sintatico.ml"
  )) (_startpos__10_ : Lexing.position) (_endpos__10_ : Lexing.position) (_startofs__10_ : int) (_endofs__10_ : int) (_loc__10_ : Lexing.position * Lexing.position) (_9 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 610 "sintatico.ml"
  )) (_startpos__9_ : Lexing.position) (_endpos__9_ : Lexing.position) (_startofs__9_ : int) (_endofs__9_ : int) (_loc__9_ : Lexing.position * Lexing.position) (exprfim : 'tv_exprLogicoAritmetica) (_startpos_exprfim_ : Lexing.position) (_endpos_exprfim_ : Lexing.position) (_startofs_exprfim_ : int) (_endofs_exprfim_ : int) (_loc_exprfim_ : Lexing.position * Lexing.position) (_7 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 614 "sintatico.ml"
  )) (_startpos__7_ : Lexing.position) (_endpos__7_ : Lexing.position) (_startofs__7_ : int) (_endofs__7_ : int) (_loc__7_ : Lexing.position * Lexing.position) (exprcomeco : 'tv_exprLogicoAritmetica) (_startpos_exprcomeco_ : Lexing.position) (_endpos_exprcomeco_ : Lexing.position) (_startofs_exprcomeco_ : int) (_endofs_exprcomeco_ : int) (_loc_exprcomeco_ : Lexing.position * Lexing.position) (_5 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 618 "sintatico.ml"
  )) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (_4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 622 "sintatico.ml"
  )) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (_3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 626 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (id : (
# 7 "sintatico.mly"
       (string *Lexing.position )
# 630 "sintatico.ml"
  )) (_startpos_id_ : Lexing.position) (_endpos_id_ : Lexing.position) (_startofs_id_ : int) (_endofs_id_ : int) (_loc_id_ : Lexing.position * Lexing.position) (_1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 634 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 124 "sintatico.mly"
                                                                                                                                                          ( FORLOOP(EXPVAR id,exprcomeco,exprfim,stm))
# 639 "sintatico.ml"
     : 'tv_loopFOR) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_5 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 644 "sintatico.ml"
  )) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (exp : 'tv_exprLogicoAritmetica) (_startpos_exp_ : Lexing.position) (_endpos_exp_ : Lexing.position) (_startofs_exp_ : int) (_endofs_exp_ : int) (_loc_exp_ : Lexing.position * Lexing.position) (_3 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 648 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (_2 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 652 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (_1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 656 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 121 "sintatico.mly"
                                                      ( LEIAS exp )
# 661 "sintatico.ml"
     : 'tv_leias) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_5 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 666 "sintatico.ml"
  )) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (exp : 'tv_exprLogicoAritmetica) (_startpos_exp_ : Lexing.position) (_endpos_exp_ : Lexing.position) (_startofs_exp_ : int) (_endofs_exp_ : int) (_loc_exp_ : Lexing.position * Lexing.position) (_3 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 670 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (_2 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 674 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (_1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 678 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 119 "sintatico.mly"
                                                      ( LEIAI exp )
# 683 "sintatico.ml"
     : 'tv_leiai) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_5 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 688 "sintatico.ml"
  )) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (exp : 'tv_exprLogicoAritmetica) (_startpos_exp_ : Lexing.position) (_endpos_exp_ : Lexing.position) (_startofs_exp_ : int) (_endofs_exp_ : int) (_loc_exp_ : Lexing.position * Lexing.position) (_3 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 692 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (_2 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 696 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (_1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 700 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 120 "sintatico.mly"
                                                      ( LEIAF exp )
# 705 "sintatico.ml"
     : 'tv_leiaf) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (cmd : 'tv_comando) (_startpos_cmd_ : Lexing.position) (_endpos_cmd_ : Lexing.position) (_startofs_cmd_ : int) (_endofs_cmd_ : int) (_loc_cmd_ : Lexing.position * Lexing.position) ->
    (
# 70 "sintatico.mly"
                   ( ACMD(cmd) )
# 711 "sintatico.ml"
     : 'tv_instrucao) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (func : 'tv_funcao) (_startpos_func_ : Lexing.position) (_endpos_func_ : Lexing.position) (_startofs_func_ : int) (_endofs_func_ : int) (_loc_func_ : Lexing.position * Lexing.position) ->
    (
# 69 "sintatico.mly"
                       (     func 	)
# 717 "sintatico.ml"
     : 'tv_instrucao) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_12 : unit) (_startpos__12_ : Lexing.position) (_endpos__12_ : Lexing.position) (_startofs__12_ : int) (_endofs__12_ : int) (_loc__12_ : Lexing.position * Lexing.position) (cmd : 'tv_comandos) (_startpos_cmd_ : Lexing.position) (_endpos_cmd_ : Lexing.position) (_startofs_cmd_ : int) (_endofs_cmd_ : int) (_loc_cmd_ : Lexing.position * Lexing.position) (_10 : unit) (_startpos__10_ : Lexing.position) (_endpos__10_ : Lexing.position) (_startofs__10_ : int) (_endofs__10_ : int) (_loc__10_ : Lexing.position * Lexing.position) (_9 : unit) (_startpos__9_ : Lexing.position) (_endpos__9_ : Lexing.position) (_startofs__9_ : int) (_endofs__9_ : int) (_loc__9_ : Lexing.position * Lexing.position) (_8 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 722 "sintatico.ml"
  )) (_startpos__8_ : Lexing.position) (_endpos__8_ : Lexing.position) (_startofs__8_ : int) (_endofs__8_ : int) (_loc__8_ : Lexing.position * Lexing.position) (retorno : 'tv_tipo) (_startpos_retorno_ : Lexing.position) (_endpos_retorno_ : Lexing.position) (_startofs_retorno_ : int) (_endofs_retorno_ : int) (_loc_retorno_ : Lexing.position * Lexing.position) (_6 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 726 "sintatico.ml"
  )) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (_5 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 730 "sintatico.ml"
  )) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (args : 'tv_separated_list_VIRG_parametro_) (_startpos_args_ : Lexing.position) (_endpos_args_ : Lexing.position) (_startofs_args_ : int) (_endofs_args_ : int) (_loc_args_ : Lexing.position * Lexing.position) (_3 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 734 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (nome : (
# 7 "sintatico.mly"
       (string *Lexing.position )
# 738 "sintatico.ml"
  )) (_startpos_nome_ : Lexing.position) (_endpos_nome_ : Lexing.position) (_startofs_nome_ : int) (_endofs_nome_ : int) (_loc_nome_ : Lexing.position * Lexing.position) (_1 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 742 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 53 "sintatico.mly"
     (
   	 	Funcao {
   	 		fn_nome = nome;
   	 		fn_tiporet = retorno;
   	 		fn_formais = args;
   	 		fn_corpo = cmd
   	 	}
   	 )
# 754 "sintatico.ml"
     : 'tv_funcao) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_3 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 759 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (e : 'tv_exprLogicoAritmetica) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (_1 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 763 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 138 "sintatico.mly"
                                            ( e 		    	 )
# 768 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (e2 : 'tv_exprLogicoAritmetica) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (op : 'tv_opB) (_startpos_op_ : Lexing.position) (_endpos_op_ : Lexing.position) (_startofs_op_ : int) (_endofs_op_ : int) (_loc_op_ : Lexing.position * Lexing.position) (e1 : 'tv_exprLogicoAritmetica) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 774 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (e : 'tv_exprLogicoAritmetica) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (op : 'tv_opU) (_startpos_op_ : Lexing.position) (_endpos_op_ : Lexing.position) (_startofs_op_ : int) (_endofs_op_ : int) (_loc_op_ : Lexing.position * Lexing.position) ->
    (
# 136 "sintatico.mly"
                                                       ( EXPOPU (op,e) 	 )
# 780 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (b : (
# 10 "sintatico.mly"
       (bool * Lexing.position)
# 785 "sintatico.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) ->
    (
# 135 "sintatico.mly"
                           ( EXPBOOL (b)	 )
# 790 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (f : (
# 6 "sintatico.mly"
       (float * Lexing.position)
# 795 "sintatico.ml"
  )) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) ->
    (
# 134 "sintatico.mly"
                             ( EXPFLOAT(f) 	  	 )
# 800 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (s : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 805 "sintatico.ml"
  )) (_startpos_s_ : Lexing.position) (_endpos_s_ : Lexing.position) (_startofs_s_ : int) (_endofs_s_ : int) (_loc_s_ : Lexing.position * Lexing.position) ->
    (
# 133 "sintatico.mly"
                             ( EXPSTRING(s)		 )
# 810 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (i : (
# 9 "sintatico.mly"
       (int * Lexing.position)
# 815 "sintatico.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) ->
    (
# 132 "sintatico.mly"
                           ( EXPINT(i)   		 )
# 820 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (id : (
# 7 "sintatico.mly"
       (string *Lexing.position )
# 825 "sintatico.ml"
  )) (_startpos_id_ : Lexing.position) (_endpos_id_ : Lexing.position) (_startofs_id_ : int) (_endofs_id_ : int) (_loc_id_ : Lexing.position * Lexing.position) ->
    (
# 131 "sintatico.mly"
                         ( EXPVAR(id)    	 )
# 830 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (f : 'tv_chamada) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) ->
    (
# 130 "sintatico.mly"
                            ( f 				 )
# 836 "sintatico.ml"
     : 'tv_exprLogicoAritmetica) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (cee : 'tv_option_condicaoELIFELSE_) (_startpos_cee_ : Lexing.position) (_endpos_cee_ : Lexing.position) (_startofs_cee_ : int) (_endofs_cee_ : int) (_loc_cee_ : Lexing.position * Lexing.position) (_7 : unit) (_startpos__7_ : Lexing.position) (_endpos__7_ : Lexing.position) (_startofs__7_ : int) (_endofs__7_ : int) (_loc__7_ : Lexing.position * Lexing.position) (stm : 'tv_comandos) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) (_5 : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (_4 : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (_3 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 841 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (exprla : 'tv_exprLogicoAritmetica) (_startpos_exprla_ : Lexing.position) (_endpos_exprla_ : Lexing.position) (_startofs_exprla_ : int) (_endofs_exprla_ : int) (_loc_exprla_ : Lexing.position * Lexing.position) (_1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 845 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 109 "sintatico.mly"
   ( CONDICAOIF(exprla,stm,cee) )
# 850 "sintatico.ml"
     : 'tv_condicaoIF) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_6 : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (stm : 'tv_comandos) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) (_4 : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (_3 : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (_2 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 855 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (_1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 859 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 114 "sintatico.mly"
                                                       (CONDICAOElifElse( stm ) )
# 864 "sintatico.ml"
     : 'tv_condicaoELIFELSE) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (condEE : 'tv_option_condicaoELIFELSE_) (_startpos_condEE_ : Lexing.position) (_endpos_condEE_ : Lexing.position) (_startofs_condEE_ : int) (_endofs_condEE_ : int) (_loc_condEE_ : Lexing.position * Lexing.position) (_7 : unit) (_startpos__7_ : Lexing.position) (_endpos__7_ : Lexing.position) (_startofs__7_ : int) (_endofs__7_ : int) (_loc__7_ : Lexing.position * Lexing.position) (stm : 'tv_comandos) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) (_5 : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (_4 : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (_3 : (
# 11 "sintatico.mly"
       (Lexing.position)
# 869 "sintatico.ml"
  )) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (exprla : 'tv_exprLogicoAritmetica) (_startpos_exprla_ : Lexing.position) (_endpos_exprla_ : Lexing.position) (_startofs_exprla_ : int) (_endofs_exprla_ : int) (_loc_exprla_ : Lexing.position * Lexing.position) (_1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 873 "sintatico.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 113 "sintatico.mly"
                                                                                                                  ( CONDICAOIF (exprla,stm, condEE) )
# 878 "sintatico.ml"
     : 'tv_condicaoELIFELSE) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (cmd : 'tv_nonempty_list_comando_) (_startpos_cmd_ : Lexing.position) (_endpos_cmd_ : Lexing.position) (_startofs_cmd_ : int) (_endofs_cmd_ : int) (_loc_cmd_ : Lexing.position * Lexing.position) ->
    (
# 74 "sintatico.mly"
                ( cmd )
# 884 "sintatico.ml"
     : 'tv_comandos) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_2 : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (stm : 'tv_leias) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 87 "sintatico.mly"
                              ( stm )
# 890 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_2 : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (stm : 'tv_leiaf) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 86 "sintatico.mly"
                              ( stm )
# 896 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_2 : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (stm : 'tv_leiai) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 85 "sintatico.mly"
                            ( stm )
# 902 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (stm : 'tv_retorno) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 84 "sintatico.mly"
                      ( stm )
# 908 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (stm : 'tv_print) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 83 "sintatico.mly"
                     ( stm )
# 914 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (stm : 'tv_loopFOR) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 82 "sintatico.mly"
                      ( stm )
# 920 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (stm : 'tv_condicaoIF) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 81 "sintatico.mly"
                            ( stm )
# 926 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (stm : 'tv_loopWhile) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 80 "sintatico.mly"
                       ( stm )
# 932 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (stm : 'tv_chamadafuncao) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 79 "sintatico.mly"
                            ( stm )
# 938 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (stm : 'tv_atribuicao) (_startpos_stm_ : Lexing.position) (_endpos_stm_ : Lexing.position) (_startofs_stm_ : int) (_endofs_stm_ : int) (_loc_stm_ : Lexing.position * Lexing.position) ->
    (
# 78 "sintatico.mly"
                         ( stm )
# 944 "sintatico.ml"
     : 'tv_comando) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_2 : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (exp : 'tv_chamada) (_startpos_exp_ : Lexing.position) (_endpos_exp_ : Lexing.position) (_startofs_exp_ : int) (_endofs_exp_ : int) (_loc_exp_ : Lexing.position * Lexing.position) ->
    (
# 100 "sintatico.mly"
                          ( CHAMADADEFUNCAO(exp) )
# 950 "sintatico.ml"
     : 'tv_chamadafuncao) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_4 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 955 "sintatico.ml"
  )) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (args : 'tv_separated_list_VIRG_exprLogicoAritmetica_) (_startpos_args_ : Lexing.position) (_endpos_args_ : Lexing.position) (_startofs_args_ : int) (_endofs_args_ : int) (_loc_args_ : Lexing.position * Lexing.position) (_2 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 959 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (nome : (
# 7 "sintatico.mly"
       (string *Lexing.position )
# 963 "sintatico.ml"
  )) (_startpos_nome_ : Lexing.position) (_endpos_nome_ : Lexing.position) (_startofs_nome_ : int) (_endofs_nome_ : int) (_loc_nome_ : Lexing.position * Lexing.position) ->
    (
# 103 "sintatico.mly"
                                                                            ( EXPCALL (nome, args) )
# 968 "sintatico.ml"
     : 'tv_chamada) in
  let _ = fun (_eRR : exn) (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (_4 : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (exprla : 'tv_exprLogicoAritmetica) (_startpos_exprla_ : Lexing.position) (_endpos_exprla_ : Lexing.position) (_startofs_exprla_ : int) (_endofs_exprla_ : int) (_loc_exprla_ : Lexing.position * Lexing.position) (_2 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 973 "sintatico.ml"
  )) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (id : (
# 7 "sintatico.mly"
       (string *Lexing.position )
# 977 "sintatico.ml"
  )) (_startpos_id_ : Lexing.position) (_endpos_id_ : Lexing.position) (_startofs_id_ : int) (_endofs_id_ : int) (_loc_id_ : Lexing.position * Lexing.position) ->
    (
# 117 "sintatico.mly"
                                                                    ( ATRIBUICAO (EXPVAR id , exprla) )
# 982 "sintatico.ml"
     : 'tv_atribuicao) in
  (raise Not_found : 'tv_tipo * 'tv_separated_nonempty_list_VIRG_parametro_ * 'tv_separated_nonempty_list_VIRG_exprLogicoAritmetica_ * 'tv_separated_list_VIRG_parametro_ * 'tv_separated_list_VIRG_exprLogicoAritmetica_ * 'tv_retorno * (
# 38 "sintatico.mly"
      (Ast.programa)
# 987 "sintatico.ml"
  ) * 'tv_print * 'tv_parametro * 'tv_option_exprLogicoAritmetica_ * 'tv_option_condicaoELIFELSE_ * 'tv_opU * 'tv_opB * 'tv_nonempty_list_comando_ * 'tv_loption_separated_nonempty_list_VIRG_parametro__ * 'tv_loption_separated_nonempty_list_VIRG_exprLogicoAritmetica__ * 'tv_loopWhile * 'tv_loopFOR * 'tv_list_instrucao_ * 'tv_leias * 'tv_leiai * 'tv_leiaf * 'tv_instrucao * 'tv_funcao * 'tv_exprLogicoAritmetica * 'tv_condicaoIF * 'tv_condicaoELIFELSE * 'tv_comandos * 'tv_comando * 'tv_chamadafuncao * 'tv_chamada * 'tv_atribuicao)

and menhir_end_marker =
  0

# 269 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
  

# 996 "sintatico.ml"
