%{
#include <stdio.h>
%}


%%
[/]{2}[a-zA-Z][a-zA-z0-9]* printf("comment");
[a-e] printf("id");
[g-h] printf("id");
[j-o] printf("id");
[q-z] printf("id");
[0123456789]+ printf("inum");
[0123456789]*[.][0123456789]+ printf("fnum");
= printf("assign");
[+] printf("plus");
- printf("minus");
[/]{1} printf("division");
[*] printf("multiplication");
f printf("floatdcl");
i printf("intdcl");
p printf("print");

%%

int main(int argc, char **argv){
    FILE *fd;
    if(argc == 2){
        if(!(fd = fopen(argv[1], "r"))){
            perror("Error: ");
            return(-1);
        }
        yyset_in(fd);
        yylex();
        fclose(fd);
    }
}
//http://www.csd.uwo.ca/~moreno/CS447/Lectures/Lexical.html/node11.html
//lex lexic_analyzer.l
//gcc lex.yy.c -lfl -o test
//./test example.ac
//Gilberto Rogel Garcia a01630171