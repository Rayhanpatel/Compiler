%{
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
void yyerror();
int yylex();
%}
%token si co ta cose se ct lo lan sqr cu sq;
%union {double p;}
%token <p> num
%left '+' '-'
%left '*' '/'
%type <p> E
%%
stmt: E {printf("Answer is %g\n",$1);}
E: E'+'E{ $$ = $1 + $3 ;}
| E'-'E{ $$ = $1 - $3 ;}
| E'*'E{ $$ = $1 * $3 ;}
| E'/'E{ $$ = $1 / $3 ;}
| '('E')' {$$ = $2;}
| si'('E')' {$$= sin($3);}
| co'('E')' {$$= cos($3);}
| ta'('E')' {$$= tan($3);}
| cose'('E')' {$$= sinh($3);}
| se'('E')' {$$= cosh($3);}
| ct'('E')' {$$= tanh($3);}
| lo'('E')' {$$= log10 $3);}
| lan'('E')' {$$= log($3);}
| sqr'('E')' {$$= sqrt($3);}
| sq'('E')' {$$= $3 * $3;}
| cu'('E')' {$$= $3 * $3 * $3;}
| num
;
%%
void main()
{
printf("enter the string: ");
yyparse();
exit(0);
}
void yyerror()
{
printf("Not Accepted");
exit(0);
}
