/***
DEFINITION SECTION
-Contains the declaration of variables, regular definitions, manifest constants
-Anything written here is copied directly to the file lex.yy.c
-Variables can be accessed inside yylex() and main()
***/
%{
int count = 0;
%}

CAPITAL 	[A-Z]

/***
RULES SECTION
-Contains a series of rules in the form: pattern action
***/
%%
{CAPITAL} 	{printf("%s capital letter\n", yytext);
			count++;}
. 		{printf("%s not a capital letter\n", yytext);}
\n 	{return 0;}
%%

/***
USER CODE SECTION
-Contains C statements and additional functions
***/
int yywrap(){}
int main() {

	yylex();
	printf("\nNumber of capital letters in the given input: %d\n", count);
	return 0;
}