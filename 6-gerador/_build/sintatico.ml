
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20181026

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE of (
# 19 "sintatico.mly"
       (Lexing.position)
# 16 "sintatico.ml"
  )
    | VIRG of (
# 13 "sintatico.mly"
       (Lexing.position)
# 21 "sintatico.ml"
  )
    | VEZES of (
# 15 "sintatico.mly"
       (Lexing.position)
# 26 "sintatico.ml"
  )
    | STR of (
# 23 "sintatico.mly"
       (Lexing.position)
# 31 "sintatico.ml"
  )
    | SETA of (
# 12 "sintatico.mly"
       (Lexing.position)
# 36 "sintatico.ml"
  )
    | RETURN of (
# 21 "sintatico.mly"
       (Lexing.position)
# 41 "sintatico.ml"
  )
    | RANGE of (
# 19 "sintatico.mly"
       (Lexing.position)
# 46 "sintatico.ml"
  )
    | PTO of (
# 27 "sintatico.mly"
       (Lexing.position)
# 51 "sintatico.ml"
  )
    | PRINT of (
# 17 "sintatico.mly"
       (Lexing.position)
# 56 "sintatico.ml"
  )
    | OU of (
# 15 "sintatico.mly"
       (Lexing.position)
# 61 "sintatico.ml"
  )
    | NOVALINHA
    | NOT of (
# 15 "sintatico.mly"
       (Lexing.position)
# 67 "sintatico.ml"
  )
    | NONE of (
# 22 "sintatico.mly"
       (Lexing.position)
# 72 "sintatico.ml"
  )
    | MODULO of (
# 15 "sintatico.mly"
       (Lexing.position)
# 77 "sintatico.ml"
  )
    | MENOS of (
# 15 "sintatico.mly"
       (Lexing.position)
# 82 "sintatico.ml"
  )
    | MENORIGUAL of (
# 14 "sintatico.mly"
       (Lexing.position)
# 87 "sintatico.ml"
  )
    | MENOR of (
# 14 "sintatico.mly"
       (Lexing.position)
# 92 "sintatico.ml"
  )
    | MAIS of (
# 15 "sintatico.mly"
       (Lexing.position)
# 97 "sintatico.ml"
  )
    | MAIORIGUAL of (
# 14 "sintatico.mly"
       (Lexing.position)
# 102 "sintatico.ml"
  )
    | MAIOR of (
# 14 "sintatico.mly"
       (Lexing.position)
# 107 "sintatico.ml"
  )
    | Linha of (
# 6 "sintatico.mly"
       (int * int * token list)
# 112 "sintatico.ml"
  )
    | LITSTRING of (
# 9 "sintatico.mly"
       (string *Lexing.position )
# 117 "sintatico.ml"
  )
    | LITINT of (
# 10 "sintatico.mly"
       (int * Lexing.position)
# 122 "sintatico.ml"
  )
    | LITFLOAT of (
# 7 "sintatico.mly"
       (float * Lexing.position)
# 127 "sintatico.ml"
  )
    | LITBOOL of (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 132 "sintatico.ml"
  )
    | INT of (
# 24 "sintatico.mly"
       (Lexing.position)
# 137 "sintatico.ml"
  )
    | INPUT of (
# 18 "sintatico.mly"
       (Lexing.position)
# 142 "sintatico.ml"
  )
    | INDENTA
    | IN of (
# 19 "sintatico.mly"
       (Lexing.position)
# 148 "sintatico.ml"
  )
    | IGUALDADE of (
# 14 "sintatico.mly"
       (Lexing.position)
# 153 "sintatico.ml"
  )
    | IF of (
# 20 "sintatico.mly"
       (Lexing.position)
# 158 "sintatico.ml"
  )
    | ID of (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 163 "sintatico.ml"
  )
    | FPAR of (
# 16 "sintatico.mly"
       (Lexing.position)
# 168 "sintatico.ml"
  )
    | FOR of (
# 19 "sintatico.mly"
       (Lexing.position)
# 173 "sintatico.ml"
  )
    | FLOAT of (
# 25 "sintatico.mly"
       (Lexing.position)
# 178 "sintatico.ml"
  )
    | FCOL of (
# 27 "sintatico.mly"
       (Lexing.position)
# 183 "sintatico.ml"
  )
    | EOF
    | ELSE of (
# 20 "sintatico.mly"
       (Lexing.position)
# 189 "sintatico.ml"
  )
    | ELIF of (
# 20 "sintatico.mly"
       (Lexing.position)
# 194 "sintatico.ml"
  )
    | E of (
# 15 "sintatico.mly"
       (Lexing.position)
# 199 "sintatico.ml"
  )
    | DPONTOS of (
# 12 "sintatico.mly"
       (Lexing.position)
# 204 "sintatico.ml"
  )
    | DIVIDIDO of (
# 15 "sintatico.mly"
       (Lexing.position)
# 209 "sintatico.ml"
  )
    | DIFERENTE of (
# 14 "sintatico.mly"
       (Lexing.position)
# 214 "sintatico.ml"
  )
    | DEF of (
# 12 "sintatico.mly"
       (Lexing.position)
# 219 "sintatico.ml"
  )
    | DEDENTA
    | BOOL of (
# 26 "sintatico.mly"
       (Lexing.position)
# 225 "sintatico.ml"
  )
    | ATRIB of (
# 14 "sintatico.mly"
       (Lexing.position)
# 230 "sintatico.ml"
  )
    | APAR of (
# 16 "sintatico.mly"
       (Lexing.position)
# 235 "sintatico.ml"
  )
    | ACOL of (
# 27 "sintatico.mly"
       (Lexing.position)
# 240 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "sintatico.mly"
  
	open Ast
	open Sast

# 255 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ACOL _ ->
          49
      | APAR _ ->
          48
      | ATRIB _ ->
          47
      | BOOL _ ->
          46
      | DEDENTA ->
          45
      | DEF _ ->
          44
      | DIFERENTE _ ->
          43
      | DIVIDIDO _ ->
          42
      | DPONTOS _ ->
          41
      | E _ ->
          40
      | ELIF _ ->
          39
      | ELSE _ ->
          38
      | EOF ->
          37
      | FCOL _ ->
          36
      | FLOAT _ ->
          35
      | FOR _ ->
          34
      | FPAR _ ->
          33
      | ID _ ->
          32
      | IF _ ->
          31
      | IGUALDADE _ ->
          30
      | IN _ ->
          29
      | INDENTA ->
          28
      | INPUT _ ->
          27
      | INT _ ->
          26
      | LITBOOL _ ->
          25
      | LITFLOAT _ ->
          24
      | LITINT _ ->
          23
      | LITSTRING _ ->
          22
      | Linha _ ->
          21
      | MAIOR _ ->
          20
      | MAIORIGUAL _ ->
          19
      | MAIS _ ->
          18
      | MENOR _ ->
          17
      | MENORIGUAL _ ->
          16
      | MENOS _ ->
          15
      | MODULO _ ->
          14
      | NONE _ ->
          13
      | NOT _ ->
          12
      | NOVALINHA ->
          11
      | OU _ ->
          10
      | PRINT _ ->
          9
      | PTO _ ->
          8
      | RANGE _ ->
          7
      | RETURN _ ->
          6
      | SETA _ ->
          5
      | STR _ ->
          4
      | VEZES _ ->
          3
      | VIRG _ ->
          2
      | WHILE _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ACOL _v ->
          Obj.repr _v
      | APAR _v ->
          Obj.repr _v
      | ATRIB _v ->
          Obj.repr _v
      | BOOL _v ->
          Obj.repr _v
      | DEDENTA ->
          Obj.repr ()
      | DEF _v ->
          Obj.repr _v
      | DIFERENTE _v ->
          Obj.repr _v
      | DIVIDIDO _v ->
          Obj.repr _v
      | DPONTOS _v ->
          Obj.repr _v
      | E _v ->
          Obj.repr _v
      | ELIF _v ->
          Obj.repr _v
      | ELSE _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | FCOL _v ->
          Obj.repr _v
      | FLOAT _v ->
          Obj.repr _v
      | FOR _v ->
          Obj.repr _v
      | FPAR _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IF _v ->
          Obj.repr _v
      | IGUALDADE _v ->
          Obj.repr _v
      | IN _v ->
          Obj.repr _v
      | INDENTA ->
          Obj.repr ()
      | INPUT _v ->
          Obj.repr _v
      | INT _v ->
          Obj.repr _v
      | LITBOOL _v ->
          Obj.repr _v
      | LITFLOAT _v ->
          Obj.repr _v
      | LITINT _v ->
          Obj.repr _v
      | LITSTRING _v ->
          Obj.repr _v
      | Linha _v ->
          Obj.repr _v
      | MAIOR _v ->
          Obj.repr _v
      | MAIORIGUAL _v ->
          Obj.repr _v
      | MAIS _v ->
          Obj.repr _v
      | MENOR _v ->
          Obj.repr _v
      | MENORIGUAL _v ->
          Obj.repr _v
      | MENOS _v ->
          Obj.repr _v
      | MODULO _v ->
          Obj.repr _v
      | NONE _v ->
          Obj.repr _v
      | NOT _v ->
          Obj.repr _v
      | NOVALINHA ->
          Obj.repr ()
      | OU _v ->
          Obj.repr _v
      | PRINT _v ->
          Obj.repr _v
      | PTO _v ->
          Obj.repr _v
      | RANGE _v ->
          Obj.repr _v
      | RETURN _v ->
          Obj.repr _v
      | SETA _v ->
          Obj.repr _v
      | STR _v ->
          Obj.repr _v
      | VEZES _v ->
          Obj.repr _v
      | VIRG _v ->
          Obj.repr _v
      | WHILE _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\000C\000\000LKIJH\020\001\000\000\000\000\000\000>7\000\000G\000\000\000\000\000\000\000\000\000\000\000\024\023\025\026\000\000\000\000\000N\000\000\000\031\021\000\000\000!\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000O\000*5\000\003\000\000E\028\027\000\000\000\000\000\000\000\000-\000\000A\000\000\000?\000\000\000\000,\000\000\000\000\000\000M\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000+\000\000\000\002\011\n\015\007\t\000\014\000\012\000\r\b\0002\0009\006\000\004\005\000\000\000\000\000\000\000\017\000\000\000\000\000\000\000\016;\018\0003\000\019\0001\000@\000/")
  
  and error =
    (50, "\000\000\000\000\132\b\b\000\000\000\000\016\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000@\002\001\000\b\004\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\000\000\000\000\b\000\000\000\000\000\000\000\002\000\000\000\000\192\000\000\000\000\000\000\016\000\128@\002\001\000 \000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\016\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000@\000\001\000\000\000\000\000\000\128@\002\001\000 \000\000\000\000\001\000\000\016\000\000\000\000\000\000\000\002\000\000\004\164\000\002\027\000\001)\000\000\134\192\000\000\t\003\192\128\000\128\002@\240 \000 \000\144<\b\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\194\207\224\t#\199\000\t\003\192\192\000\128\002@\240 \000#\011?\128$\143\004\000\000\000\002\000\000\000\000\000\000\000\000\000\002@\240 \000!\002?\128 \139\000\000$\015\002\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\144<\b\000\b\192\207\224\t#\192\000\t\003\192\128\000\128\000\000\000\000\000\000\000\144<\b\000\b\192\207\224\t#\192\000\t\003\192\128\000\128\000\000\000\000\000\000\000\144<\b\000\b\192\207\224\t#\192\000\t\003\192\128\000\140\012\254\000\146<\000\000\144<\b\000\b\192\207\224\t#\192\000\t\003\192\128\000\140\012\254\000\146<\000\000\144<\b\000\b\192\207\224\t#\192\000\t\003\192\128\000\140\012\254\000\146<\000\000\144<\b\000\b\192\207\224\t#\192\000\t\003\192\128\000\140\012\254\000\146<\000\000\000\000\000\000\000@\143\224\t\002\192\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\0000#\248\002@\176\000\002@\240 \000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\b\254\000\128<\000\001\000\000\000\000\000\000\000\000 \000\000J@\000!\176\000\000\000\000\000\000\000 \000\000\001\000\000\000\000$\015\002\000\002\016#\248\002@\176\000\000\000\000\000\000\000\001\144<\b\000\b\000@\000\000\000\000\000\000\000\000\000\000\004\012\254\000\128,\000\000\144<\b\000\b@\207\224\b\002\192\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\001\000\000\000\000$\015\002\000\002\016#\248\002@\176\000\000\000\000\000\000\000\000\144<\b\000\b@\143\224\b\003\192\000\016\000\000\000\000\000\000\000\002\000\000\004\164\000\002\027\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000 \000\001\000\000\016\016\000\000\000\000\000\000\000\000\000\000\002\000\t\003\192\128\000\140\b\254\000\128,\000\000\144<\b\000\b@\143\224\t\002\192\000\000\000\000\000@\000\004\000\000\000\000\000\000\000\000\128\000\001)\000\000\134\192\000\000\000\000\000\000\000\128\000\000\004\000\000\000\000\144<\b\000\b@\143\224\t\002\192\000\000\000\000\000\000\000 \000\000\000\000P\000\144<\b\000\b@\207\224\b\002\192\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\001)\000\000\134\192\016\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\004\164\000\002\0270@\000\000\000\000\001\000\000\016\000\000\000\000\000\000\000\002\000\000\004\164\000\002\027\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\002@\240 \000!\002?\128 \015\000\000@\000\000\000\000\000\000\000\b\000\000\018\144\000\bl\000\000\000\000\000\000\000A)\000\000\134\204\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\001)\000\000\134\208 \000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\016 \000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\025\000*\000\027\000\000\000\031\000|\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000C\000\n\000\002\000\007\000\024\000|\000\000\000\000\000&\000\007\000\000\000>\000x\000|\0004\000r\000R\000\002\005\014\005,\005,\005,\000\000\000\000\000\000\000\000\000\005\005,\005,\000P\000N\000\000\005,\003T\005,\000\000\000\000\005,\000\152\005,\000\000\005,\000\222\005,\000\000\005,\001$\005,\001j\005,\001\176\005,\001\246\005,\002<\005,\002\130\005,\002\200\005,\003\014\000\000\003\146\000\000\000\000\000N\000\000\003T\005,\000\000\000\000\000\000\003\146\000~\000b\005\014\000H\000t\005,\003\214\000\000\005b\000\174\000\000\003T\005,\003\214\000\000\000f\000\146\005,\004\020\000\000\005,\004\020\000\180\000\148\005\014\000\142\000\000\000\011\000\194\000r\005,\003\214\005,\004X\000\132\000\198\000\166\005\014\000\134\000\186\005,\004\150\000\000\000\028\005,\004X\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\000\000\226\000\000\000\242\000\000\000\000\000\176\000\000\005\014\000\000\000\000\000\246\000\000\000\000\000\180\004\190\000\190\000\252\000\220\005\014\000\188\000\000\005,\004\150\001\002\000\228\005\014\000\196\004\190\000\000\000\000\000\000\000\200\000\000\000\202\000\000\004\238\000\000\000\226\000\000\000C\000\000"), (16, "\0011\0011\000\189\000\174\000\181\000\189\0011\000\189\0011\0011\000\189\000:\0011\0011\0011\0011\0011\0011\0011\000\006\000\006\000Z\000\174\000\n\001\202\000\189\000\022\000\189\0011\000F\000\213\0011\000\189\000\006\0011\000\189\000\189\000>\0011\0011\0011\0011\000U\000U\000\182\0011\000\162\0011\000\174\000B\000U\000U\001\021\000J\000U\000U\000U\000U\000U\000U\000U\002\n\001\005\000\182\000f\000j\000\026\000r\000v\000z\000U\000\178\001>\000U\001^\000\030\000U\001b\000\161\000\190\000U\000U\000U\000U\001j\001n\000\161\000\161\000\"\000\182\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000&\001\130\001\154\001\158\001\182\001\186\001\194\001\206\001\210\001\018\001\230\000*\000\161\001\234\001\238\000\161\000u\000\190\001\246\001\026\000\161\000\226\001\"\001\250\000u\000u\002.\0026\000\210\000u\000u\000u\000u\000u\000u\002>\002J\002^\002j\002r\002v\002z\002\130\002\146\000u\002\150\002\158\000u\002\178\002\186\000u\000\149\000\190\002\203\000u\000u\000\226\000u\000\000\000\149\000\149\000\000\000\000\000\210\000\218\000\149\000\149\000\242\000\149\000\149\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\149\000\000\000\000\000\149\000\000\000\000\000\149\000q\000\190\000\000\000\149\000\149\000\226\000\149\000\000\000q\000q\000\000\000\000\000\210\000q\000q\000q\000q\000q\000q\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000q\000\000\000\000\000q\000\000\000\000\000q\000\145\000\190\000\000\000q\000q\000\226\000q\000\000\000\145\000\145\000\000\000\000\000\210\000\218\000\145\000\145\000\242\000\145\000\145\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\145\000\000\000\000\000\145\000\000\000\000\000\145\000\141\000\190\000\000\000\145\000\145\000\226\000\145\000\000\000\141\000\141\000\000\000\000\000\210\000\218\000\141\000\141\000\242\000\141\000\141\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\141\000\000\000\000\000\141\000\000\000\000\000\141\000\137\000\190\000\000\000\141\000\141\000\226\000\141\000\000\000\137\000\137\000\000\000\000\000\210\000\218\000\137\000\137\000\242\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\000\000\000\000\137\000\000\000\000\000\137\000\133\000\190\000\000\000\137\000\137\000\226\000\137\000\000\000\133\000\133\000\000\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\133\000\000\000\000\000\133\000\000\000\000\000\133\000\157\000\190\000\000\000\133\000\133\000\226\000\133\000\000\000\157\000\157\000\000\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\000\157\000\000\000\000\000\157\000\153\000\190\000\000\000\157\000\157\000\226\001\"\000\000\000\153\000\153\000\000\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\153\000\000\000\000\000\153\000\000\000\000\000\153\001F\000\190\000\000\000\153\000\153\000\226\000\153\000\000\000\202\000\241\000\000\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\001\r\000\190\000\000\001*\000\000\000\000\000\000\001\026\000\202\000\226\001\"\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\0012\000\000\000\000\001\218\000\190\000\000\000\000\001\026\001Z\000\226\001\"\000\202\001\146\000\000\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\001v\000\190\000\000\000\000\000\000\000\000\000\000\001\026\000\202\000\226\001\"\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\001\166\000\000\000\000\000\000\000\190\000\000\000\000\001\026\001\178\000\226\001\"\000\202\002\018\000\000\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\001\226\000\190\000\000\000\000\000\000\000\000\000\000\001\026\000\202\000\226\001\"\000\000\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\229\000\000\000\000\000\229\000\000\000\229\000\000\000\000\000\229\001\018\000\000\000\000\002\002\000\000\000\000\000\000\000\000\000\000\000\000\001\026\002\142\000\226\001\"\000\000\000\189\000\229\000\000\000\189\000\000\000\189\000\229\000\229\000\189\000\229\000\229\000\000\000\000\002n\002\134\000\000\000\130\000\000\000\000\001f\000\229\001z\000\000\000\000\001\138\000\189\000\000\000\000\000\000\000\000\000\189\000\006\000\000\000\189\000\189\000\000\000\189\000\000\000\000\000\000\000\000\001\150\000\134\000\189\000\000\000\138\001\170\000\158\000\000\001\190\001\242\000\000\000\142\000\146\000\150\000\154\000\000\000\000\000\000\000\000\000\221\000\000\000\158\000\205\000\000\000\000\000\000\000\000\000\237\000\134\000\000\000\000\000\138\000\000\000\000\000\000\000\000\000\000\000\166\000\142\000\146\000\150\000\154\000\000\000\000\000\000\000\000\000\000\000\000\000\158\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\166"))
  
  and lhs =
    (8, "\000\031\030\029\028\028\028\028\028\028\028\028\028\028\027\026\026\025\024\023\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\021\020\019\018\018\017\017\016\015\014\014\r\r\012\012\011\011\n\n\t\b\007\006\005\005\004\004\003\003\002\002\002\002\002\001\001\001")
  
  and goto =
    ((16, "\000\003\000\000\000\t\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000!\000\000\000\000\000\000\000\000\000J\000\000\000\000\000\000\000>\000\000\000\000\000\000\000Z\000\000\000\000\000\000\000(\000\003\000,\000D\000j\000\000\000\000\000\000\000\000\000\000\001\134\000\130\000\000\000\000\000\000\000\168\000\000\000\192\000\000\000\000\000\230\000\000\000\254\000\000\001$\000\000\001<\000\000\001\138\000\000\001\146\000\000\001\148\000\000\001\156\000\000\001\166\000\000\001\178\000\000\001\184\000\000\001\186\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\158\000\000\000\000\000\000\000\000\000\000\000\000\000<\000\000\000\000\001\210\000\000\000\000\000\022\000\000\000\000\000\000\001\212\000\000\000\000\000\000\000\000\001\218\000\000\000\000\001\222\000\000\000\000\000\000\000z\000\138\000\000\000\000\000\000\000\000\001\230\000\000\001\232\000\000\000\000\000\000\000\000\000\184\000\000\000\000\001\240\000\000\000\000\000\000\001\250\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001r\000\000\000\000\000\000\000\000\000\000\000\000\000\012\000\000\000\000\000\000\000\246\000\000\000\000\002\002\000\000\000\000\000\000\0014\000\000\000J\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000`\000\000\000\000\000\000\000d\000\000"), (8, "\130\004\178\021\005\134\r\135\180\022\012\136+\025\137\138\014\171\139\141\143`\176+\145\005\174\148\150\151\153\130\170b\024+\134 \135\020\0222\136\176V\137\138\028\169\139\141\1432\005+\145U\172\148\150\151\153\130\1702\177+\134\181\135r\176\000\136\180T\137\138\000\000\139\141\1432\000+\145L\154\148\150\151\153\130\0002\000+\134\000\135\000\000\000\136\000/\137\138\000\000\139\141\1432\000+\1451\146\148\150\151\153\130\0002\000+\134\000\135\000\000\000\136\0004\137\138\000\000\139\141\1432\000+\1456\160\148\150\151\153\130\0002\000+\134\000\135\000\000\000\136\0008\137\138\000\000\139\141\1432\000\000\145:\167\148\150\151\153\130\0002\000\000\134\000\135\000\000+\149+N\137\138++\139\141\143++O\145S+\148\150\151\153Q+<\000++>@2\0002BQ\00022D++22+F+2HJ++\0002\000+22\000\000+]d\000+i\000l\00022vx2\0002\128\000\00022\132\000\0002\163\000\000\0002\000\000\0002"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = exprla;
            MenhirLib.EngineTypes.startp = _startpos_exprla_;
            MenhirLib.EngineTypes.endp = _endpos_exprla_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = id;
                MenhirLib.EngineTypes.startp = _startpos_id_;
                MenhirLib.EngineTypes.endp = _endpos_id_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let exprla : (Sast.expressao) = Obj.magic exprla in
        let _2 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 520 "sintatico.ml"
        ) = Obj.magic _2 in
        let id : (Sast.expressao Ast.variavel) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 117 "sintatico.mly"
                                                                          ( ATRIBUICAO (EXPVAR id , exprla) )
# 529 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = xs0;
            MenhirLib.EngineTypes.startp = _startpos_xs0_;
            MenhirLib.EngineTypes.endp = _endpos_xs0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = nome;
                MenhirLib.EngineTypes.startp = _startpos_nome_;
                MenhirLib.EngineTypes.endp = _endpos_nome_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 568 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs0 : (Sast.expressao Ast.expressoes) = Obj.magic xs0 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 574 "sintatico.ml"
        ) = Obj.magic _2 in
        let nome : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 579 "sintatico.ml"
        ) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) = let args =
          let xs = xs0 in
          
