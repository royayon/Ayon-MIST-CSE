%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "header.h"
#include <fstream>
#include <iostream>

using namespace std;

#define YYSTYPE simple*      /* yyparse() stack type */
int yyparse(void);
int yylex(void);

extern int line_count;
extern FILE *yyin, *yyout;
char* temp;
FILE * fp1,*fp2,*fp3,*code;
void yyerror(char *s)
{
	fprintf(stdout,"At Line %d, ERROR-> %s\n",line_count,s);
	return;
}
%}


%token  INCLUDE WS NUMBER VARIABLE INT MAIN LPAREN RPAREN LCURL RCURL SEMICOLON ASSIGNOP PRINTF LITERAL COMA


%%
Program: INCLUDE Line   { 
						char t1[100],t2[100];
						strcpy(t2,$2->ch);
						strcpy(t1,"DATA SEGMENT ");
						strcat(t1,t2);
						
						code=fopen("code.asm","w");
						fprintf(code,"%s",t1);
						}
						; 

Line: INT MAIN LPAREN RPAREN LCURL stmts RCURL  
						{$$ = new simple();
						char t1[100];
						strcpy(t1,"\nCODE SEGMENT ");
						
						char *mychar = (char*)malloc(100*sizeof(char));
						strcat(t1,$6->ch);
						strcpy(mychar,t1);
						$$->ch = mychar;

						}
						;
						
stmts: |stmt { $$ = new simple();
				char *mychar = (char*)malloc(100* sizeof(char));
				strcpy(mychar,$1->ch);
				$$->ch= mychar;
			  }
				     

		| stmts stmt { $$ = new simple();
						char *mychar= (char*)malloc(100*sizeof(char));
						strcpy(mychar,$1->ch);
						strcat(mychar,$2->ch);
						$$->ch= mychar;

					}
		;
						
stmt: INT VARIABLE SEMICOLON 
						{ 
						 $$ = new simple();
						 int len=(int)$2->d;
						 char t1[100],t2[100];
						 strcpy(t2,$2->ch);
						 t2[len]='\0';
						 strcpy(t1,"\n");
						 strcat(t1,t2);
						
						 strcat(t1," db ? ");
						 char *mychar= (char*)malloc(100*sizeof(char));
						 strcpy(mychar,t1);
						 $$->ch = mychar;
						
						} 
	| VARIABLE ASSIGNOP NUMBER SEMICOLON
						{ $$ = new simple();
						 char t2[100], t1[100], t3[100],t4[100];
						 
						 int len = (int) $1->d;
						 strcpy(t1, "\nMOV ");
						 strcpy(t4, $1->ch);
						 t4[len]='\0';
						 strcat(t1,t4);
						 strcat(t1," ,");
						 				
						 len = (int) $3->d;
						 strcpy(t3, $3->ch);
						 t3[len]='\0';
						 strcat(t1,t3);
						 
						 char *mychar = (char*)malloc(100*sizeof(char));
						 strcpy(mychar,t1);
						 $$->ch=mychar;
						
						}
	| PRINTF LPAREN LITERAL COMA VARIABLE RPAREN SEMICOLON 
						{
							 $$ = new simple();
							 char t2[100], t1[100], t3[100],t4[100];
							 
							 int len = (int) $5->d;
							 strcpy(t1, "\nMOV AX , ");
							 strcpy(t4, $5->ch);
							 t4[len]='\0';
							 strcat(t1,t4);
							 strcat(t1,"\nOUT AX");
							 
							 char *mychar= (char*)malloc(100*sizeof(char));
						     strcpy(mychar,t1);

							 $$->ch=mychar;
						}
	
	; 	

	

%%

int main(void){
	fp1=fopen("201714018_A.txt","r"); 	
	yyin=fp1;
	yyout=fp2;
	printf("START\n");
	yyparse();
	printf("END\n");
	fclose(fp1);
	fclose(fp2);
	return 0;
}
