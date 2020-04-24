#include <stdio.h>
#include <text.h>

int main() {
	printf("%s!", TEXT);
}

/*
make.rules:
Aquí se definen variables de entorno para buscar ficheros de cabecera, librerías, etc.

CFLAGS: 
Puede contener opciones que queramos que se pasen al compilador.
-g: debugger
-I: permite pasar paths de búsqueda para ficheros de cabecera.

Ejemplo:
CFLAGS=-I../FUNCION1; export CFLAGS;

$ CFLAGS=-I../FUNCION1; export CFLAGS
$ make HelloWorld
*/