# 232 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 589 "sintatico.ml"
          
        in
        
# 103 "sintatico.mly"
                                                                            ( EXPCALL (nome, args) )
# 595 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = exp;
            MenhirLib.EngineTypes.startp = _startpos_exp_;
            MenhirLib.EngineTypes.endp = _endpos_exp_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) = 
# 100 "sintatico.mly"
                          ( CHAMADADEFUNCAO(exp) )
# 627 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.comando) = 
# 78 "sintatico.mly"
                         ( stm )
# 652 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.comando) = 
# 79 "sintatico.mly"
                            ( stm )
# 677 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.comando) = 
# 80 "sintatico.mly"
                       ( stm )
# 702 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.comando) = 
# 81 "sintatico.mly"
                            ( stm )
# 727 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.comando) = 
# 82 "sintatico.mly"
                      ( stm )
# 752 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.comando) = 
# 83 "sintatico.mly"
                     ( stm )
# 777 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = stm;
          MenhirLib.EngineTypes.startp = _startpos_stm_;
          MenhirLib.EngineTypes.endp = _endpos_stm_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos_stm_ in
        let _v : (Sast.expressao Ast.comando) = 
# 84 "sintatico.mly"
                      ( stm )
# 802 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) = 
# 85 "sintatico.mly"
                            ( stm )
