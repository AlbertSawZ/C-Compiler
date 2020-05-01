run:a.out
	./a.out

a.out:
	gcc example1.c

clean:
	rm a.out