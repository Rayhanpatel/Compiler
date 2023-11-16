%{
#include<stdio.h>
int posno = 0, negno = 0;
%}
%%
q {return 0;}
^[-][0-9]+ {negno++;}
[0-9]+ {posno++;}
%%
int yywrap()
{ return 1; }
int main()
{
 printf("Enter q to quit \n");
 yylex();
 printf(" Number of positive numbers = %d\n Number of negative numbers = %d\n",
posno, negno);
 return 0; 
}
