CC ?= gcc

CFLAGS	= `pkg-config --cflags gtk+-3.0 webkit2gtk-4.0`
LIBS	= `pkg-config --libs gtk+-3.0 webkit2gtk-4.0`

ARTIFACT = example-0 example-1 example-2 example-3 example-3-1 example-3-2 example-webkit

all: $(ARTIFACT)

clean:
	rm -f *.o $(ARTIFACT) work/*

example-0: example-0.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LIBS)

example-1: example-1.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LIBS)

example-2: example-2.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LIBS)

example-3: example-3.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LIBS)
	cp builder.ui work/builder.ui

example-3-1: example-3-1.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LIBS)
	cp builder.ui work/builder.ui

example-3-2: example-3-2.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LIBS)
	cp builder.ui work/builder.ui

example-webkit: example-webkit.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LIBS)
