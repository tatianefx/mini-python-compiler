open Ast
open Tast

type endereco =
     Nome of string
   | ConstString of string
   | ConstInt of int
   | ConstFloat of float
   | ConstBool of bool
   | Temp of int
and instrucao =
     AtribBin of endereco * endereco * opBin * endereco  (* x = y op z *)
   | AtribUn  of endereco * opUn * endereco              (* x = op y   *)
   | Copia of endereco * endereco                        (* x = y      *)
   | Goto of instrucao                                   (* goto L     *)
   | If of endereco *  instrucao                         (* if x goto L *)
   | IfFalse of endereco * instrucao                     (* ifFalse x goto L *)
   | IfRelgoto of endereco * opRel * endereco * instrucao
                                                      (* if x oprel y goto L *)
   | Call of string * (endereco * Ast.tipo) list * Ast.tipo (* call p,[(x,t)],t *)
   | Recebe of string * Ast.tipo
   | Local of string * Ast.tipo
   | Global of string * Ast.tipo
   | CallFn of endereco * string *  (endereco * Ast.tipo) list * Ast.tipo   (* x = call p,n,t *)
   | Return of endereco option
   | Imprime of endereco
   | BeginFun of string * int * int      (* beginFun p,nparam, nlocais *)
   | EndFun
   | Rotulo of string

and opBin = Ast.operador * Ast.tipo

and opUn = Ast.operador * Ast.tipo

and opRel = Ast.operador * Ast.tipo
