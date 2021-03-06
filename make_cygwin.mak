CFLAGS+=-O2 -W -Wall -Wno-unused -Wno-unused-parameter -use=gnu99 -shared
TARGET=lib/vimproc_cygwin.dll
SRC=src/proc.c
LDFLAGS+=-lutil

all: $(TARGET)

$(TARGET): $(SRC) src/vimstack.c
	gcc $(CFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

clean:
	rm -f $(TARGET)
