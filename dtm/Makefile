.SUFFIXES: .c .u
CC= g++

LIB=../lib
GSLWRAP_LIB=../gslwrap
LOCAL_DIR=../local

CFLAGS = -I ${LIB} -I ${LIB}/math -I ${GSLWRAP_LIB}/include -I	\
  ${GSLWRAP_LIB}/include/gslwrap -I ${LOCAL_DIR}/include -O2

GDB_CFLAGS = -ggdb -I ${LIB} -I ${LIB}/math -I ${GSLWRAP_LIB}/include	\
  -I ${GSLWRAP_LIB}/include/gslwrap -I ${LOCAL_DIR}/include

BASE_INCLUDES = -I ${LIB}

LDFLAGS = -L${LOCAL_DIR}/lib -L${LOCAL_DIR}/lib/stl -lgsl -lm -lgslcblas -lgflags
LOBJECTS = ss-lm.o gsl-wrappers.o data.o param.o util.o lda-seq.o	\
  lda.o params.o main.o

all:	main

main:	$(LOBJECTS)
	$(CC) $(CFLAGS) $(LOBJECTS) -o main $(LDFLAGS)

dbg:	$(LOBJECTS)
	$(CC) $(GDB_CFLAGS) $(LOBJECTS) -o main $(LDFLAGS)

clean:
	-rm -f *.o
	-rm -f main
