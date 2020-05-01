run:a.out
	./a.out

a.out:compiler.tab.o lex.yy.o
	gcc compiler.tab.o lex.yy.o -ll

lex.yy.o:lex.yy.c
	gcc lex.yy.c -c

compiler.tab.o:compiler.tab.c
	gcc compiler.tab.c -c

lex.yy.c:compiler.l compiler.tab.c
	flex compiler.l	

compiler.tab.c:compiler.y
	bison -d compiler.y

clean:
	rm -r a.out *.c *.o *.h

#--------------------------------------------------------------------------------------------------
#PARA COMPILAR: 
#make
#make clean

#1: bison -d compiler.y
#2: flex compiler.l
#3: gcc *.c -c
	#3.1: gcc lex.yy.c -c
	#3.2: gcc compiler.tab.c -c
#4: gcc *.o -ll