%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char *s);
%}

%token NUMBER

%%

lines:	/* empty */
	| lines line
	;

line:	'\n'
	| exp '\n'	{ printf("Result = %d\n", $1); }
	| error '\n'	{ yyerrok; printf("Syntax Error! Please re-enter.\n"); }
	;

exp:	exp exp '+
