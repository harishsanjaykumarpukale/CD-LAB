%{

#include<stdio.h>
#include<stdlib.h>

%}

%%

S : A B 
| 
;

A : 'a' A 'b' 
| 
;

B : 'b' B 'c'
| 
;

%%


int main(){

printf("Enter the string:");

yyparse();

printf("\n Valid String\n");

return 0;

}


int yyerror(){

printf("\n Inavlid String \n");

exit(0);

}


