%{
  #include <stdio.h>
  #include <string.h>
  int c = 0, l = 0, s = 0;
%}

%%
\n l++;
[ ] s++;
[^\t\n] c++;
%%

void main(int argc, char *argv[]) {
  yyin = fopen(argv[1], "r");
  yylex();
  printf("no. of lines: %d\n", l);
  printf("no. of characters: %d\n", c);
  printf("no. of words: %d\n", l + s);
  printf("no. of spaces: %d\n", s);
}
