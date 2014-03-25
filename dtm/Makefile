.SUFFIXES: .c .u

LIB = ../lib
GSLWRAP_LIB = ../gslwrap
OUTPUT_FILE ?= dtm

CXXFLAGS += -I ${LIB} -I ${LIB}/math -I ${GSLWRAP_LIB}/include -I	\
  ${GSLWRAP_LIB}/include/gslwrap -O2 -I /usr/darwinx/usr/include/

GDB_CFLAGS = -ggdb -I ${LIB} -I ${LIB}/math -I ${GSLWRAP_LIB}/include	\
  -I ${GSLWRAP_LIB}/include/gslwrap 

LDFLAGS += -lgsl -lm -lgslcblas -lgflags
# LDFLAGS_STATIC += /usr/local/lib/libgflags_nothreads.a -lm /usr/local/lib/libgslcblas.a /usr/local/lib/libgsl.a
LDFLAGS_STATIC += $(LDFLAGS) -static
LOBJECTS = ss-lm.o gsl-wrappers.o data.o param.o util.o lda-seq.o	\
  lda.o params.o main.o

all:	main

.c.o :
	$(CXX) $(CXXFLAGS) -c $<

main:	$(LOBJECTS)
	$(CXX) $(CXXFLAGS) $(LOBJECTS) -o $(OUTPUT_FILE) $(LDFLAGS)

main-static: main
	$(CXX) $(CXXFLAGS) $(LOBJECTS) -o $(OUTPUT_FILE) $(LDFLAGS_STATIC)

main-static-darwinx: $(LOBJECTS)
	$(CXX) $(CXXFLAGS) $(LOBJECTS) -o $(OUTPUT_FILE) $(LDFLAGS_STATIC) -L /usr/darwinx/usr/lib


dbg:	$(LOBJECTS)
	$(CXX) $(GDB_CFLAGS) $(LOBJECTS) -o $(OUTPUT_FILE) $(LDFLAGS)

clean:
	-rm -f *.o

distclean: clean
	-rm -f $(OUTPUT_FILE)-*
