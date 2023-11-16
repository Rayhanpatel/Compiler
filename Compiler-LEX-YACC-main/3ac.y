%{
#include<stdio.h>
int aaa;
void yyerror(char* str);
char *gencode(char word[],char first,char op,char second);
int yylex();
%}
%union {char dval;}
%token<dval>NUM
%type<dval> E
%left '+' '-'
%left '*''/''%'
%%
statement : E{printf("\nt = %c\nt \n",$1);};
          E:E'+'E { char word[] = "t";
char test=*gencode(word,$1,'+',$3);
$$=test;}
|E'-'E{ char word[] = "t";
char test=*gencode(word,$1,'-',$3);
$$=test;}
|E'%'E{ char word[] = "t";
char test=*gencode(word,$1,'%',$3);
$$=test;}
|E'*'E{ char word[] = "t";
char test=*gencode(word,$1,'*',$3);
$$=test;}
|E'/'E{ char word[] = "t";
char test=*gencode(word,$1,'/',$3);
$$=test;}

|'('E')'{$$=$2; }
|NUM {$$=$1;};
%%
