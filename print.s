.start	min_caml_start
.data
.align	4
.align	4
.text
min_caml_start:
	MVI	%r0, $48	# test/ultrapc/print.ml#1:12->1:14
	PRINT	%r0	# test/ultrapc/print.ml#1:1->1:14
	LINK
