open Ast

type expressao =
			  EXPOPB of (operador * tipo) * (expressao * tipo)  * (expressao * tipo)
			| EXPOPU of (operador * tipo) * (expressao * tipo)
			| EXPINT of int * tipo
			| EXPSTRING of string * tipo
			| EXPFLOAT of float * tipo
			| EXPBOOL of bool * tipo
			| EXPVAR of (expressao variavel) *  tipo
			| EXPNONE
			| EXPCALL of identificador * (expressao expressoes) * tipo
