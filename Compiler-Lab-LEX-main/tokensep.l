%{
%}
%%
[0-9]+[.][0-9]+ printf("%s is a floating point number\n",yytext);
int|float|char|double|void printf("%s is a datatype\n",yytext);
[0-9]+ printf("%s is an integer number\n",yytext);
[a-z]+[()] printf("%s is a function\n",yytext);
[a-z]+ printf("%s is an identifier\n",yytext);
[+\-*\/] printf("%s is an arithmetic operator\n",yytext);
= printf("%s is an assignment operator\n",yytext);
[<>]|[(<>)=]|[!=]|[==] printf("%s is a relational operator\n",yytext);
; printf("%s is a delimiter\n",yytext);
, printf("%s is a separator\n",yytext);
[#][a-z\.h]+ printf("%s is a preprocessor directive\n",yytext);
%%
int yywrap()
{ return 1; }
int main() {
 printf("Enter a code line to be tokenized: ");
 yylex();
 return 0; }
