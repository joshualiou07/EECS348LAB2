CC= gcc
CFLAGS= -c -Wall

all: prog

prog: main.o isOdd.o isEven.o
	$(CC) main.c isOdd.c isEven.c -o prog

main.o: main.c isOdd.h isEven.h
	$(CC) $(CFLAGS) main.c

isOdd.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) isOdd.c

isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) isEven.c

clean:
	rm -f main.o isOdd.o isEven.o prog