CC	?= gcc
MINGW_CC	?= i686-w64-mingw32-gcc

CFLAGS	= `pkg-config --cflags gtk+-3.0`
LDLIBS	= `pkg-config --libs gtk+-3.0`

MINGW_CFLAGS	= `i686-w64-mingw32-pkg-config --cflags gtk+-3.0`
MINGW_LDLIBS	= `i686-w64-mingw32-pkg-config --libs gtk+-3.0`

WEBKIT_CFLAGS	= `pkg-config --cflags gtk+-3.0 webkit2gtk-4.0`
WEBKIT_LDLIBS	= `pkg-config --libs gtk+-3.0 webkit2gtk-4.0`

ARTIFACT = example-0 example-1 example-2 example-3 example-3-1 example-3-2 \
	   example-webkit glade_test_1

MINGW_ARTIFACT = mingw_example-0 mingw_example-1 mingw_example-2 mingw_example-3 mingw_example-3-1 mingw_example-3-2 mingw_glade_test_1

all: $(ARTIFACT)

mingw: $(MINGW_ARTIFACT)

clean:
	rm -f *.o $(ARTIFACT) work/*

example-0: example-0.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LDLIBS)

example-1: example-1.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LDLIBS)

example-2: example-2.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LDLIBS)

example-3: example-3.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LDLIBS)
	cp builder.ui work/builder.ui

example-3-1: example-3-1.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LDLIBS)
	cp builder.ui work/builder.ui

example-3-2: example-3-2.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LDLIBS)
	cp builder.ui work/builder.ui

example-webkit: example-webkit.c
	$(CC) $(WEBKIT_CFLAGS) -o work/$@ $< $(WEBKIT_LDLIBS)

glade_test_1: glade_test_1.c
	$(CC) $(CFLAGS) -o work/$@ $< $(LDLIBS)
	cp picshower.glade work/picshower.glade
	cp output.png work/output.png

mingw_example-0: example-0.c
	$(MINGW_CC) $(MINGW_CFLAGS) -o work/$@ $< $(MINGW_LDLIBS)

mingw_example-1: example-1.c
	$(MINGW_CC) $(MINGW_CFLAGS) -o work/$@ $< $(MINGW_LDLIBS)

mingw_example-2: example-2.c
	$(MINGW_CC) $(MINGW_CFLAGS) -o work/$@ $< $(MINGW_LDLIBS)

mingw_example-3: example-3.c
	$(MINGW_CC) $(MINGW_CFLAGS) -o work/$@ $< $(MINGW_LDLIBS)
	cp builder.ui work/builder.ui

mingw_example-3-1: example-3-1.c
	$(MINGW_CC) $(MINGW_CFLAGS) -o work/$@ $< $(MINGW_LDLIBS)
	cp builder.ui work/builder.ui

mingw_example-3-2: example-3-2.c
	$(MINGW_CC) $(MINGW_CFLAGS) -o work/$@ $< $(MINGW_LDLIBS)
	cp builder.ui work/builder.ui

mingw_glade_test_1: glade_test_1.c
	$(MINGW_CC) $(MINGW_CFLAGS) -o work/$@ $< $(MINGW_LDLIBS)
	cp picshower.glade work/picshower.glade
	cp output.png work/output.png
