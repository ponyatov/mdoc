# flex  `module.lex`

```lex
%{
    #include "K.hpp"
%}
```
```lex
%option noyywrap yylineno
```
```lex
%%
```
## line comment
```lex
#.*                             {}                  // line comment
```
## numbers
```lex
[+\-]?[0-9]+[eE][+\-]?[0-9]+    TOKEN(Num,NUM)      // \ numbers
[+\-]?[0-9]+\.[0-9]*            TOKEN(Num,NUM)
0x[0-9a-fA-F]+                  {yylval.o = new Hex(&yytext[2]); return NUM;}
0b[01]+                         {yylval.o = new Bin(&yytext[2]); return NUM;}
[+\-]?[0-9]+                    TOKEN(Int,NUM)      // /
```
## [[directive]]s
```lex
".gui"                          {return GUI;}
"?"                             {return Q;}
"."                             {return DOT;}
```
```lex
[ \t\r\n]+                      {}                  // drop spaces
.                               {yyerror("");}      // undefined char
```
