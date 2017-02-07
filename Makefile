all: assembler.c assembler2.c assembler3.c comment.c
	gcc -o assembler assembler.c
	gcc -o assembler2 assembler2.c
	gcc -o assembler3 assembler3.c
	gcc -o comment comment.c

test: example.s
	./assembler2 example a 2>example_label | ./assembler | ./assembler3 > example
	./comment < example.s > comment.s
