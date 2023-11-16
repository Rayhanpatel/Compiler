%{
#include<stdio.h>
%}
%%
^[a-z][a-z0-9_]*(@[A-Za-z]+)(\.[a-z]+)+ {printf("Valid email ID");}
.* {printf("INVALID!");}
%%
int main(void)
{ yylex(); }
int yywrap()
{ return 1; }
