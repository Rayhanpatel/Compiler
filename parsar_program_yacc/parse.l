%{
#include "y.tab.h"
%}

%%

"0" { return Zero; }
"1" { return One; }
[\t\n]+ ; /* Ignore whitespace and new lines */
. { return yytext[0]; } /* Catch-all for any other character */

%%

int yywrap() {
    return 1;
}
