CC = g++
OBJS = main.o cmdLineParser.o
DEBUG = -g
CFLAGS = -Wall -c -static -std=c++11 $(DEBUG) $(INC) $(LIB)
LFLAGS = -Wall -static -std=c++11 $(DEBUG) $(INC) $(LIB)

testParser: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o cmdParser $(LIBOBJS)

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

parser.o: cmdLineParser.cpp
	$(CC) $(CFLAGS) cmdLineParser.cpp

clean: 
	\rm *.o parser

