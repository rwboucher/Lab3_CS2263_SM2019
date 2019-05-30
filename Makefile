
COMPILER = gcc

C_FLAGS = -Wall -Wextra

# prepend the command with '@' so that Make does not print the command before running it 
help:
	@printf "available command:\n"
	@printf "	make help               (this command)\n"
	@printf "	make LinkedList          (to build your C program)\n"
	@printf "	make test               (to run every test case)\n"

LinkedList: LinkedList.o
	$(COMPILER) $(C_FLAGS) -o LinkedList LinkedList.o 

LinkedList.o: LinkedList.c
	$(COMPILER) $(C_FLAGS) -c LinkedList.c

# Test Cases

test: test1 test2 test3

test1: LinkedList Data/test1.input 
	./LinkedList < Data/test1.input 

test2: LinkedList Data/test2.input 
	./LinkedList < Data/test2.input 

test3: LinkedList Data/test3.input 
	./LinkedList < Data/test3.input 

