%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "header.h"
#include "y.tab.h"
using namespace std;

int yyerror(char*);
simple s,t;
int line_count=1;
%}



INCLUDE	#include<[a-z]+\.h>
WS [ \t]+
DIGIT [0-9]
NUMBER [-]?{DIGIT}+(\.{DIGIT}+)?
letter [A-Za-z]
id (_|{letter})(_|{letter}|{DIGIT})*



%%



"("   { return LPAREN; }
")"   { return RPAREN; }

"{"	  { return LCURL; }
"}"	  { return RCURL; }

";"  { return SEMICOLON; }
"=" {return ASSIGNOP;}

"main" {return MAIN;}

"int" {return INT;}

"printf" {return PRINTF;}

"," {return COMA;}

\".*\" {return LITERAL;}


"\n" {line_count++;}

{id} {
		s.ch=yytext;
		s.d = strlen(s.ch);
		yylval=(YYSTYPE)&s;
		return VARIABLE;}

{WS} { /* No action and no return */}

{NUMBER} {
	
	t.ch=yytext;
	t.d = strlen(t.ch);
	yylval=(YYSTYPE)&t;
	return NUMBER;
}


{INCLUDE}	{
		return INCLUDE;
	}





%%

int yywrap()
{
return -1;
}
