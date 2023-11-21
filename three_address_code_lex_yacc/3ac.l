%{
#include <stdio.h>
#include "y.tab.h"
#include <stdlib.h>
#include <string.h>
%}

%%

[0-9]+ {
    yylval.dval = strdup(yytext);  // Duplicate the string
    return NUM;
}

[ \t] ;  // Ignore whitespace (spaces and tabs)

\n { return 0; }  // Handle new lines

. { return yytext[0]; }  // Any other character

%%

int yywrap() {
    return 1;
}
