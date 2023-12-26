CFLAGS	= -std=c99 -Wall -Wextra -O3
LDFLAGS	=
LIBS	=

stripGarbage: stripGarbage.c
	gcc $(CFLAGS) $(LDFLAGS) -o $@ $< $(LIBS)

clean:
	rm -f stripGarbage
