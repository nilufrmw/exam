%{
  int v = 0;
  int c = 0;
%}

%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
"\n" {
  printf("no. of vowels: %d\n", v);
  printf("no. of consonants: %d\n", c);
}
%%
