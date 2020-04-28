compiler.tab.c:compiler.y
	bison -d compiler.y

lex.yy.c:compiler.l compiler.tab.c
	flex compiler.l

compiler.tab.o:compiler.tab.c
	gcc compiler.tab.c -c

lex.yy.o:lex.yy.c
	gcc lex.yy.c -c

a.out:compiler.tab.o lex.yy.o
	gcc compiler.tab.o lex.yy.o -ll

run:a.out
	./a.out

clean:
	rm -r a.out *.c *.o *.h