.SUFFIXES: .c .u

LIB = ../lib
GSLWRAP_LIB = ../gslwrap
OUTPUT_FILE ?= dtm

CXXFLAGS += -I ${LIB} -I ${LIB}/math -I ${GSLWRAP_LIB}/include -I	\
  ${GSLWRAP_LIB}/include/gslwrap -O2

GDB_CFLAGS = -ggdb -I ${LIB} -I ${LIB}/math -I ${GSLWRAP_LIB}/include	\
  -I ${GSLWRAP_LIB}/include/gslwrap 

LDFLAGS += -lgsl -lm -lgslcblas -lgflags
LOBJECTS = ss-lm.o gsl-wrappers.o data.o param.o util.o lda-seq.o	\
  lda.o params.o main.o

all:	main

.c.o :
	$(CXX) $(CXXFLAGS) -c $<

main:	$(LOBJECTS)
	$(CXX) $(CFLAGS) $(LOBJECTS) -o $(OUTPUT_FILE) $(LDFLAGS)

dbg:	$(LOBJECTS)
	$(CXX) $(GDB_CFLAGS) $(LOBJECTS) -o $(OUTPUT_FILE) $(LDFLAGS)

clean:
	-rm -f *.o

distclean: clean
	-rm -f $(OUTPUT_FILE)-*
