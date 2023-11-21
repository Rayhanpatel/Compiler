%{
#include <stdio.h>
%}

%%

^[a-zA-Z][a-zA-Z0-9_]*@[a-zA-Z]+\.[a-zA-Z]{2,} {
    printf("Valid email ID\n");
    return 0; // Indicate a successful match
}

.|\n {
    printf("INVALID!\n");
    return 1; // Indicate an invalid match
}

%%

int main(void)
{
    printf("Enter an email to validate: ");
    int result = yylex();
    if (result == 0) {
        printf("Email validation completed.\n");
    } else {
        printf("Email validation failed.\n");
    }
    return result;
}

int yywrap()
{
    return 1;
}
