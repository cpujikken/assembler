all: assembler.c assembler2.c assembler3.c
	gcc -o assembler assembler.c
	gcc -o assembler2 assembler2.c
	gcc -o assembler3 assembler3.c

test: example.s
	./assembler2 example | ./assembler | ./assembler3 > example