# 834 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) = 
# 86 "sintatico.mly"
                              ( stm )
# 866 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let stm : (Sast.expressao Ast.comando) = Obj.magic stm in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_stm_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) = 
# 87 "sintatico.mly"
                              ( stm )
# 898 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = cmd;
          MenhirLib.EngineTypes.startp = _startpos_cmd_;
          MenhirLib.EngineTypes.endp = _endpos_cmd_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let cmd : (Sast.expressao Ast.comandos) = Obj.magic cmd in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_cmd_ in
        let _endpos = _endpos_cmd_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 74 "sintatico.mly"
                ( cmd )
# 923 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = condEE;
          MenhirLib.EngineTypes.startp = _startpos_condEE_;
          MenhirLib.EngineTypes.endp = _endpos_condEE_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _7;
            MenhirLib.EngineTypes.startp = _startpos__7_;
            MenhirLib.EngineTypes.endp = _endpos__7_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = stm;
              MenhirLib.EngineTypes.startp = _startpos_stm_;
              MenhirLib.EngineTypes.endp = _endpos_stm_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = _3;
                    MenhirLib.EngineTypes.startp = _startpos__3_;
                    MenhirLib.EngineTypes.endp = _endpos__3_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _;
                      MenhirLib.EngineTypes.semv = exprla;
                      MenhirLib.EngineTypes.startp = _startpos_exprla_;
                      MenhirLib.EngineTypes.endp = _endpos_exprla_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let condEE : (Sast.expressao Ast.comando option) = Obj.magic condEE in
        let _7 : unit = Obj.magic _7 in
        let stm : (Sast.expressao Ast.comandos) = Obj.magic stm in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 991 "sintatico.ml"
        ) = Obj.magic _3 in
        let exprla : (Sast.expressao) = Obj.magic exprla in
        let _1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 997 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_condEE_ in
        let _v : (Sast.expressao Ast.comando) = 
