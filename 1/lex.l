%{
  #include <stdio.h>
%}

id  [a-z][a-z0-9]*

%%
if|else|while|for|int {printf("%s keyword", yytext);}
{id} 		              {printf("%s identifier", yytext);}
[0-9]*(\.[0-9]+)?     {printf("%s number",  yytext);}
">=" 		              {printf("operator greater than or equal to");}
.* 		                {printf("invalid");}
%%
