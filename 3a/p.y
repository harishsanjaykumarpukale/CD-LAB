%{

#include<stdio.h>

#include<stdlib.h>

int count=0;

%}

%token FOR VAR SPACE NUM

%%
S:
	I
	;

I: 
	FOR '(' EXPR ';' EXPR ';' EXPR ')' B {count++;}
	;

EXPR: 
	NUM
	| VAR
	| VAR '=' EXPR
	| EXPR Z EXPR
	| VAR U
	| SPACE
	|
	;

Z: '<'|'>'|'<''='|'>''='|'-''='|'+''='|'+'|'-'|'*'|'/'
;

U: '+''+'|'-''-'
;

EXPRS: 
	EXPR ';'
	| EXPR ';' EXPRS
	;

B: 
	'{' B '}'
	| I
	| EXPRS
	| EXPRS I EXPRS
	|
	;

%%

int main(){
    yyparse();
    printf("\ncount of for is %d\n",count);
    return 1;

}

int yyerror(){
    printf("\n Invalid \n");
    exit(0);
}

int yywrap(){
	return 1;
}
