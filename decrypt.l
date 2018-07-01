%{
#include <stdio.h>
#include<stdlib.h>
#include"decrypt.tab.h"
%}




%%
[1-9][a-zA-Z]+         {
    char s;
    s=yytext[yytext[0]-'0'];
    printf("c",s);
    return TEXT;
    }
0  {printf(" ");
    return SPACE;
    }
.                     {}
\n                    {
    printf("\n");
    return DONE;
}

%%
