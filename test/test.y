%{
#include<stdio.h>
#include"node.h"

#define YYSTYPE Node *
int layer=1;
void print_tree(Node * tree){
	printf("layer %d,type %d\n",layer,tree->type);
	switch(tree->type){
		case 1:{
			printf("identifier\n");		
			break;		
		}
		case 2:{
			printf("ASSIGN\n");
			break;		
		}
		case 3:{
			printf("integer\n");
			break;		
		}
		case 4:{
			printf("ASSIGN : identifier assign integer\n");
			break;
		}
		case 5:{
			printf("ASSIGNS: ASSIGNS ASSIGN\n");
			Node * tmp1 = ((tree->node).child5)->child1;
			layer++;
			print_tree(tmp1);
			layer--;
			Node * tmp2 = ((tree->node).child5)->child2;
			layer++;
			print_tree(tmp2);
			layer--;
			break;
		}
	
	}
}
%}

%token identifier assign integer

%%

GOAL : ASSIGNS {
	$$=$1;printf("goal\n");
	print_tree(($$));
}; 
ASSIGNS: ASSIGNS ASSIGN { 
	Goal * gp = malloc(sizeof(Goal));
	gp->child1 = ($1);
	printf("$1 type =  %d\n",$1->type);
	gp->child2 = ($2);
	printf("$2 type =  %d\n",$2->type);
	Node * np = malloc(sizeof(Node));
	np->type=5;	
	(np->node).child5 = gp;
	$$=np;
	printf("assign1\n");
	}

	|ASSIGN {
	$$=$1;
	printf("assign2\n");	
	};
/*
identifier { 
	identifierT * ip = malloc(sizeof(identifierT));
	Node * np = malloc(sizeof(Node));
	np->type=1;		
	(np->node).child1 = ip;
	$$=*np;
	printf("reduce to assign1");}
*/
ASSIGN : identifier assign integer { 

	identifierT * ip = malloc(sizeof(identifierT));
	Node * np1 = malloc(sizeof(Node));
	np1->type=1;		
	(np1->node).child1 = ip;

	assignT * ap = malloc(sizeof(assignT));
	Node * np2 = malloc(sizeof(Node));
	np2->type=2;		
	(np2->node).child2 = ap;

	integerT * tp = malloc(sizeof(integerT));
	Node * np3 = malloc(sizeof(Node));
	np3->type=3;		
	(np3->node).child3 = tp;

	Assign * Ap = malloc(sizeof(Assign));
	Ap->child1 = np1;
	Ap->child2 = np2;
	Ap->child3 = np3;
	Node * np4 = malloc(sizeof(Node));
	np4->type=4;	
	(np4->node).child4 = Ap;

	$$=np4;

	printf("reduce to assign2\n"); 
};

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
