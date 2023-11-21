%{
#include <stdio.h>
int is_valid_date = 0;
%}

%%

([0-2][0-9]|3[0-1])\/(01|03|05|07|08|10|12)\/[0-9]{4} {
    is_valid_date = 1;
}

(0[1-9]|[12][0-9]|30)\/(04|06|09|11)\/[0-9]{4} {
    is_valid_date = 1;
}

(0[1-9]|1[0-9]|2[0-8])\/02\/[0-9]{4} {
    is_valid_date = 1;
}

29\/02\/([0-9]{4}) {
    int year;
    sscanf(yytext, "29/02/%d", &year);
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
        is_valid_date = 1;
}

%%

int main(void)
{
    char input[20];
    printf("Enter a date in the format dd/mm/yyyy: ");
    scanf("%19s", input); // Added buffer limit for safety

    // Set the input for lex to scan
    yy_scan_string(input);
    yylex();

    if (is_valid_date)
        printf("It is a valid date\n");
    else
        printf("It is not a valid date\n");

    return 0;
}

int yywrap()
{
    return 1;
}