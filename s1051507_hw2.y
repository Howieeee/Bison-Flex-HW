%{ // definitions
  #include <stdio.h> 
  #include <stdlib.h>
  int yylex();
  int yyerror(const char *errormsg){ 
	fprintf(stderr, "%s\n", errormsg);
    exit(1);
  }
%}

%union { //共用記憶體區塊
	
	struct{ 
    int x;
    int y;
	int dx;
	int dy;
	}coordinate;
}

//nonterminal 宣告
%type<coordinate> L 
%type<coordinate> Seq
%type<coordinate> Instr
 
%token begin east north west south EOL //token宣告

%% 
//rules
L:
	    L Seq EOL { 
		printf("x:%d y:%d\n",$2.x,$2.y);
		}|{
		}
		;
Seq:
	    begin  {$$.x = 0; $$.y = 0;}
		|
		Seq Instr{$$.x = $1.x + $2.dx; $$.y = $1.y + $2.dy;}
        ;
Instr:
        east{$$.dx=1;$$.dy=0;}
		|
		north{$$.dx=0;$$.dy=1;}
		|
		west{$$.dx=-1;$$.dy=0;}
		|
		south{$$.dx=0;$$.dy=-1;}
        ;
%%
// user code
int main(void)
{
     yyparse();
     return 0;
}


