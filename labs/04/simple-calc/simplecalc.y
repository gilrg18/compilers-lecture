%{
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
//yacc -d simplecalc.y
//lex simplecalc.l
//gcc y.tab.c lex.yy.c -ly -ll -o simplecalc
//.simplecalc
%}

%token NAME NUMBER
%%

statement: NAME '=' expression
 | expression 						{printf("= %d\n", $1);}
 ;
expression: expression '+' NUMBER   { $$ = $1 + $3;}
 | expression '-' NUMBER            { $$ = $1 - $3;}
 | expression '^' NUMBER            { $$ = pow()};
 | NUMBER                           {$$ = $1;}
 ;
