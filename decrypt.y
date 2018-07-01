%{
#include<stdlib.h>
#include<stdio.h>
#include<string.h>

char* message[100]={};
int count=0;
%}

%token TEXT
%token SPACE
%token DONE
%token EOL

%%

decrypt: DONE {printf("none message");}
 |text DONE{printf("text DONE");}
 |
 ;

text: TEXT text  {printf("%d",$1);count++;}
    | SPACE text {printf("space");}
    | DONE       {}
;

%%


main(int argc,char **argv){
    yyparse();
}

yyerror(char*s){

    fprintf(stderr,"error:%s\n",s);
}