# 113 "sintatico.mly"
                                                                                                                  ( CONDICAOIF (exprla,stm, condEE) )
# 1005 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _4;
              MenhirLib.EngineTypes.startp = _startpos__4_;
              MenhirLib.EngineTypes.endp = _endpos__4_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _2;
                  MenhirLib.EngineTypes.startp = _startpos__2_;
                  MenhirLib.EngineTypes.endp = _endpos__2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : unit = Obj.magic _6 in
        let stm : (Sast.expressao Ast.comandos) = Obj.magic stm in
        let _4 : unit = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let _2 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 1060 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 1065 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__6_ in
        let _v : (Sast.expressao Ast.comando) = 
# 114 "sintatico.mly"
                                                       (CONDICAOElifElse( stm ) )
# 1073 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = cee;
          MenhirLib.EngineTypes.startp = _startpos_cee_;
          MenhirLib.EngineTypes.endp = _endpos_cee_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _7;
            MenhirLib.EngineTypes.startp = _startpos__7_;
            MenhirLib.EngineTypes.endp = _endpos__7_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = stm;
              MenhirLib.EngineTypes.startp = _startpos_stm_;
              MenhirLib.EngineTypes.endp = _endpos_stm_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = _3;
                    MenhirLib.EngineTypes.startp = _startpos__3_;
                    MenhirLib.EngineTypes.endp = _endpos__3_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _;
                      MenhirLib.EngineTypes.semv = exprla;
                      MenhirLib.EngineTypes.startp = _startpos_exprla_;
                      MenhirLib.EngineTypes.endp = _endpos_exprla_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let cee : (Sast.expressao Ast.comando option) = Obj.magic cee in
        let _7 : unit = Obj.magic _7 in
        let stm : (Sast.expressao Ast.comandos) = Obj.magic stm in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 1141 "sintatico.ml"
        ) = Obj.magic _3 in
        let exprla : (Sast.expressao) = Obj.magic exprla in
        let _1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 1147 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_cee_ in
        let _v : (Sast.expressao Ast.comando) = 
