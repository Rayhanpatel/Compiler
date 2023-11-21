%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(const char *s);
int yylex(void);
%}

%token Zero One

%%
stmt: S ;
S: S A | A ;
A: Zero Zero | One One ;

%%

int main() {
    printf("Enter a sequence of 0's and 1's (pairs only) and press CTRL + D (EOF) to process: ");
    if (yyparse() == 0)
        printf("Accepted\n");
    else
        printf("Not Accepted\n");
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
    exit(1);
}
