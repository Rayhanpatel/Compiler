%{
#include <stdio.h>
int vowel = 0, con = 0;
%}

%%

[aeiouAEIOU] { vowel++; }
[b-df-hj-np-tv-z] { con++; } /* Lowercase consonants */
[B-DF-HJ-NP-TV-Z] { con++; } /* Uppercase consonants */
\n { /* Ignore newlines */ }
%%

int main(void)
{
    printf("Enter the string: ");
    yylex();
    printf("Vowels = %d and Consonants = %d\n", vowel, con);
    return 0;
}

int yywrap()
{
    return 1;
}


// After typing the string, press Enter, and then Ctrl-D to signal the end of input.
// random string to test:
//    Exemplary string with a mixture of vowels and consonants.