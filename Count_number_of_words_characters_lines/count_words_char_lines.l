%{
#include <stdio.h>
int char_count = 0, word_count = 0, line_count = 0;
int in_word = 0; // Flag to indicate if we are inside a word
%}

%%
\n          { ++line_count; if (in_word) { ++word_count; in_word = 0; } }
[ \t]+      { if (in_word) { ++word_count; in_word = 0; } }
[^ \t\n]    { ++char_count; in_word = 1; }
%%

int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("simple.txt", "r");
    if (yyin == NULL) {
        perror("Error opening file");
        return 1;
    }
    yylex();
    if (in_word) { ++word_count; } // Check for the last word
    printf("Character count = %d\nWord count = %d\nLine count = %d\n", char_count, word_count, line_count);
    fclose(yyin);
    return 0;
}