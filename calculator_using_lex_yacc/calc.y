%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
void yyerror(const char *s);
int yylex();
%}

%union {
    double p;
}

%token SI CO TA COSE SE CT LO LAN SQR CU SQ
%token <p> NUM

%left '+' '-'
%left '*' '/'
%type <p> E

%%
stmt: E { printf("Answer is %g\n", $1); }
E: E '+' E { $$ = $1 + $3; }
| E '-' E { $$ = $1 - $3; }
| E '*' E { $$ = $1 * $3; }
| E '/' E { $$ = $1 / $3; }
| '(' E ')' { $$ = $2; }
| SI '(' E ')' { $$ = sin($3); }
| CO '(' E ')' { $$ = cos($3); }
| TA '(' E ')' { $$ = tan($3); }
| COSE '(' E ')' { $$ = 1 / sin($3); } /* Modified for cosec */
| SE '(' E ')' { $$ = 1 / cos($3); } /* Modified for sec */
| CT '(' E ')' { $$ = 1 / tan($3); } /* Modified for cot */
| LO '(' E ')' { $$ = log10($3); }
| LAN '(' E ')' { $$ = log($3); }
| SQR '(' E ')' { $$ = sqrt($3); }
| SQ '(' E ')' { $$ = $3 * $3; }
| CU '(' E ')' { $$ = $3 * $3 * $3; }
| NUM
;
%%
int main() {
    printf("Enter the expression: ");
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
    exit(1);
}
