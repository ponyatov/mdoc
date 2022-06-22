# bison `module.yacc`

```yacc
%{
    #include "K.hpp"
%}
```
```yacc
%defines %union { Object *o; }
```
## teminals ([[lexer]] elements)
```yacc
%token<o> SYM NUM STR
%token Q DOT GUI
```
## grammar elements (non-terminals)
```yacc
%type<o> ex
```
```yacc
%%
```
```yacc
REPL :
REPL : REPL ex  { cout << $2->dump() << endl; }
```
## [[directive]] rules
```yacc
REPL : REPL Q   { dump(); }
REPL : REPL DOT { dot(); }
REPL : REPL GUI { gui(); }
```
```yacc
ex : SYM
ex : NUM
ex : STR
```
