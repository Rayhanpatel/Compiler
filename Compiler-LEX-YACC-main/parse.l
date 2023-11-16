%{
#include <stdio.h>
#include "y.tab.h"
extern int yylval;
%}
%%
0 {yylval = 0; return Zero;}
1 {yylval = 1; return One;}
[\t] return 0;
\n return 0;
. return yytext[0];
%%
