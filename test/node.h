struct Node;
typedef struct identifiertype{	
	char * p;
} identifierT;
typedef struct assigntype{	
	char a;
} assignT;
typedef struct integertype{	
	int i;
} integerT;
typedef struct Assigntype{	
	struct Node * child1;
	struct Node * child2;
	struct Node * child3;
} Assign;
typedef struct Goaltype{	
	struct Node * child1;
	struct Node * child2;
} Goal;
struct Node{
int type;
union Nodetype{
	identifierT * child1;
	assignT * child2;
	integerT * child3;
	Assign * child4;
	Goal * child5;
	} node;
};
typedef struct Node Node;
