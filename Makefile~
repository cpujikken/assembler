all: assembler.c assembler2.c assembler3.c
	gcc -o assembler assembler.c
	gcc -o assembler2 assembler2.c
	gcc -o assembler3 assembler3.c

test: test.s
	./assembler2 test | ./assembler | ./assembler3 > test
