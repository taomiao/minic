%{
#include<stdio.h>
#include"node.h"

#define YYSTYPE Node
%}

%token identifier assign integer

%%

GOAL : GOAL ASSIGN { 
	Goal * gp = malloc(sizeof(Goal));
	gp->child1 = &($1);
	gp->child2 = &($2);
	Node * np = malloc(sizeof(Node));
	np->child5 = gp;
	$$=*np;
	}
	| {
	printf("reduce to goal2");
	}; 
ASSIGN : identifier { 
	identifierT * ip = malloc(sizeof(identifierT));
	Node * np = malloc(sizeof(Node));
	np->child1 = ip;
	$$=*np;
	printf("reduce to assign1");}
	|identifier assign integer { 
	identifierT * ip = malloc(sizeof(identifierT));
	assignT * ap = malloc(sizeof(assignT));
	integerT * tp = malloc(sizeof(integerT));
	Assign * Ap = malloc(sizeof(Assign));
	Ap->child1 = ip;
	Ap->child2 = ap;
	Ap->child3 = tp;
	Node * np = malloc(sizeof(Node));
	np->child4 = Ap;
	$$=*np;
	printf("reduce to assign2"); };

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
