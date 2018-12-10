(* The type of the abstract syntax tree (AST). *)

type identificador = string
(*posicao no arquivo*)
type 'a pos = 'a * Lexing.position

type 'expr programa = Programa of declaracoes * ('expr funcoes) 
and declaracoes = declaracao list
and 'expr funcoes = ('expr funcao) list
and 'expr comandos = ('expr comando) list

and declaracao = DecVar of (identificador pos) * tipo

and 'expr funcao = Funcao of ('expr decfn)

and 'expr decfn = {
  fn_nome:    identificador pos;
  fn_tiporet: tipo;
  fn_formais: (identificador pos * tipo) list;
  fn_locais:  declaracoes;
  fn_corpo:   'expr comandos
}

and tipo =
			  BOOLEAN
			| INTEIRO
			| REAL
			| NONE
			| STRING

and 'expr comando =
				  ATRIBUICAO of 'expr * 'expr
				| CONDICAOIF of 'expr * ('expr comando) list * ('expr comando option)
				| CONDICAOElifElse of 'expr comandos
				| WHILELOOP of 'expr * ('expr comando) list
				| FORLOOP of 'expr * 'expr * 'expr * ('expr comando) list
				| PRINT of 'expr
				| RETORNO of 'expr option
				| LEIAI of 'expr
				| LEIAF of 'expr
				| LEIAS of 'expr
				| CHAMADADEFUNCAO of 'expr

and 'expr variaveis = ('expr variavel) list
and 'expr variavel =
  | VarSimples of identificador pos
  | VarCampo of ('expr variavel) * (identificador pos)
  | VarElemento of ('expr variavel) * 'expr
and 'expr expressoes = 'expr list

and operador =
				 ADICAO
			   | SUBTRACAO
			   | MULTIPLICACAO
			   | DIVISAO
			   | MOD
			   | EHIGUAL
			   | MAIORQ
			   | MAIORIGUALQ
			   | MENORQ
			   | MENORIGUALQ
			   | EHDIFERENTE
			   | AND
			   | OR
			   | NEGACAO