# 109 "sintatico.mly"
   ( CONDICAOIF(exprla,stm,cee) )
# 1155 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _13;
          MenhirLib.EngineTypes.startp = _startpos__13_;
          MenhirLib.EngineTypes.endp = _endpos__13_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = cmd;
            MenhirLib.EngineTypes.startp = _startpos_cmd_;
            MenhirLib.EngineTypes.endp = _endpos_cmd_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = ds;
              MenhirLib.EngineTypes.startp = _startpos_ds_;
              MenhirLib.EngineTypes.endp = _endpos_ds_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _10;
                MenhirLib.EngineTypes.startp = _startpos__10_;
                MenhirLib.EngineTypes.endp = _endpos__10_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _9;
                  MenhirLib.EngineTypes.startp = _startpos__9_;
                  MenhirLib.EngineTypes.endp = _endpos__9_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = _8;
                    MenhirLib.EngineTypes.startp = _startpos__8_;
                    MenhirLib.EngineTypes.endp = _endpos__8_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _;
                      MenhirLib.EngineTypes.semv = retorno;
                      MenhirLib.EngineTypes.startp = _startpos_retorno_;
                      MenhirLib.EngineTypes.endp = _endpos_retorno_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _;
                        MenhirLib.EngineTypes.semv = _6;
                        MenhirLib.EngineTypes.startp = _startpos__6_;
                        MenhirLib.EngineTypes.endp = _endpos__6_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _;
                          MenhirLib.EngineTypes.semv = _5;
                          MenhirLib.EngineTypes.startp = _startpos__5_;
                          MenhirLib.EngineTypes.endp = _endpos__5_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.state = _;
                            MenhirLib.EngineTypes.semv = xs0;
                            MenhirLib.EngineTypes.startp = _startpos_xs0_;
                            MenhirLib.EngineTypes.endp = _endpos_xs0_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.state = _;
                              MenhirLib.EngineTypes.semv = _3;
                              MenhirLib.EngineTypes.startp = _startpos__3_;
                              MenhirLib.EngineTypes.endp = _endpos__3_;
                              MenhirLib.EngineTypes.next = {
                                MenhirLib.EngineTypes.state = _;
                                MenhirLib.EngineTypes.semv = nome;
                                MenhirLib.EngineTypes.startp = _startpos_nome_;
                                MenhirLib.EngineTypes.endp = _endpos_nome_;
                                MenhirLib.EngineTypes.next = {
                                  MenhirLib.EngineTypes.state = _menhir_s;
                                  MenhirLib.EngineTypes.semv = _1;
                                  MenhirLib.EngineTypes.startp = _startpos__1_;
                                  MenhirLib.EngineTypes.endp = _endpos__1_;
                                  MenhirLib.EngineTypes.next = _menhir_stack;
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _13 : unit = Obj.magic _13 in
        let cmd : (Sast.expressao Ast.comandos) = Obj.magic cmd in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let _10 : unit = Obj.magic _10 in
        let _9 : unit = Obj.magic _9 in
        let _8 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 1253 "sintatico.ml"
        ) = Obj.magic _8 in
        let retorno : (Ast.tipo) = Obj.magic retorno in
        let _6 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 1259 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1264 "sintatico.ml"
        ) = Obj.magic _5 in
        let xs0 : ((Ast.identificador Ast.pos * Ast.tipo) list) = Obj.magic xs0 in
        let _3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1270 "sintatico.ml"
        ) = Obj.magic _3 in
        let nome : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 1275 "sintatico.ml"
        ) = Obj.magic nome in
        let _1 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 1280 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__13_ in
        let _v : (Sast.expressao Ast.funcao) = let args =
          let xs = xs0 in
          
