%{
int vowel = 0, con = 0;
%}
%%
\n return 0;
[\t]+;
[aeiouAEIOU] {vowel++;}
[^aeiouAEIOU] {con++;}
%%
int main(void)
{ printf(" Enter the string: ");
 yylex();
 printf(" Vowels = %d and Consonants = %d\n", vowel, con);
 return 0; }
int yywrap()
{ return 1;  }
