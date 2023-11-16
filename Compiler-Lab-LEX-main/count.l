%{
#include<stdio.h>
int tchar = 0, tword = 0, tline = 0;
%}
%%
[\n] {tline++;tword++;}
[\t] {tword++;}
[^\n\t] {tchar++;}
%%
int yywrap()
{ return 1; }
int main()
{
 yyin = fopen("sample.txt","r");
 yylex();
 printf(" Character count = %d\n Word count = %d\n Line count = %d\n", tchar, tword, 
tline);
 return 0;
}

/*sample.txt - create
  Hello user.
  This is a sample text file.
  Welcome to Compiler Lab.*/
