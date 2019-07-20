%option noyywrap

%{
#include <stdio.h>
int word_count = 0;
int line_num=0;
%}

delim 			[  \t\n]
digit			[0-9]
letter          [A-Za-z]
id              {letter}+

%%
if {printf("<KEYWORD, %s>\n",yytext);}
then {printf("<KEYWORD, %s>\n",yytext);}
exit   {return 1;}
{id}	{printf("<ID, %s>,\n",yytext); word_count++;}
{delim}+ {}
{digit}+	{ printf("<Digit, %s>\n",yytext);}
%%

int main() {
yylex();
printf("Total Word: %d\n", word_count);

}
