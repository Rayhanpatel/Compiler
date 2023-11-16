%{#include<stdio.h>
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
#include "math.h"
%}
%%
sin {return si;}
cos {return co;}
tan {return ta;}
cosec {return cose;}
sec {return se;}
cot {return ct;}
log {return lo;}
ln {return lan;}
sqrt {return sqr;}
cube {return cu;}
square {return sq;}
[0-9]+ {yylval.p = atoi(yytext); return num;}
[\t] {;}
\n {return 0;}
. return yytext[0];
%%
