%{
#include"y.tab.h"
#include<stdio.h>
#include<string.h>

%}



%%
; {printf("get a %s\n",yytext); return semicolon;}
\[ {printf("get a %s\n",yytext); return open_bracket;}
\] {printf("get a %s\n",yytext); return close_bracket;}
= {printf("get a %s\n",yytext); return assign;}
\( {printf("get a %s\n",yytext); return open_paren;}
\) {printf("get a %s\n",yytext); return close_paren;}
, {printf("get a %s\n",yytext); return comma;}
\{ {printf("get a %s\n",yytext); return open_brace;}
\} {printf("get a %s\n",yytext); return close_brace;}
int {printf("get a %s\n",yytext); return int_;}
if {printf("get a %s\n",yytext); return if_;}
else {printf("get a %s\n",yytext); return else_;}
while {printf("get a %s\n",yytext); return while_;}
return {printf("get a %s\n",yytext); return return_;}
\+ {printf("get a %s\n",yytext); return plus;}
- {printf("get a %s\n",yytext); return minus;}
\* {printf("get a %s\n",yytext); return mul;}
\/ {printf("get a %s\n",yytext); return div_;}
\% {printf("get a %s\n",yytext); return mod;}
and {printf("get a %s\n",yytext); return and_;}
or {printf("get a %s\n",yytext); return or_;}
\< {printf("get a %s\n",yytext); return less;}
== {printf("get a %s\n",yytext); return equal;}
> {printf("get a %s\n",yytext); return more;}
!= {printf("get a %s\n",yytext); return n_equal;}
! {printf("get a %s\n",yytext); return not_;}
\| {printf("get a %s\n",yytext); return l_or;}
main {printf("get a %s\n",yytext); return main;}

^-?\d+$ {printf("get a number %s\n",yytext); return integer;}
^[A-Za-z_][A-Za-z0-9_]*$ {printf("get a identifier %s\n",yytext); return identifier;}


%%

int yywarp(){
	return 1;
}
