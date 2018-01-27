.SUFFIXES: .c .u

LIB = ../lib
GSLWRAP_LIB = ../gslwrap
OUTPUT_FILE ?= dtm
OPTFLAGS ?= -O2
STRIP ?= strip
CXXFLAGS += -I ${LIB} -I ${LIB}/math -I ${GSLWRAP_LIB}/include -I ${GSLWRAP_LIB}/include/gslwrap 

LDFLAGS += -lgsl -lm -lgslcblas -lgflags
EXTRA_LDFLAGS = 
LOBJECTS = ss-lm.o gsl-wrappers.o data.o param.o util.o lda-seq.o lda.o params.o main.o

all:	main

.c.o :
	$(CXX) $(CXXFLAGS) -c $<

main:	$(LOBJECTS)
	$(CXX) $(OPTFLAGS) $(CXXFLAGS) $(LOBJECTS) -o $(OUTPUT_FILE) $(LDFLAGS) $(EXTRA_LDFLAGS)
	$(STRIP) $(OUTPUT_FILE)

clean:
	-rm -f *.o

distclean: clean
	-rm -f $(OUTPUT_FILE) $(OUTPUT_FILE)-*
