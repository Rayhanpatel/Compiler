%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void yyerror(const char* str);
char* gencode(const char* word, char* first, char op, char* second);
int yylex(void);

char* gencode(const char* word, char* first, char op, char* second) {
    static char result[10];
    static int k = 1;
    sprintf(result, "%s%d", word, k++);
    printf("%s = %s %c %s\n", result, first, op, second);
    return strdup(result); // Duplicate the result string
}

%}

%union {
    char* dval;
}

%token<dval> NUM
%type<dval> E

%left '+' '-'
%left '*' '/' '%'

%%

statement: E { 
    printf("\nResult: %s\n", $1); 
    free($1); // Free the string
};

E: NUM {
    $$ = $1;
}
| E '+' E {
    $$ = gencode("t", $1, '+', $3);
    free($1); free($3); // Free the strings
}
| E '-' E {
    $$ = gencode("t", $1, '-', $3);
    free($1); free($3); // Free the strings
}
| E '*' E {
    $$ = gencode("t", $1, '*', $3);
    free($1); free($3); // Free the strings
}
| E '/' E {
    $$ = gencode("t", $1, '/', $3);
    free($1); free($3); // Free the strings
}
| E '%' E {
    $$ = gencode("t", $1, '%', $3);
    free($1); free($3); // Free the strings
}
| '(' E ')' {
    $$ = $2;
}
;

%%

int main() {
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}

void yyerror(const char* str) {
    fprintf(stderr, "Error: %s\n", str);
}
