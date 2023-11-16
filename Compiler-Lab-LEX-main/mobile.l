%{
/* Definition section */
%}
%%
[1-9][0-9]{9} {printf("\nValid Mobile Number\n");}
.+ {printf("\nInvalid Mobile Number\n");}
%%
int yywrap()
{
 return 1;
}
int main() {
printf("\nEnter Mobile Number : ");
yylex();
printf("\n");
return 0;
}
