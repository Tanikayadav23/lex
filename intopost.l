%{
 #include"itop.tab.h"
 //extern int yylval;
 %}
 %%
 [0-9]+  {yylval=atoi(yytext); return NUMBER;}
 .|\n       return *yytext;
 %%
 
 int yywrap(){
     return 1;
 }
