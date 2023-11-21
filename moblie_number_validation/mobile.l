%{
#include <stdio.h>
%}

%%

^[1-9][0-9]{9}$ {
    printf("\nValid Mobile Number\n");
}

. {
    printf("\nInvalid Mobile Number\n");
    return 0; // Return after the first invalid input
}

%%

int yywrap() {
    return 1;
}

int main() {
    printf("\nEnter Mobile Number: ");
    yylex();
    return 0;
}
