%{
#include <stdio.h>
#include<string.h>
int count = 1;
char sent[100];
%}
%%
^a.* { count++; }
q {return 0;}
.|\n {} /* Ignore other characters */
%%
int yywrap()
{
 return 1;
}
int main() {
 printf("Enter 'q' to Quit\n");
 printf("Enter a sentence: ");
 scanf("%s", &sent);
 yylex();
 printf("Number of strings starting with 'a' = %d\n", count);
 return 0;
}
