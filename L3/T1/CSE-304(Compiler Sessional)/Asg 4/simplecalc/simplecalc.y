%{

#include <stdio.h>

#include <stdlib.h>

#define YYSTYPE double          /* yyparse() stack type */


void yyerror(const char *s)	{ printf("%s\n",s);
 }


int yylex(void);


%}


%token NEWLINE NUMBER LPAREN RPAREN

%left PLUS MINUS

%left ASTERISK SLASH


%%

input:        /* empty string */
    
| input line
 ;

line: NEWLINE
    
| expr NEWLINE 		{ printf("\t%.10g\n",$1); }
 ;

expr: expr PLUS expr 	{ $$ = $1 + $3; }
	
| expr MINUS expr  		{ $$ = $1 - $3; }
   	
| expr ASTERISK expr 	{ $$ = $1 * $3; }
	
| expr SLASH expr 		{ 
	
				if($3 == 0)
		                                 {
 
			                		yyerror("Div error");
 
                                        		}
	
 		                                  else
		                                  {
	
                                                   		$$ = $1 / $3;
                                         
		}
                                 		 }
	
| MINUS expr 		 { $$ = -$2; }

| factor
 ;

factor:  LPAREN expr RPAREN  { $$ = $2; }
	  
| NUMBER
 ;

%%

int main()

{
    
yyparse();
return 1;
    
}
