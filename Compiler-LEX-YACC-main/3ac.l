%{
#include<stdio.h>
#include"y.tab.h"
int k = 1;
void yyerror(char* str);
char *gencode(char word[],char first,char op, char second);
%}

%%
[0-9]+ {yylval.dval=yytext[0];
return NUM;}
\n return 0;

. {return yytext[0];}
%%

void yyerror(char* str)
{printf("\n%s",str);}
char *gencode(char word[],char first,char op,char second)
{ char temp[10];
sprintf(temp, "%d",k);
strcat(word,temp);
k++;
printf("%s = %c%c%c\n",word,first,op,second);
return word;}
int yywrap()
{return 1; }
int main()
{
 yyparse();
return 0;
}
