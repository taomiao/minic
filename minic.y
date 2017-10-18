%{
typedef char* string;
#define YYSTYPE string
#include<stdio.h>
#include<string.h>


%}

%token semicolon open_bracket close_bracket assign open_paren close_paren comma open_brace close_brace int_ if_ else_ while_ return_ plus minus mul div_ mod and_ or_ less equal more n_equal not_ l_or main identifier integer
%%
GOAL : DEFNS MAINFUNC;    /*[VARDEFN,FUNCDEFN,FUNCDECL]* MAINFUNC;*/
DEFNS : DEFNS VARDEFN
	| DEFNS FUNCDEFN
	| DEFNS FUNCDECL
	| ;
VARDEFN : TYPE IDENTIFIER semicolon
	| TYPE IDENTIFIER open_bracket integer close_bracket;
VARDECL : TYPE IDENTIFIER
	| TYPE IDENTIFIER open_bracket integer close_bracket;
FUNCDEFN : TYPE IDENTIFIER open_paren PARAMS/*(VARDECL,(comma,VARDECL)*)? */ close_paren open_brace FUNCBODY/*[FUNCDECL,STATEMENT]* */ close_brace;
FUNCDECL : TYPE IDENTIFIER open_paren PARAMS/*(VARDECL,(comma,VARDECL)*)? */ close_paren;
PARAMS : PARAMS_ 
	| ;
PARAMS_ : PARAMS_ comma VARDECL
	| VARDECL;
FUNCBODY : FUNCBODY FUNCDECL
	| FUNCBODY STATEMENT
/*	| FUNCDECL
	| STATEMENT
*/
	| ;
MAINFUNC : int_ main open_paren close_paren open_brace FUNCBODY/*[FUNCDECL,STATEMENT]* */ close_brace;
TYPE : int_;
STATEMENT : open_brace STATEMENT close_brace
	| if_ open_paren EXPRESSION close_paren STATEMENT else_ STATEMENT
	| if_ open_paren EXPRESSION close_paren STATEMENT
	| while_ open_paren EXPRESSION close_paren STATEMENT
	| IDENTIFIER assign EXPRESSION semicolon
	| IDENTIFIER open_bracket EXPRESSION close_bracket assign EXPRESSION semicolon
	| VARDEFN
	| return_ EXPRESSION semicolon;
	| ;
EXPRESSION : EXPRESSION plus EXPRESSION
	| EXPRESSION minus EXPRESSION
	| EXPRESSION mul EXPRESSION
	| EXPRESSION div_ EXPRESSION
	| EXPRESSION mod EXPRESSION
	| EXPRESSION and_ EXPRESSION
	| EXPRESSION or_ EXPRESSION
	| EXPRESSION less EXPRESSION
	| EXPRESSION equal EXPRESSION
	| EXPRESSION more EXPRESSION
	| EXPRESSION n_equal EXPRESSION
	| EXPRESSION open_bracket EXPRESSION close_bracket
	| integer
	| IDENTIFIER
	| not_ EXPRESSION
	| minus EXPRESSION
	| IDENTIFIER open_paren REAL_PARAMS/*(IDENTIFIER (comma,IDENTIFIER)*)? */ close_paren
	| open_paren EXPRESSION close_paren;
REAL_PARAMS : REAL_PARAMS_
	| ;
REAL_PARAMS_ : REAL_PARAMS_ comma IDENTIFIER
	| IDENTIFIER;
IDENTIFIER : identifier
 
%%

int Main(){

yyparse();
return 0;

}

int yyerror(char *msg)
{
	printf("error encountered : %s \n",msg);
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           