%{
int no_lines = 0;
int no_chars = 0;	
%}

%%
\n 		++no_lines;
. 		++no_chars;
end 	return 0;
%%

int yywrap(){}
int main(int argc, char **argv) {
	yylex();
	printf("Number of lines: %d \nNumber of chars: %d\n", no_lines, no_chars);
	return 0;
}