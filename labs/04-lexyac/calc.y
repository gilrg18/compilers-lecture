%{
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
%}

%token NAME NUMBER
%left '-' '+'
%left '*' '/'


%%
statement: NAME '=' expression
|   expression {printf("= %d\n", $1); }
;
expression: expression '+' expression {$$ = $1 + $3; }
    |       expression '-' expression {$$ = $1 - $3; }
    |       expression '*' expression {$$ = $1 * $3; }
    |       expression '/' expression {
                           if($3 == 0)
                                yyerror("Error: Division by 0");
                           else
                                $$ = $1 / $3;
                           }
    |       NUMBER                           {$$ = $1;}
    ;

%%

//Gilberto Rogel García
//yacc -d calc.y
//lex calc.l
//gcc y.tab.c lex.yy.c -ly -ll -o calc
//./calc