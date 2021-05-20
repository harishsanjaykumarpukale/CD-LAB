%{
#include<stdio.h>
int p=0,n=0,pf=0,nf=0;
%}

%%
[+]?[0-9]+ {p++;}
[-][0-9]+ {n++;}
[+]?[0-9]*[.][0-9]+ {pf++;}
[-][0-9]*[.][0-9]+ {nf++;}
[-][0-9]*[.]?[0-9]+[/][-][0-9]*[.]?[0-9]+ {pf++;}
[+]?[0-9]*[.]?[0-9]+[/][+]?[0-9]*[.]?[0-9]+ {pf++;}
[+]?[0-9]*[.]?[0-9]+[/][-][0-9]*[.]?[0-9]+ {nf++;}
[-][0-9]*[.]?[0-9]+[/][+]?[0-9]*[.]?[0-9]+ {nf++;}
\n return 0;
%%

int main()
{
printf("Enter the numbers.\n");
yylex();
printf("\nPositive Integers: %d.\n",p);
printf("Negative Integers: %d.\n",n);
printf("Positive Fractions: %d.\n",pf);
printf("Negative Fractions: %d.\n",nf);
return 0;
}
