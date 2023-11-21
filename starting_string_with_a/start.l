%{
#include <stdio.h>
#include <string.h>
int count = 0;
char sent[100];
%}

%%

^a.* { count++; }
q { return 0; }
.|\n { /* Ignore other characters */ }

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter 'q' to Quit\n");
    printf("Enter a sentence: ");
    fgets(sent, sizeof(sent), stdin);  // Read full line
    yy_scan_string(sent);
    yylex();
    printf("Number of strings starting with 'a' = %d\n", count);
    return 0;
}

/*
Random input to try:

apple is a healthy fruit.
avocados are rich in nutrients.
bananas are high in potassium.
aardvark is an unusual animal.
quietly she read the book.
alpha and omega.

*/