CC = gcc

CFLAGS	= `pkg-config --cflags gtk+-3.0`
LIBS	= `pkg-config --libs gtk+-3.0`

ARTIFACT = example-0 example-1

all: $(ARTIFACT)

clean:
	rm -f *.o $(ARTIFACT) work/*

example-0: example-0.c
	gcc $(CFLAGS) -o work/$@ $< $(LIBS)

example-1: example-1.c
	gcc $(CFLAGS) -o work/$@ $< $(LIBS)