# 232 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 1290 "sintatico.ml"
          
        in
        
# 60 "sintatico.mly"
 (
	 Funcao {
		 fn_nome = nome;
		 fn_tiporet = retorno;
		 fn_formais = args;
		 fn_locais = List.flatten ds;
		 fn_corpo = cmd
	 }
	)
# 1304 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ids;
              MenhirLib.EngineTypes.startp = _startpos_ids_;
              MenhirLib.EngineTypes.endp = _endpos_ids_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 1338 "sintatico.ml"
        ) = Obj.magic _2 in
        let ids : (Ast.identificador Ast.pos list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.declaracao list) = 
# 49 "sintatico.mly"
                                                           (
                   List.map (fun id -> DecVar (id,t)) ids  )
# 1348 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (Sast.expressao) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao) = 
# 130 "sintatico.mly"
                            ( f 				 )
# 1373 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao) = 
# 131 "sintatico.mly"
                              ( EXPVAR(v)    	 )
# 1398 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 10 "sintatico.mly"
       (int * Lexing.position)
# 1419 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) = 
# 132 "sintatico.mly"
                           ( EXPINT(i)   		 )
# 1427 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 9 "sintatico.mly"
       (string *Lexing.position )
# 1448 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) = 
# 133 "sintatico.mly"
                             ( EXPSTRING(s)		 )
# 1456 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (
# 7 "sintatico.mly"
       (float * Lexing.position)
# 1477 "sintatico.ml"
        ) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao) = 
# 134 "sintatico.mly"
                             ( EXPFLOAT(f) 	  	 )
# 1485 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let b : (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 1506 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao) = 
# 135 "sintatico.mly"
                           ( EXPBOOL (b)	 )
# 1514 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let e : (Sast.expressao) = Obj.magic e in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1542 "sintatico.ml"
        ) = Obj.magic pos0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos0_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 166 "sintatico.mly"
              ( (NEGACAO, pos) 		)
# 1552 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                                       ( EXPOPU (op,e) 	 )
# 1558 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let e : (Sast.expressao) = Obj.magic e in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1586 "sintatico.ml"
        ) = Obj.magic pos0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos0_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 167 "sintatico.mly"
                ( (SUBTRACAO, pos ) )
# 1596 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                                       ( EXPOPU (op,e) 	 )
# 1602 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1636 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 150 "sintatico.mly"
                      ( (ADICAO, pos)	)
# 1647 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 1653 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1687 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 151 "sintatico.mly"
                       ( (SUBTRACAO,	pos)	)
# 1698 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 1704 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1738 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 152 "sintatico.mly"
                       ( (MULTIPLICACAO,pos)	)
# 1749 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 1755 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1789 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 153 "sintatico.mly"
                         ( (DIVISAO, pos)		)
# 1800 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 1806 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1840 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 154 "sintatico.mly"
                      ( (MOD, 	pos)		)
# 1851 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 1857 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1891 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 155 "sintatico.mly"
                          ( (EHIGUAL, pos)		)
# 1902 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 1908 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1942 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 156 "sintatico.mly"
                       ( (MAIORQ, 	pos)	)
# 1953 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 1959 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1993 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 157 "sintatico.mly"
                         ( (MAIORIGUALQ, pos)	)
# 2004 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 2010 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 2044 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 158 "sintatico.mly"
                      ( (MENORQ, 	pos)	)
