%{
#include <stdio.h>
int posno = 0, negno = 0;
%}

%%

q { return 0; }

^[-][0-9]+ { negno++; }

[0-9]+ { posno++; }

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter numbers (positive or negative). Enter 'q' to quit.\n");
    printf("Signal EOF (Ctrl-D or Ctrl-Z) after entering numbers.\n");
    yylex();
    printf("Number of positive numbers = %d\nNumber of negative numbers = %d\n",
           posno, negno);
    return 0;
}
