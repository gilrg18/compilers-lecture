%{
#include <stdio.h>
%}
%%
[\t ]+                   /* ignore whitespace */ ;

is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did  |
will |
would |
should |
can  |
could |
has  |
have |
had |
go        { printf("%s: is a verb\n", yytext); }
[a-zA-Z]+ { printf("%s: is not a verb\n", yytext); }

.|\n      { ECHO; /* normal default anyway */ }
%%



//lex example0.1
//gcc lex.yy.c -lfl -o nameoffile
//./nameoffile