# 2055 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 2061 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 2095 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 159 "sintatico.mly"
                          ( (MENORIGUALQ,	pos))
# 2106 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 2112 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 2146 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 160 "sintatico.mly"
                         ( (EHDIFERENTE, pos)	)
# 2157 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 2163 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 2197 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 161 "sintatico.mly"
                   ( (AND, 	pos)		)
# 2208 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 2214 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 2248 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 162 "sintatico.mly"
                   ( (OR, 		pos)	)
# 2259 "sintatico.ml"
          
        in
        
# 137 "sintatico.mly"
                                                              ( EXPOPB (op,e1,e2) )
# 2265 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2298 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2304 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) = 
# 138 "sintatico.mly"
                                            ( e 		    	 )
# 2312 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = exp;
            MenhirLib.EngineTypes.startp = _startpos_exp_;
            MenhirLib.EngineTypes.endp = _endpos_exp_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2357 "sintatico.ml"
        ) = Obj.magic _5 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2363 "sintatico.ml"
        ) = Obj.magic _3 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2368 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 2373 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 120 "sintatico.mly"
                                                      ( LEIAF exp )
# 2381 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = exp;
            MenhirLib.EngineTypes.startp = _startpos_exp_;
            MenhirLib.EngineTypes.endp = _endpos_exp_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2426 "sintatico.ml"
        ) = Obj.magic _5 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2432 "sintatico.ml"
        ) = Obj.magic _3 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2437 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 2442 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 119 "sintatico.mly"
                                                      ( LEIAI exp )
# 2450 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = exp;
            MenhirLib.EngineTypes.startp = _startpos_exp_;
            MenhirLib.EngineTypes.endp = _endpos_exp_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2495 "sintatico.ml"
        ) = Obj.magic _5 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2501 "sintatico.ml"
        ) = Obj.magic _3 in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2506 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 2511 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 121 "sintatico.mly"
                                                      ( LEIAS exp )
# 2519 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.funcoes) = 
# 211 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2537 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.funcoes) = Obj.magic xs in
        let x : (Sast.expressao Ast.funcao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.funcoes) = 
# 213 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 2569 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.declaracao list list) = 
# 211 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2587 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.declaracao list list) = Obj.magic xs in
        let x : (Ast.declaracao list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.declaracao list list) = 
# 213 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 2619 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _14;
          MenhirLib.EngineTypes.startp = _startpos__14_;
          MenhirLib.EngineTypes.endp = _endpos__14_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _12;
              MenhirLib.EngineTypes.startp = _startpos__12_;
              MenhirLib.EngineTypes.endp = _endpos__12_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _11;
                MenhirLib.EngineTypes.startp = _startpos__11_;
                MenhirLib.EngineTypes.endp = _endpos__11_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _10;
                  MenhirLib.EngineTypes.startp = _startpos__10_;
                  MenhirLib.EngineTypes.endp = _endpos__10_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = _9;
                    MenhirLib.EngineTypes.startp = _startpos__9_;
                    MenhirLib.EngineTypes.endp = _endpos__9_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _;
                      MenhirLib.EngineTypes.semv = exprfim;
                      MenhirLib.EngineTypes.startp = _startpos_exprfim_;
                      MenhirLib.EngineTypes.endp = _endpos_exprfim_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _;
                        MenhirLib.EngineTypes.semv = _7;
                        MenhirLib.EngineTypes.startp = _startpos__7_;
                        MenhirLib.EngineTypes.endp = _endpos__7_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _;
                          MenhirLib.EngineTypes.semv = exprcomeco;
                          MenhirLib.EngineTypes.startp = _startpos_exprcomeco_;
                          MenhirLib.EngineTypes.endp = _endpos_exprcomeco_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.state = _;
                            MenhirLib.EngineTypes.semv = _5;
                            MenhirLib.EngineTypes.startp = _startpos__5_;
                            MenhirLib.EngineTypes.endp = _endpos__5_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.state = _;
                              MenhirLib.EngineTypes.semv = _4;
                              MenhirLib.EngineTypes.startp = _startpos__4_;
                              MenhirLib.EngineTypes.endp = _endpos__4_;
                              MenhirLib.EngineTypes.next = {
                                MenhirLib.EngineTypes.state = _;
                                MenhirLib.EngineTypes.semv = _3;
                                MenhirLib.EngineTypes.startp = _startpos__3_;
                                MenhirLib.EngineTypes.endp = _endpos__3_;
                                MenhirLib.EngineTypes.next = {
                                  MenhirLib.EngineTypes.state = _;
                                  MenhirLib.EngineTypes.semv = id;
                                  MenhirLib.EngineTypes.startp = _startpos_id_;
                                  MenhirLib.EngineTypes.endp = _endpos_id_;
                                  MenhirLib.EngineTypes.next = {
                                    MenhirLib.EngineTypes.state = _menhir_s;
                                    MenhirLib.EngineTypes.semv = _1;
                                    MenhirLib.EngineTypes.startp = _startpos__1_;
                                    MenhirLib.EngineTypes.endp = _endpos__1_;
                                    MenhirLib.EngineTypes.next = _menhir_stack;
                                  };
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _14 : unit = Obj.magic _14 in
        let stm : (Sast.expressao Ast.comandos) = Obj.magic stm in
        let _12 : unit = Obj.magic _12 in
        let _11 : unit = Obj.magic _11 in
        let _10 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 2722 "sintatico.ml"
        ) = Obj.magic _10 in
        let _9 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2727 "sintatico.ml"
        ) = Obj.magic _9 in
        let exprfim : (Sast.expressao) = Obj.magic exprfim in
        let _7 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 2733 "sintatico.ml"
        ) = Obj.magic _7 in
        let exprcomeco : (Sast.expressao) = Obj.magic exprcomeco in
        let _5 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2739 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 2744 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 2749 "sintatico.ml"
        ) = Obj.magic _3 in
        let id : (Sast.expressao Ast.variavel) = Obj.magic id in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 2755 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__14_ in
        let _v : (Sast.expressao Ast.comando) = 
# 124 "sintatico.mly"
                                                                                                                                                                ( FORLOOP(EXPVAR id,exprcomeco,exprfim,stm))
