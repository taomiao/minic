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
	struct identifier * child1;
	struct assign * child2;
	struct integer * child3;
} Assign;
typedef struct Goaltype{
	struct Goal * child1;
	struct Assign * child2;
} Goal;
typedef union Nodetype{
	struct identifier * child1;
	struct assign * child2;
	struct integer * child3;
	struct Assign * child4;
	struct Goal * child5;
} Node;

