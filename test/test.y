%{
#include<stdio.h>

%}

%token identifier assign integer

%%

GOAL : GOAL ASSIGN 
	| ASSIGN ;
ASSIGN : identifier {printf("reduce to Goal1");}
	|identifier assign integer {printf("reduce to Goal2"); };

%%

int main(){

printf("start parse\n");
yyparse();
return 0;

}

int yyerror(char *msg)
{
	printf("error encountered : %s \n",msg);
} 
