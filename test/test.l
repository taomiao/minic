%{
#include<stdio.h>
#include"y.tab.h"
%}

%%
"=" { return assign;}
-?[1-9][0-9]* {return integer;}
[A-Za-z_][A-Za-z0-9_]* { return identifier;}
[\t\n ]+       ;
.	{printf("invalid token"); return -1;}

%%

int yywrap(){
	return 1;
}                          
