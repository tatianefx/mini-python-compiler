%{
	open Ast
	open Sast
%}

%token <int * int * token list> Linha
%token <float * Lexing.position> LITFLOAT
%token <string *Lexing.position > ID
%token <string *Lexing.position > LITSTRING
%token <int * Lexing.position> LITINT
%token <bool * Lexing.position>   LITBOOL
%token <Lexing.position> DEF SETA DPONTOS
%token <Lexing.position> VIRG
%token <Lexing.position> ATRIB MAIOR MAIORIGUAL MENOR MENORIGUAL DIFERENTE IGUALDADE
%token <Lexing.position> OU E NOT MAIS MENOS DIVIDIDO VEZES MODULO
%token <Lexing.position> APAR FPAR
%token <Lexing.position> PRINT
%token <Lexing.position> INPUT
%token <Lexing.position> WHILE FOR IN RANGE
%token <Lexing.position> IF ELIF ELSE
%token <Lexing.position> RETURN
%token <Lexing.position> NONE
%token <Lexing.position> STR
%token <Lexing.position> INT
%token <Lexing.position> FLOAT
%token <Lexing.position> BOOL
%token <Lexing.position> ACOL FCOL PTO
%token INDENTA DEDENTA NOVALINHA EOF

%left OU
%left E
%left IGUALDADE DIFERENTE
%left MAIOR MAIORIGUAL MENOR MENORIGUAL
%left MAIS MENOS
%left VEZES DIVIDIDO MODULO

%nonassoc unary_minus

%start <Sast.expressao Ast.programa> programa

%%

programa: ds = declaracao_de_variavel*
          fs = declaracao_de_funcao*
          EOF { Programa (List.flatten ds, fs) }


declaracao_de_variavel:
  ids = separated_nonempty_list(VIRG, ID) DPONTOS t = tipo {
                   List.map (fun id -> DecVar (id,t)) ids  }

declaracao_de_funcao:
	DEF nome= ID
	APAR args = separated_list(VIRG, parametro) FPAR
	SETA retorno = tipo DPONTOS NOVALINHA
	INDENTA
	ds = declaracao_de_variavel*
	cmd = comandos
	DEDENTA
	{
	 Funcao {
		 fn_nome = nome;
		 fn_tiporet = retorno;
		 fn_formais = args;
		 fn_locais = List.flatten ds;
		 fn_corpo = cmd
	 }
	}

parametro:
    |  id = ID  DPONTOS tp = tipo { (id,tp) }

comandos:
	cmd = comando+ { cmd }

/*esse eh o meu stm_list*/
comando:
	| stm = atribuicao 					{ stm }
	| stm = chamadafuncao   			{ stm }
	| stm = loopWhile					{ stm }
	| stm = condicaoIF      			{ stm }
	| stm = loopFOR 					{ stm }
	| stm = print 						{ stm }
	| stm = retorno 					{ stm }
	| stm = leiai NOVALINHA 			{ stm }
 	| stm = leiaf NOVALINHA  			{ stm }
 	| stm = leias NOVALINHA  			{ stm }
 	;

retorno:
	| RETURN expr = exprLogicoAritmetica? NOVALINHA  { RETORNO(expr) }
	;

print:
   	| PRINT exprla = exprLogicoAritmetica NOVALINHA {PRINT(exprla) }
	;
/*a sacada eh emcapsular tudo dentro de expressao*/

chamadafuncao:
	| exp=chamada NOVALINHA  { CHAMADADEFUNCAO(exp) }
	;

chamada : nome=ID APAR args=separated_list(VIRG, exprLogicoAritmetica) FPAR { EXPCALL (nome, args) }

condicaoIF:
	| IF exprla= exprLogicoAritmetica  DPONTOS NOVALINHA
		INDENTA stm=comandos DEDENTA
	 	cee = condicaoELIFELSE?
			{ CONDICAOIF(exprla,stm,cee) }


condicaoELIFELSE:
	| ELIF exprla = exprLogicoAritmetica DPONTOS NOVALINHA INDENTA stm = comandos DEDENTA condEE = condicaoELIFELSE? { CONDICAOIF (exprla,stm, condEE) }
	| ELSE DPONTOS NOVALINHA INDENTA stm=comandos DEDENTA {CONDICAOElifElse( stm ) }
	;

atribuicao: id = variavel ATRIB exprla = exprLogicoAritmetica NOVALINHA   { ATRIBUICAO (EXPVAR id , exprla) }

leiai: INT APAR INPUT exp=exprLogicoAritmetica FPAR   { LEIAI exp }
leiaf: FLOAT APAR INPUT exp=exprLogicoAritmetica FPAR { LEIAF exp }
leias: STR APAR INPUT exp=exprLogicoAritmetica FPAR   { LEIAS exp }

loopFOR:
	| FOR id = variavel IN RANGE APAR exprcomeco = exprLogicoAritmetica VIRG exprfim = exprLogicoAritmetica FPAR DPONTOS NOVALINHA INDENTA stm = comandos DEDENTA 	{ FORLOOP(EXPVAR id,exprcomeco,exprfim,stm)}
	;

loopWhile: WHILE exprla = exprLogicoAritmetica DPONTOS NOVALINHA INDENTA stm = comandos DEDENTA	{ WHILELOOP(exprla,stm) }

exprLogicoAritmetica:
	| f = chamada 												 { f 				 }
	| v = variavel 													 { EXPVAR(v)    	 }
	| i = LITINT 												 { EXPINT(i)   		 }
	| s = LITSTRING 											 { EXPSTRING(s)		 }
	| f = LITFLOAT 												 { EXPFLOAT(f) 	  	 }
	| b = LITBOOL												 { EXPBOOL (b)	 }
	| op=opU e=exprLogicoAritmetica %prec unary_minus 			 { EXPOPU (op,e) 	 }
	| e1=exprLogicoAritmetica op = opB e2 = exprLogicoAritmetica { EXPOPB (op,e1,e2) }
	| APAR e=exprLogicoAritmetica FPAR 							 { e 		    	 }
	;

tipo:
	| BOOL 			{ BOOLEAN 	}
	| INT 			{ INTEIRO 	}
	| FLOAT 		{ REAL 		}
	| NONE 			{ NONE 		}
	| STR           { STRING 	}
	;

%inline opB:
   | pos = MAIS  					{ (ADICAO, pos)	}
   | pos = MENOS  					{ (SUBTRACAO,	pos)	}
   | pos = VEZES  					{ (MULTIPLICACAO,pos)	}
   | pos = DIVIDIDO  				{ (DIVISAO, pos)		}
   | pos = MODULO					{ (MOD, 	pos)		}
   | pos = IGUALDADE  				{ (EHIGUAL, pos)		}
   | pos = MAIOR  					{ (MAIORQ, 	pos)	}
   | pos = MAIORIGUAL				{ (MAIORIGUALQ, pos)	}
   | pos = MENOR 					{ (MENORQ, 	pos)	}
   | pos = MENORIGUAL 				{ (MENORIGUALQ,	pos)}
   | pos = DIFERENTE 				{ (EHDIFERENTE, pos)	}
   | pos = E 						{ (AND, 	pos)		}
   | pos = OU						{ (OR, 		pos)	}
   ;

%inline opU:
	| pos = NOT 	{ (NEGACAO, pos) 		}
	| pos = MENOS 	{ (SUBTRACAO, pos ) }

variavel:
        | x=ID       { VarSimples x }
        | v=variavel PTO x=ID { VarCampo (v,x) }
        | v=variavel ACOL e=exprLogicoAritmetica FCOL { VarElemento (v,e) }
