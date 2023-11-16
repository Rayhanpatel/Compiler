%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
void yyerror(char *s);
int yylex();
%}
%token Zero One
%%
stmt:S;
S:S A | A;
A:Zero Zero | One One;
%%
int main()
{
yyparse();
printf("Accepted\t");
exit(0);}
void yyerror(char *s)
{ printf("Not Accepted\n");
exit(0);}
