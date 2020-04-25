CXX=g++
CFLAGS=-g -m32 -Wall
LDFLAGS=-lm

all: exec vTable

    exec: Main.o
	$(CXX) $(CFLAGS) $(LDFLAGS) -o $@ $^

    Main.o: Main.cpp
	$(CXX) $(CFLAGS) -o $@ -c $<

    vTable: Main.cpp
	$(CXX) $(CFLAGS) -fdump-lang-class Main.cpp
	#use -fdump-class-hierarchy for older g++ versions

clean:
	rm -f *.o *.out *.class exec

