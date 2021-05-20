%{
#include<stdio.h>
int w=0,c=0,l=0,whsp=0;
%}

%%

[\n] l++;

[ ] whsp++;

[\t] whsp += 3;

[a-zA-Z]+ { w++; c += yyleng;}

. ;

%%

int main(){

printf("Enter:");

yylex();

printf("words = %d chars = %d  lines = %d spaces = %d \n",w,c,l,whsp);

return 0;
}

