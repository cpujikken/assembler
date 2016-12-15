.start	min_caml_start
.data
.align	4
.align	4
.text
loop.19:
	XOR	%r1, %r1, %r1	# 
	XOR	%r0, %r1	# 
	JZ	$if_eq.50	# 
	MVI	%r1, $30	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $8	# 
	JLINK	fib.17	# 
	ADDI	%rsp, %rsp, $-8	# 
	MV	%r1, %r0	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	SDR	%r1, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINK	min_caml_print_int	# 
	ADDI	%rsp, %rsp, $-16	# 
	LDR	%r1, %rsp, $8	# 
	LDR	%r0, %rsp, $12	# 
	SDR	%r1, %rsp, $16	# 
	SDR	%r0, %rsp, $20	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINK	min_caml_print_newline	# 
	ADDI	%rsp, %rsp, $-24	# 
	LDR	%r1, %rsp, $16	# 
	LDR	%r0, %rsp, $20	# 
	DEC	%r0	# 
	SDR	%r1, %rsp, $24	# 
	SDR	%r0, %rsp, $28	# 
	LDR	%r1, %rsp, $24	# 
	LDR	%r0, %rsp, $28	# 
	ADDI	%rsp, %rsp, $32	# 
	JLINK	loop.19	# 
	ADDI	%rsp, %rsp, $-32	# 
	J	$if_eq_cont.51	# 
if_eq.50:
if_eq_cont.51:
	LINK	# 
fib.17:
	MVI	%r1, $2	# 
	CMP	%r1, %r0	# 
	JZ	$if_lt.52	# 
	ADDI	%r1, %r0, $-1	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $8	# 
	JLINK	fib.17	# 
	ADDI	%rsp, %rsp, $-8	# 
	MV	%r1, %r0	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	ADDI	%r0, %r0, $-2	# 
	SDR	%r1, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINK	fib.17	# 
	ADDI	%rsp, %rsp, $-16	# 
	LDR	%r1, %rsp, $8	# 
	LDR	%r0, %rsp, $12	# 
	ADD	%r0, %r1, %r0	# 
	J	$if_lt_cont.53	# 
if_lt.52:
	MVI	%r0, $1	# 
if_lt_cont.53:
	LINK	# 
min_caml_start:
	MVI	%r0, $100	# 
	SDR	%r0, %rsp, $0	# 
	LDR	%r0, %rsp, $0	# 
	ADDI	%rsp, %rsp, $4	# 
	JLINK	loop.19	# 
	ADDI	%rsp, %rsp, $-4	# 
	LINK	# 
