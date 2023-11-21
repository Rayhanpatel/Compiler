%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
#include <math.h>
%}

%%

sin { return SI; }
cos { return CO; }
tan { return TA; }
cosec { return COSE; }
sec { return SE; }
cot { return CT; }
log { return LO; }
ln { return LAN; }
sqrt { return SQR; }
cube { return CU; }
square { return SQ; }
[0-9]+ { yylval.p = atof(yytext); return NUM; }
[\t] ;
\n { return 0; }
. return yytext[0];

%%

int yywrap() {
    return 1;
}
