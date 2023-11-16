%{
#include<stdio.h>
int i;
%}
%%
[0-9]+ {
i = atoi(yytext);
 if(i%2==0)
 printf("Even");
 else
 printf("Odd");}
%%
int yywrap()
{ return 1; }
int main()
{
 yylex();
 return 0;
}
