%{
  #include <stdio.h>
  #include <stdlib.h>

  int yylex(void);
  void yyerror(const char *s);
%}

%token DIGIT ALPHA

%%
var: ALPHA | var ALPHA | var DIGIT;
%%

void main() {
  printf("enter variable: ");
  yyparse();
  printf("valid variable\n");
}

void yyerror(const char *s) {
  printf("invalid variable\n");
  exit(0);
}
