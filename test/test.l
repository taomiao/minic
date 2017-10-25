%{
#include<stdio.h>
#include"node.h"
#include"y.tab.h"
%}

%%
"=" { printf("="); return assign;}
-?[1-9][0-9]* {printf("integer"); return integer;}
[A-Za-z_][A-Za-z0-9_]* { printf("identifier"); return identifier;}
[\t\n ]+      ;
.	{printf("invalid token");}

%%

int yywrap(){
	return 1;
}                          
