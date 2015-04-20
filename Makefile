# Makefile for bastext -------------------------------------------------------
OBJS=main.o inmode.o outmode.o tokens.o tokenize.o dtokeniz.o select.o t64.o

# All targets ----------------------------------------------------------------
all: bastext

# Main executable ------------------------------------------------------------
bastext: $(OBJS)
	$(CC) -o bastext $(OBJS)

tokens.o: tokens.c tokens.h
	$(CC) -c tokens.c

tokenize.o: tokenize.c tokenize.h tokens.h
	$(CC) -c tokenize.c

dtokeniz.o: dtokeniz.c tokenize.h tokens.h
	$(CC) -c dtokeniz.c

main.o: main.c inmode.h outmode.h tokenize.h
	$(CC) -c main.c

inmode.o: inmode.c tokenize.h version.h inmode.h select.h t64.h
	$(CC) -c inmode.c

outmode.o: outmode.c tokenize.h version.h outmode.h select.h t64.h
	$(CC) -c outmode.c

select.o: select.c select.h tokenize.h
	$(CC) -c select.c

t64.o: t64.c t64.h
	$(CC) -c t64.c

# Cleanup --------------------------------------------------------------------
clean:
	-rm core *.o *~