# 2763 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _7;
          MenhirLib.EngineTypes.startp = _startpos__7_;
          MenhirLib.EngineTypes.endp = _endpos__7_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _5;
              MenhirLib.EngineTypes.startp = _startpos__5_;
              MenhirLib.EngineTypes.endp = _endpos__5_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _4;
                MenhirLib.EngineTypes.startp = _startpos__4_;
                MenhirLib.EngineTypes.endp = _endpos__4_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _3;
                  MenhirLib.EngineTypes.startp = _startpos__3_;
                  MenhirLib.EngineTypes.endp = _endpos__3_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = exprla;
                    MenhirLib.EngineTypes.startp = _startpos_exprla_;
                    MenhirLib.EngineTypes.endp = _endpos_exprla_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _menhir_s;
                      MenhirLib.EngineTypes.semv = _1;
                      MenhirLib.EngineTypes.startp = _startpos__1_;
                      MenhirLib.EngineTypes.endp = _endpos__1_;
                      MenhirLib.EngineTypes.next = _menhir_stack;
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _7 : unit = Obj.magic _7 in
        let stm : (Sast.expressao Ast.comandos) = Obj.magic stm in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let _3 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 2824 "sintatico.ml"
        ) = Obj.magic _3 in
        let exprla : (Sast.expressao) = Obj.magic exprla in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 2830 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sast.expressao Ast.comando) = 
# 127 "sintatico.mly"
                                                                                                ( WHILELOOP(exprla,stm) )
# 2838 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.expressoes) = 
# 142 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2856 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.expressoes) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 144 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x )
# 2881 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((Ast.identificador Ast.pos * Ast.tipo) list) = 
# 142 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2899 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : ((Ast.identificador Ast.pos * Ast.tipo) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.identificador Ast.pos * Ast.tipo) list) = 
# 144 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x )
# 2924 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 221 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 2949 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 223 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 2981 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comando option) = 
# 114 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( None )
# 2999 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.comando option) = 
# 116 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( Some x )
# 3024 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao option) = 
# 114 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( None )
# 3042 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao option) = 
# 116 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( Some x )
# 3067 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = tp;
          MenhirLib.EngineTypes.startp = _startpos_tp_;
          MenhirLib.EngineTypes.endp = _endpos_tp_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = id;
              MenhirLib.EngineTypes.startp = _startpos_id_;
              MenhirLib.EngineTypes.endp = _endpos_id_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let tp : (Ast.tipo) = Obj.magic tp in
        let _2 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 3101 "sintatico.ml"
        ) = Obj.magic _2 in
        let id : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 3106 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_tp_ in
        let _v : (Ast.identificador Ast.pos * Ast.tipo) = 
# 71 "sintatico.mly"
                                  ( (id,tp) )
# 3114 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = exprla;
            MenhirLib.EngineTypes.startp = _startpos_exprla_;
            MenhirLib.EngineTypes.endp = _endpos_exprla_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let exprla : (Sast.expressao) = Obj.magic exprla in
        let _1 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3149 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 95 "sintatico.mly"
                                                    (PRINT(exprla) )
# 3157 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = fs;
            MenhirLib.EngineTypes.startp = _startpos_fs_;
            MenhirLib.EngineTypes.endp = _endpos_fs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ds;
              MenhirLib.EngineTypes.startp = _startpos_ds_;
              MenhirLib.EngineTypes.endp = _endpos_ds_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let fs : (Sast.expressao Ast.funcoes) = Obj.magic fs in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ds_ in
        let _endpos = _endpos__3_ in
        let _v : (
# 39 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3196 "sintatico.ml"
        ) = 
# 45 "sintatico.mly"
              ( Programa (List.flatten ds, fs) )
# 3200 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = expr;
            MenhirLib.EngineTypes.startp = _startpos_expr_;
            MenhirLib.EngineTypes.endp = _endpos_expr_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let expr : (Sast.expressao option) = Obj.magic expr in
        let _1 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 3235 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 91 "sintatico.mly"
                                                  ( RETORNO(expr) )
# 3243 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 3264 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.identificador Ast.pos list) = 
# 241 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 3272 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Ast.identificador Ast.pos list) = Obj.magic xs in
        let _2 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 3306 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 3311 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.identificador Ast.pos list) = 
# 243 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 3319 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 241 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 3344 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 3378 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 243 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 3387 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.identificador Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.identificador Ast.pos * Ast.tipo) list) = 
# 241 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 3412 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : ((Ast.identificador Ast.pos * Ast.tipo) list) = Obj.magic xs in
        let _2 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 3446 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Ast.identificador Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.identificador Ast.pos * Ast.tipo) list) = 
# 243 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 3455 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 3476 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 142 "sintatico.mly"
           ( BOOLEAN 	)
# 3484 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 3505 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 143 "sintatico.mly"
          ( INTEIRO 	)
# 3513 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 3534 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 144 "sintatico.mly"
           ( REAL 		)
# 3542 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 3563 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 145 "sintatico.mly"
           ( NONE 		)
# 3571 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 3592 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 146 "sintatico.mly"
                 ( STRING 	)
# 3600 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 3621 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 170 "sintatico.mly"
                     ( VarSimples x )
# 3629 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = v;
              MenhirLib.EngineTypes.startp = _startpos_v_;
              MenhirLib.EngineTypes.endp = _endpos_v_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x : (
# 8 "sintatico.mly"
       (string *Lexing.position )
# 3662 "sintatico.ml"
        ) = Obj.magic x in
        let _2 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 3667 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 171 "sintatico.mly"
                              ( VarCampo (v,x) )
# 3676 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = v;
                MenhirLib.EngineTypes.startp = _startpos_v_;
                MenhirLib.EngineTypes.endp = _endpos_v_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 3715 "sintatico.ml"
        ) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 3721 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 172 "sintatico.mly"
                                                      ( VarElemento (v,e) )
# 3730 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
end

let programa =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (
# 39 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3761 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 39 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3771 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 269 "/Users/tatianefx/.opam/default/lib/menhir/standard.mly"
  

# 3779 "sintatico.ml"
