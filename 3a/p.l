%{

#include "y.tab.h"

%}


%%

"for" return FOR;

[-+=*/><;(){}] return yytext[0];

[_a-zA-Z][_a-zA-Z0-9]* return VAR;

[0-9]+ return NUM;

[ ] return SPACE; 

[ \t\n] ;

%%
