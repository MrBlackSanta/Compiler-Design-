%{
#include "y.tab.h"
%}

%%
"if" {return IF;}
[sS] {return S;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
[0-9]+ {return NUMBER;}
"<"|"<="|">"|">="|"=="|"!=" {return RELOP;}
\n {return NL;}
. {return yytext[0];}
%%

