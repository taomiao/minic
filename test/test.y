%{
#include<stdio.h>
struct identifier{
	char * p;
};
struct assign{
	char a='=';
};
struct integer{
	int i;
};
struct Assign{
	struct identifier * child1;
	struct assign * child2;
	struct integer * child3;
};
struct Goal{
	struct Goal * child1;
	struct Assign * child2;
};

%}

%token identifier assign integer

%%

GOAL : GOAL ASSIGN 
	| ASSIGN ; 
ASSIGN : identifier {$$=$1; 
	 identifier tmp=new identifier();
	 
	 printf("reduce to Goal1");}
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
