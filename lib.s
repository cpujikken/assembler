.data
.align	4
min_caml_l.1032:	#5.497787 
	.long	40afeddf
min_caml_l.1031:	#4.712389 
	.long	4096cbe4
min_caml_l.1030:	#3.926991 
	.long	407b53d1
min_caml_l.1029:	#3.141593 
	.long	40490fdb
min_caml_l.1028:	#2.356194 
	.long	4016cbe4
min_caml_l.1027:	#1.570796 
	.long	3fc90fdb
min_caml_l.1026:	#8.000000 
	.long	41000000
min_caml_l.1025:	#6.283185 
	.long	40c90fdb
min_caml_l.1024:	#24.000000 
	.long	41c00000
min_caml_l.1023:	#720.000000 
	.long	44340000
min_caml_l.1022:	#40320.000000 
	.long	471d8000
min_caml_l.1021:	#6.000000 
	.long	40c00000
min_caml_l.1020:	#5040.000000 
	.long	459d8000
min_caml_l.1019:	#120.000000 
	.long	42f00000
min_caml_l.1018:	#0.785398 
	.long	3f490fdb
min_caml_l.1017:	#1.570796 
	.long	3fc90fdb
min_caml_l.1010:	#-0.000000 
	.long	7fffffffb3d6bf95
min_caml_l.1009:	#0.000000 
	.long	33d6bf95
min_caml_l.996:	#1.000000 
	.long	3f800000
min_caml_l.995:	#0.000000 
	.long	0
min_caml_l.994:	#2.000000 
	.long	40000000
.align	4
.text
min_caml_print_space.487:
	MVI	%r0, $32	# 
	PRINT	%r0	# 
	LINK	# 
min_caml_print_newline.484:
	MVI	%r0, $10	# 
	PRINT	%r0	# 
	LINK	# 
min_caml_print_int.481:
	MVI	%r1, $1	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	ADDI	%rsp, %rsp, $8	# 
	JLINK	print_loop.504	# 
	ADDI	%rsp, %rsp, $-8	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	SDR	%r0, %rsp, $8	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINK	z.499	# 
	ADDI	%rsp, %rsp, $-12	# 
	LDR	%r0, %rsp, $8	# 
	LINK	# 
min_caml_print_loop.504:
	SDR	%r10, %rsp, $0	# 
	SDR	%r1, %rsp, $4	# 
	SDR	%r0, %rsp, $8	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-12	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $4	# 
	LDR	%r0, %rsp, $8	# 
	SDR	%r1, %rsp, $12	# 
	SDR	%r0, %rsp, $16	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $20	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-20	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $12	# 
	LDR	%r0, %rsp, $16	# 
	SDR	%r1, %rsp, $20	# 
	SDR	%r0, %rsp, $24	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $28	# 
	JLINK	half.497	# 
	ADDI	%rsp, %rsp, $-28	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $20	# 
	LDR	%r0, %rsp, $24	# 
	ADD	%r10, %r10, %r1	# 
	ADD	%r10, %r10, %r1	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1316	# 
	SDR	%r1, %rsp, $28	# 
	SDR	%r0, %rsp, $32	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $36	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-36	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $28	# 
	LDR	%r0, %rsp, $32	# 
	SDR	%r1, %rsp, $36	# 
	SDR	%r0, %rsp, $40	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $44	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-44	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $36	# 
	LDR	%r0, %rsp, $40	# 
	SDR	%r1, %rsp, $44	# 
	SDR	%r0, %rsp, $48	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $52	# 
	JLINK	half.497	# 
	ADDI	%rsp, %rsp, $-52	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $44	# 
	LDR	%r0, %rsp, $48	# 
	ADD	%r10, %r10, %r1	# 
	ADD	%r10, %r10, %r1	# 
	SDR	%r1, %rsp, $52	# 
	SDR	%r0, %rsp, $56	# 
	MV	%r1, %r10	# 
	ADDI	%rsp, %rsp, $60	# 
	JLINK	print_loop.504	# 
	ADDI	%rsp, %rsp, $-60	# 
	LDR	%r1, %rsp, $52	# 
	LDR	%r0, %rsp, $56	# 
	SDR	%r1, %rsp, $60	# 
	SDR	%r0, %rsp, $64	# 
	LDR	%r1, %rsp, $60	# 
	LDR	%r0, %rsp, $64	# 
	ADDI	%rsp, %rsp, $68	# 
	JLINK	print_int_sub.501	# 
	ADDI	%rsp, %rsp, $-68	# 
	J	$min_caml_if_lt_cont.1317	# 
min_caml_if_lt.1316:
	SDR	%r1, %rsp, $68	# 
	SDR	%r0, %rsp, $72	# 
	LDR	%r1, %rsp, $68	# 
	LDR	%r0, %rsp, $72	# 
	ADDI	%rsp, %rsp, $76	# 
	JLINK	print_int_sub.501	# 
	ADDI	%rsp, %rsp, $-76	# 
min_caml_if_lt_cont.1317:
	LDR	%r10, %rsp, $0	# 
	LINK	# 
min_caml_print_int_sub.501:
	SDR	%r10, %rsp, $0	# 
	CMP	%r1, %r0	# 
	JZ	$min_caml_if_lt.1318	# 
	ADD	%r10, %r1, %r1	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1320	# 
	ADD	%r10, %r10, %r1	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1322	# 
	SDR	%r1, %rsp, $4	# 
	SDR	%r0, %rsp, $8	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-12	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $4	# 
	LDR	%r0, %rsp, $8	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1324	# 
	SDR	%r1, %rsp, $12	# 
	SDR	%r0, %rsp, $16	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $20	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-20	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $12	# 
	LDR	%r0, %rsp, $16	# 
	ADD	%r10, %r10, %r1	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1326	# 
	SDR	%r1, %rsp, $20	# 
	SDR	%r0, %rsp, $24	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $28	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-28	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $20	# 
	LDR	%r0, %rsp, $24	# 
	ADD	%r10, %r10, %r1	# 
	ADD	%r10, %r10, %r1	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1328	# 
	SDR	%r1, %rsp, $28	# 
	SDR	%r0, %rsp, $32	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $36	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-36	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $28	# 
	LDR	%r0, %rsp, $32	# 
	ADD	%r10, %r10, %r1	# 
	ADD	%r10, %r10, %r1	# 
	ADD	%r10, %r10, %r1	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1330	# 
	SDR	%r1, %rsp, $36	# 
	SDR	%r0, %rsp, $40	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $44	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-44	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $36	# 
	LDR	%r0, %rsp, $40	# 
	SDR	%r1, %rsp, $44	# 
	SDR	%r0, %rsp, $48	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $52	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-52	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $44	# 
	LDR	%r0, %rsp, $48	# 
	SDR	%r1, %rsp, $52	# 
	SDR	%r0, %rsp, $56	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $60	# 
	JLINK	half.497	# 
	ADDI	%rsp, %rsp, $-60	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $52	# 
	LDR	%r0, %rsp, $56	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1332	# 
	SDR	%r1, %rsp, $60	# 
	SDR	%r0, %rsp, $64	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $68	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-68	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $60	# 
	LDR	%r0, %rsp, $64	# 
	SDR	%r1, %rsp, $68	# 
	SDR	%r0, %rsp, $72	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $76	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-76	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $68	# 
	LDR	%r0, %rsp, $72	# 
	SDR	%r1, %rsp, $76	# 
	SDR	%r0, %rsp, $80	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $84	# 
	JLINK	half.497	# 
	ADDI	%rsp, %rsp, $-84	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $76	# 
	LDR	%r0, %rsp, $80	# 
	ADD	%r10, %r10, %r1	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1334	# 
	SDR	%r1, %rsp, $84	# 
	SDR	%r0, %rsp, $88	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $92	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-92	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $84	# 
	LDR	%r0, %rsp, $88	# 
	SDR	%r1, %rsp, $92	# 
	SDR	%r0, %rsp, $96	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $100	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-100	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $92	# 
	LDR	%r0, %rsp, $96	# 
	SDR	%r1, %rsp, $100	# 
	SDR	%r0, %rsp, $104	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $108	# 
	JLINK	half.497	# 
	ADDI	%rsp, %rsp, $-108	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $100	# 
	LDR	%r0, %rsp, $104	# 
	SUB	%r0, %r0, %r10	# 
	SUB	%r0, %r0, %r1	# 
	J	$min_caml_if_lt_cont.1335	# 
min_caml_if_lt.1334:
	SDR	%r1, %rsp, $108	# 
	SDR	%r0, %rsp, $112	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $116	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-116	# 
	MV	%r1, %r0	# 
	LDR	%r1, %rsp, $108	# 
	LDR	%r0, %rsp, $112	# 
	SDR	%r1, %rsp, $116	# 
	SDR	%r0, %rsp, $120	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $124	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-124	# 
	MV	%r1, %r0	# 
	LDR	%r1, %rsp, $116	# 
	LDR	%r0, %rsp, $120	# 
	SDR	%r1, %rsp, $124	# 
	SDR	%r0, %rsp, $128	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $132	# 
	JLINK	half.497	# 
	ADDI	%rsp, %rsp, $-132	# 
	MV	%r1, %r0	# 
	LDR	%r1, %rsp, $124	# 
	LDR	%r0, %rsp, $128	# 
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1335:
	J	$min_caml_if_lt_cont.1333	# 
min_caml_if_lt.1332:
	SDR	%r1, %rsp, $132	# 
	SDR	%r0, %rsp, $136	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $140	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-140	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $132	# 
	LDR	%r0, %rsp, $136	# 
	SUB	%r0, %r0, %r10	# 
	SUB	%r0, %r0, %r1	# 
	SUB	%r0, %r0, %r1	# 
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1333:
	J	$min_caml_if_lt_cont.1331	# 
min_caml_if_lt.1330:
	SDR	%r1, %rsp, $140	# 
	SDR	%r0, %rsp, $144	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $148	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-148	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $140	# 
	LDR	%r0, %rsp, $144	# 
	SUB	%r0, %r0, %r10	# 
	SUB	%r0, %r0, %r1	# 
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1331:
	J	$min_caml_if_lt_cont.1329	# 
min_caml_if_lt.1328:
	SDR	%r1, %rsp, $148	# 
	SDR	%r0, %rsp, $152	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $156	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-156	# 
	MV	%r10, %r0	# 
	LDR	%r1, %rsp, $148	# 
	LDR	%r0, %rsp, $152	# 
	SUB	%r0, %r0, %r10	# 
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1329:
	J	$min_caml_if_lt_cont.1327	# 
min_caml_if_lt.1326:
	SDR	%r1, %rsp, $156	# 
	SDR	%r0, %rsp, $160	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $164	# 
	JLINK	four.495	# 
	ADDI	%rsp, %rsp, $-164	# 
	MV	%r1, %r0	# 
	LDR	%r1, %rsp, $156	# 
	LDR	%r0, %rsp, $160	# 
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1327:
	J	$min_caml_if_lt_cont.1325	# 
min_caml_if_lt.1324:
	SUB	%r0, %r0, %r1	# 
	SUB	%r0, %r0, %r1	# 
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1325:
	J	$min_caml_if_lt_cont.1323	# 
min_caml_if_lt.1322:
	SUB	%r0, %r0, %r1	# 
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1323:
	J	$min_caml_if_lt_cont.1321	# 
min_caml_if_lt.1320:
	SUB	%r0, %r0, %r1	# 
min_caml_if_lt_cont.1321:
	J	$min_caml_if_lt_cont.1319	# 
min_caml_if_lt.1318:
	LDA	%r0, $min_caml_n.502	# 
min_caml_if_lt_cont.1319:
	LDR	%r10, %rsp, $0	# 
	LINK	# 
min_caml_z.499:
	LINK	# 
min_caml_half.497:
	MVI	%r1, $2	# 
	DIV	%r0, %r0, %r1	# 
	LINK	# 
min_caml_four.495:
	MVI	%r1, $4	# 
	MUL	%r0, %r0, %r1	# 
	LINK	# 
min_caml_sin.478:
	FLDA	%fr1, $min_caml_l.1025	# 
	FDIV	%fr1, %fr0, %fr1	# 
	SDR	%r0, %rsp, $0	# 
	FSDR	%fr1, %rsp, $4	# 
	FSDR	%fr0, %rsp, $8	# 
	FMV	%fr0, %fr1	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINK	floor.466	# 
	ADDI	%rsp, %rsp, $-12	# 
	LDR	%r0, %rsp, $0	# 
	FLDR	%fr1, %rsp, $4	# 
	FLDR	%fr0, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	FSDR	%fr1, %rsp, $16	# 
	FSDR	%fr0, %rsp, $20	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-24	# 
	FMV	%fr1, %fr0	# 
	LDR	%r0, %rsp, $12	# 
	FLDR	%fr1, %rsp, $16	# 
	FLDR	%fr0, %rsp, $20	# 
	FLDA	%fr10, $min_caml_l.1018	# 
	FMUL	%fr10, %fr1, %fr10	# 
	FLDA	%fr1, $min_caml_l.1026	# 
	FMUL	%fr1, %fr10, %fr1	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FLDA	%fr1, $min_caml_l.1018	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1336	# 
	FLDA	%fr1, $min_caml_l.1027	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1338	# 
	FLDA	%fr1, $min_caml_l.1028	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1340	# 
	FLDA	%fr1, $min_caml_l.1029	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1342	# 
	FLDA	%fr1, $min_caml_l.1030	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1344	# 
	FLDA	%fr1, $min_caml_l.1031	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1346	# 
	FLDA	%fr1, $min_caml_l.1032	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1348	# 
	FLDA	%fr1, $min_caml_l.1025	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $24	# 
	FSDR	%fr0, %rsp, $28	# 
	ADDI	%rsp, %rsp, $32	# 
	JLINK	sinsub.585	# 
	ADDI	%rsp, %rsp, $-32	# 
	FLDR	%fr1, %rsp, $24	# 
	FLDR	%fr0, %rsp, $28	# 
	FNEG1	%fr0	# 
	J	$min_caml_if_flt_cont.1349	# 
min_caml_if_flt.1348:
	FLDA	%fr1, $min_caml_l.1031	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FSDR	%fr1, %rsp, $32	# 
	FSDR	%fr0, %rsp, $36	# 
	ADDI	%rsp, %rsp, $40	# 
	JLINK	cossub.587	# 
	ADDI	%rsp, %rsp, $-40	# 
	FLDR	%fr1, %rsp, $32	# 
	FLDR	%fr0, %rsp, $36	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1349:
	J	$min_caml_if_flt_cont.1347	# 
min_caml_if_flt.1346:
	FLDA	%fr1, $min_caml_l.1031	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $40	# 
	FSDR	%fr0, %rsp, $44	# 
	ADDI	%rsp, %rsp, $48	# 
	JLINK	cossub.587	# 
	ADDI	%rsp, %rsp, $-48	# 
	FLDR	%fr1, %rsp, $40	# 
	FLDR	%fr0, %rsp, $44	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1347:
	J	$min_caml_if_flt_cont.1345	# 
min_caml_if_flt.1344:
	FLDA	%fr1, $min_caml_l.1029	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FSDR	%fr1, %rsp, $48	# 
	FSDR	%fr0, %rsp, $52	# 
	ADDI	%rsp, %rsp, $56	# 
	JLINK	sinsub.585	# 
	ADDI	%rsp, %rsp, $-56	# 
	FLDR	%fr1, %rsp, $48	# 
	FLDR	%fr0, %rsp, $52	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1345:
	J	$min_caml_if_flt_cont.1343	# 
min_caml_if_flt.1342:
	FLDA	%fr1, $min_caml_l.1029	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $56	# 
	FSDR	%fr0, %rsp, $60	# 
	FLDR	%fr1, %rsp, $56	# 
	FLDR	%fr0, %rsp, $60	# 
	ADDI	%rsp, %rsp, $64	# 
	JLINK	sinsub.585	# 
	ADDI	%rsp, %rsp, $-64	# 
min_caml_if_flt_cont.1343:
	J	$min_caml_if_flt_cont.1341	# 
min_caml_if_flt.1340:
	FLDA	%fr1, $min_caml_l.1027	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FSDR	%fr1, %rsp, $64	# 
	FSDR	%fr0, %rsp, $68	# 
	FLDR	%fr1, %rsp, $64	# 
	FLDR	%fr0, %rsp, $68	# 
	ADDI	%rsp, %rsp, $72	# 
	JLINK	cossub.587	# 
	ADDI	%rsp, %rsp, $-72	# 
min_caml_if_flt_cont.1341:
	J	$min_caml_if_flt_cont.1339	# 
min_caml_if_flt.1338:
	FLDA	%fr1, $min_caml_l.1027	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $72	# 
	FSDR	%fr0, %rsp, $76	# 
	FLDR	%fr1, %rsp, $72	# 
	FLDR	%fr0, %rsp, $76	# 
	ADDI	%rsp, %rsp, $80	# 
	JLINK	cossub.587	# 
	ADDI	%rsp, %rsp, $-80	# 
min_caml_if_flt_cont.1339:
	J	$min_caml_if_flt_cont.1337	# 
min_caml_if_flt.1336:
	FSDR	%fr1, %rsp, $80	# 
	FSDR	%fr0, %rsp, $84	# 
	FLDR	%fr1, %rsp, $80	# 
	FLDR	%fr0, %rsp, $84	# 
	ADDI	%rsp, %rsp, $88	# 
	JLINK	sinsub.585	# 
	ADDI	%rsp, %rsp, $-88	# 
min_caml_if_flt_cont.1337:
	LINK	# 
min_caml_cossub.587:
	FMUL	%fr12, %fr0, %fr0	# 
	FMUL	%fr1, %fr12, %fr0	# 
	FMUL	%fr11, %fr1, %fr0	# 
	FMUL	%fr1, %fr11, %fr0	# 
	FMUL	%fr10, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.1022	# 
	FDIV	%fr1, %fr10, %fr0	# 
	FLDA	%fr0, $min_caml_l.1023	# 
	FDIV	%fr0, %fr10, %fr0	# 
	FSUB	%fr1, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.1024	# 
	FDIV	%fr0, %fr11, %fr0	# 
	FADD	%fr1, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.994	# 
	FDIV	%fr0, %fr12, %fr0	# 
	FSUB	%fr1, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.996	# 
	FADD	%fr0, %fr1, %fr0	# 
	LINK	# 
min_caml_sinsub.585:
	FMUL	%fr1, %fr0, %fr0	# 
	FMUL	%fr12, %fr1, %fr0	# 
	FMUL	%fr1, %fr12, %fr0	# 
	FMUL	%fr1, %fr1, %fr0	# 
	FLDA	%fr10, $min_caml_l.1019	# 
	FDIV	%fr11, %fr1, %fr10	# 
	FMUL	%fr1, %fr1, %fr0	# 
	FMUL	%fr10, %fr1, %fr0	# 
	FLDA	%fr1, $min_caml_l.1020	# 
	FDIV	%fr1, %fr10, %fr1	# 
	FSUB	%fr10, %fr11, %fr1	# 
	FLDA	%fr1, $min_caml_l.1021	# 
	FDIV	%fr1, %fr12, %fr1	# 
	FSUB	%fr1, %fr10, %fr1	# 
	FADD	%fr0, %fr1, %fr0	# 
	LINK	# 
min_caml_cos.475:
	FLDA	%fr1, $min_caml_l.1025	# 
	FDIV	%fr1, %fr0, %fr1	# 
	SDR	%r0, %rsp, $0	# 
	FSDR	%fr1, %rsp, $4	# 
	FSDR	%fr0, %rsp, $8	# 
	FMV	%fr0, %fr1	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINK	floor.466	# 
	ADDI	%rsp, %rsp, $-12	# 
	LDR	%r0, %rsp, $0	# 
	FLDR	%fr1, %rsp, $4	# 
	FLDR	%fr0, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	FSDR	%fr1, %rsp, $16	# 
	FSDR	%fr0, %rsp, $20	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-24	# 
	FMV	%fr1, %fr0	# 
	LDR	%r0, %rsp, $12	# 
	FLDR	%fr1, %rsp, $16	# 
	FLDR	%fr0, %rsp, $20	# 
	FLDA	%fr10, $min_caml_l.1018	# 
	FMUL	%fr10, %fr1, %fr10	# 
	FLDA	%fr1, $min_caml_l.1026	# 
	FMUL	%fr1, %fr10, %fr1	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FLDA	%fr1, $min_caml_l.1018	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1350	# 
	FLDA	%fr1, $min_caml_l.1027	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1352	# 
	FLDA	%fr1, $min_caml_l.1028	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1354	# 
	FLDA	%fr1, $min_caml_l.1029	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1356	# 
	FLDA	%fr1, $min_caml_l.1030	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1358	# 
	FLDA	%fr1, $min_caml_l.1031	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1360	# 
	FLDA	%fr1, $min_caml_l.1032	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1362	# 
	FLDA	%fr1, $min_caml_l.1025	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $24	# 
	FSDR	%fr0, %rsp, $28	# 
	FLDR	%fr1, %rsp, $24	# 
	FLDR	%fr0, %rsp, $28	# 
	ADDI	%rsp, %rsp, $32	# 
	JLINK	cossub.700	# 
	ADDI	%rsp, %rsp, $-32	# 
	J	$min_caml_if_flt_cont.1363	# 
min_caml_if_flt.1362:
	FLDA	%fr1, $min_caml_l.1031	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FSDR	%fr1, %rsp, $32	# 
	FSDR	%fr0, %rsp, $36	# 
	FLDR	%fr1, %rsp, $32	# 
	FLDR	%fr0, %rsp, $36	# 
	ADDI	%rsp, %rsp, $40	# 
	JLINK	sinsub.698	# 
	ADDI	%rsp, %rsp, $-40	# 
min_caml_if_flt_cont.1363:
	J	$min_caml_if_flt_cont.1361	# 
min_caml_if_flt.1360:
	FLDA	%fr1, $min_caml_l.1031	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $40	# 
	FSDR	%fr0, %rsp, $44	# 
	ADDI	%rsp, %rsp, $48	# 
	JLINK	sinsub.698	# 
	ADDI	%rsp, %rsp, $-48	# 
	FLDR	%fr1, %rsp, $40	# 
	FLDR	%fr0, %rsp, $44	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1361:
	J	$min_caml_if_flt_cont.1359	# 
min_caml_if_flt.1358:
	FLDA	%fr1, $min_caml_l.1029	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FSDR	%fr1, %rsp, $48	# 
	FSDR	%fr0, %rsp, $52	# 
	ADDI	%rsp, %rsp, $56	# 
	JLINK	cossub.700	# 
	ADDI	%rsp, %rsp, $-56	# 
	FLDR	%fr1, %rsp, $48	# 
	FLDR	%fr0, %rsp, $52	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1359:
	J	$min_caml_if_flt_cont.1357	# 
min_caml_if_flt.1356:
	FLDA	%fr1, $min_caml_l.1029	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $56	# 
	FSDR	%fr0, %rsp, $60	# 
	ADDI	%rsp, %rsp, $64	# 
	JLINK	cossub.700	# 
	ADDI	%rsp, %rsp, $-64	# 
	FLDR	%fr1, %rsp, $56	# 
	FLDR	%fr0, %rsp, $60	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1357:
	J	$min_caml_if_flt_cont.1355	# 
min_caml_if_flt.1354:
	FLDA	%fr1, $min_caml_l.1027	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FSDR	%fr1, %rsp, $64	# 
	FSDR	%fr0, %rsp, $68	# 
	ADDI	%rsp, %rsp, $72	# 
	JLINK	sinsub.698	# 
	ADDI	%rsp, %rsp, $-72	# 
	FLDR	%fr1, %rsp, $64	# 
	FLDR	%fr0, %rsp, $68	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1355:
	J	$min_caml_if_flt_cont.1353	# 
min_caml_if_flt.1352:
	FLDA	%fr1, $min_caml_l.1027	# 
	FSUB	%fr0, %fr1, %fr0	# 
	FSDR	%fr1, %rsp, $72	# 
	FSDR	%fr0, %rsp, $76	# 
	FLDR	%fr1, %rsp, $72	# 
	FLDR	%fr0, %rsp, $76	# 
	ADDI	%rsp, %rsp, $80	# 
	JLINK	sinsub.698	# 
	ADDI	%rsp, %rsp, $-80	# 
min_caml_if_flt_cont.1353:
	J	$min_caml_if_flt_cont.1351	# 
min_caml_if_flt.1350:
	FSDR	%fr1, %rsp, $80	# 
	FSDR	%fr0, %rsp, $84	# 
	FLDR	%fr1, %rsp, $80	# 
	FLDR	%fr0, %rsp, $84	# 
	ADDI	%rsp, %rsp, $88	# 
	JLINK	cossub.700	# 
	ADDI	%rsp, %rsp, $-88	# 
min_caml_if_flt_cont.1351:
	LINK	# 
min_caml_cossub.700:
	FMUL	%fr12, %fr0, %fr0	# 
	FMUL	%fr1, %fr12, %fr0	# 
	FMUL	%fr11, %fr1, %fr0	# 
	FMUL	%fr1, %fr11, %fr0	# 
	FMUL	%fr10, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.1022	# 
	FDIV	%fr1, %fr10, %fr0	# 
	FLDA	%fr0, $min_caml_l.1023	# 
	FDIV	%fr0, %fr10, %fr0	# 
	FSUB	%fr1, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.1024	# 
	FDIV	%fr0, %fr11, %fr0	# 
	FADD	%fr1, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.994	# 
	FDIV	%fr0, %fr12, %fr0	# 
	FSUB	%fr1, %fr1, %fr0	# 
	FLDA	%fr0, $min_caml_l.996	# 
	FADD	%fr0, %fr1, %fr0	# 
	LINK	# 
min_caml_sinsub.698:
	FMUL	%fr1, %fr0, %fr0	# 
	FMUL	%fr12, %fr1, %fr0	# 
	FMUL	%fr1, %fr12, %fr0	# 
	FMUL	%fr1, %fr1, %fr0	# 
	FLDA	%fr10, $min_caml_l.1019	# 
	FDIV	%fr11, %fr1, %fr10	# 
	FMUL	%fr1, %fr1, %fr0	# 
	FMUL	%fr10, %fr1, %fr0	# 
	FLDA	%fr1, $min_caml_l.1020	# 
	FDIV	%fr1, %fr10, %fr1	# 
	FSUB	%fr10, %fr11, %fr1	# 
	FLDA	%fr1, $min_caml_l.1021	# 
	FDIV	%fr1, %fr12, %fr1	# 
	FSUB	%fr1, %fr10, %fr1	# 
	FADD	%fr0, %fr1, %fr0	# 
	LINK	# 
min_caml_arctan.472:
	FLDA	%fr1, $min_caml_l.995	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1364	# 
	FLDA	%fr1, $min_caml_l.994	# 
	SDR	%r0, %rsp, $0	# 
	FSDR	%fr1, %rsp, $4	# 
	FSDR	%fr0, %rsp, $8	# 
	FMV	%fr0, %fr1	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINK	sqrt.469	# 
	ADDI	%rsp, %rsp, $-12	# 
	FMV	%fr10, %fr0	# 
	LDR	%r0, %rsp, $0	# 
	FLDR	%fr1, %rsp, $4	# 
	FLDR	%fr0, %rsp, $8	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FSUB	%fr1, %fr10, %fr1	# 
	FCMP	%fr0, %fr1	# 
	FJLT	$min_caml_if_flt.1366	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FCMP	%fr0, %fr1	# 
	FJLT	$min_caml_if_flt.1368	# 
	FLDA	%fr1, $min_caml_l.994	# 
	SDR	%r0, %rsp, $12	# 
	FSDR	%fr1, %rsp, $16	# 
	FSDR	%fr0, %rsp, $20	# 
	FMV	%fr0, %fr1	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINK	sqrt.469	# 
	ADDI	%rsp, %rsp, $-24	# 
	FMV	%fr10, %fr0	# 
	LDR	%r0, %rsp, $12	# 
	FLDR	%fr1, %rsp, $16	# 
	FLDR	%fr0, %rsp, $20	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FADD	%fr1, %fr10, %fr1	# 
	FCMP	%fr0, %fr1	# 
	FJLT	$min_caml_if_flt.1370	# 
	FLDA	%fr10, $min_caml_l.1017	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FDIV	%fr0, %fr1, %fr0	# 
	MVI	%r0, $100	# 
	SDR	%r0, %rsp, $24	# 
	FSDR	%fr1, %rsp, $28	# 
	FSDR	%fr0, %rsp, $32	# 
	ADDI	%rsp, %rsp, $36	# 
	JLINK	arctansub.813	# 
	ADDI	%rsp, %rsp, $-36	# 
	LDR	%r0, %rsp, $24	# 
	FLDR	%fr1, %rsp, $28	# 
	FLDR	%fr0, %rsp, $32	# 
	FSUB	%fr0, %fr10, %fr0	# 
	J	$min_caml_if_flt_cont.1371	# 
min_caml_if_flt.1370:
	FLDA	%fr11, $min_caml_l.1018	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FSUB	%fr10, %fr0, %fr1	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FADD	%fr0, %fr0, %fr1	# 
	FDIV	%fr0, %fr10, %fr0	# 
	MVI	%r0, $100	# 
	SDR	%r0, %rsp, $36	# 
	FSDR	%fr1, %rsp, $40	# 
	FSDR	%fr0, %rsp, $44	# 
	ADDI	%rsp, %rsp, $48	# 
	JLINK	arctansub.813	# 
	ADDI	%rsp, %rsp, $-48	# 
	LDR	%r0, %rsp, $36	# 
	FLDR	%fr1, %rsp, $40	# 
	FLDR	%fr0, %rsp, $44	# 
	FADD	%fr0, %fr11, %fr0	# 
min_caml_if_flt_cont.1371:
	J	$min_caml_if_flt_cont.1369	# 
min_caml_if_flt.1368:
	FLDA	%fr11, $min_caml_l.1018	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FSUB	%fr10, %fr1, %fr0	# 
	FLDA	%fr1, $min_caml_l.996	# 
	FADD	%fr0, %fr1, %fr0	# 
	FDIV	%fr0, %fr10, %fr0	# 
	MVI	%r0, $100	# 
	SDR	%r0, %rsp, $48	# 
	FSDR	%fr1, %rsp, $52	# 
	FSDR	%fr0, %rsp, $56	# 
	ADDI	%rsp, %rsp, $60	# 
	JLINK	arctansub.813	# 
	ADDI	%rsp, %rsp, $-60	# 
	LDR	%r0, %rsp, $48	# 
	FLDR	%fr1, %rsp, $52	# 
	FLDR	%fr0, %rsp, $56	# 
	FSUB	%fr0, %fr11, %fr0	# 
min_caml_if_flt_cont.1369:
	J	$min_caml_if_flt_cont.1367	# 
min_caml_if_flt.1366:
	MVI	%r0, $100	# 
	SDR	%r0, %rsp, $60	# 
	FSDR	%fr1, %rsp, $64	# 
	FSDR	%fr0, %rsp, $68	# 
	LDR	%r0, %rsp, $60	# 
	FLDR	%fr1, %rsp, $64	# 
	FLDR	%fr0, %rsp, $68	# 
	ADDI	%rsp, %rsp, $72	# 
	JLINK	arctansub.813	# 
	ADDI	%rsp, %rsp, $-72	# 
min_caml_if_flt_cont.1367:
	J	$min_caml_if_flt_cont.1365	# 
min_caml_if_flt.1364:
	FNEG1	%fr0	# 
	SDR	%r0, %rsp, $72	# 
	FSDR	%fr1, %rsp, $76	# 
	FSDR	%fr0, %rsp, $80	# 
	ADDI	%rsp, %rsp, $84	# 
	JLINK	arctan.472	# 
	ADDI	%rsp, %rsp, $-84	# 
	LDR	%r0, %rsp, $72	# 
	FLDR	%fr1, %rsp, $76	# 
	FLDR	%fr0, %rsp, $80	# 
	FNEG1	%fr0	# 
min_caml_if_flt_cont.1365:
	LINK	# 
min_caml_arctansub.813:
	XOR	%r1, %r1, %r1	# 
	XOR	%r0, %r1	# 
	JZ	$min_caml_if_eq.1372	# 
	ADDI	%r1, %r0, $-1	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	FSDR	%fr1, %rsp, $8	# 
	FSDR	%fr0, %rsp, $12	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINK	arctansub.813	# 
	ADDI	%rsp, %rsp, $-16	# 
	FMV	%fr10, %fr0	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	FLDR	%fr1, %rsp, $8	# 
	FLDR	%fr0, %rsp, $12	# 
	FNEG1	%fr0	# 
	MVI	%r1, $2	# 
	MUL	%r1, %r1, %r0	# 
	INC	%r1	# 
	SDR	%r1, %rsp, $16	# 
	SDR	%r0, %rsp, $20	# 
	FSDR	%fr1, %rsp, $24	# 
	FSDR	%fr0, %rsp, $28	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $32	# 
	JLINK	power.810	# 
	ADDI	%rsp, %rsp, $-32	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $16	# 
	LDR	%r0, %rsp, $20	# 
	FLDR	%fr1, %rsp, $24	# 
	FLDR	%fr0, %rsp, $28	# 
	MVI	%r1, $2	# 
	MUL	%r0, %r1, %r0	# 
	INC	%r0	# 
	SDR	%r1, %rsp, $32	# 
	SDR	%r0, %rsp, $36	# 
	FSDR	%fr1, %rsp, $40	# 
	FSDR	%fr0, %rsp, $44	# 
	ADDI	%rsp, %rsp, $48	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-48	# 
	LDR	%r1, %rsp, $32	# 
	LDR	%r0, %rsp, $36	# 
	FLDR	%fr1, %rsp, $40	# 
	FLDR	%fr0, %rsp, $44	# 
	FDIV	%fr0, %fr1, %fr0	# 
	FADD	%fr0, %fr10, %fr0	# 
	J	$min_caml_if_eq_cont.1373	# 
min_caml_if_eq.1372:
	FLDA	%fr0, $min_caml_x.814	# 
min_caml_if_eq_cont.1373:
	LINK	# 
min_caml_power.810:
	XOR	%r1, %r1, %r1	# 
	XOR	%r0, %r1	# 
	JZ	$min_caml_if_eq.1374	# 
	DEC	%r0	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	FSDR	%fr1, %rsp, $8	# 
	FSDR	%fr0, %rsp, $12	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINK	power.810	# 
	ADDI	%rsp, %rsp, $-16	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	FLDR	%fr1, %rsp, $8	# 
	FLDR	%fr0, %rsp, $12	# 
	FMUL	%fr0, %fr0, %fr1	# 
	J	$min_caml_if_eq_cont.1375	# 
min_caml_if_eq.1374:
	FLDA	%fr0, $min_caml_l.996	# 
min_caml_if_eq_cont.1375:
	LINK	# 
min_caml_sqrt.469:
	SDR	%r10, %rsp, $0	# 
	MV	%r1, %rhp	# 
	ADDI	%rhp, %rhp, $8	# 
	MVI	%r0, $min_caml_f.870	# 
	SDA	%r0, $min_caml_f.870	# 
	FSDR	%fr0, %r1, $4	# 
	MV	%r0, %rhp	# 
	ADDI	%rhp, %rhp, $8	# 
	MVI	%r10, $min_caml_g.872	# 
	SDA	%r10, $min_caml_g.872	# 
	SDR	%r1, %r0, $4	# 
	SDR	%r1, %rsp, $4	# 
	SDR	%r0, %rsp, $8	# 
	FSDR	%fr0, %rsp, $12	# 
	MV	%rcl, %r0	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-16	# 
	LDR	%r1, %rsp, $4	# 
	LDR	%r0, %rsp, $8	# 
	FLDR	%fr0, %rsp, $12	# 
	LDR	%r10, %rsp, $0	# 
	LINK	# 
min_caml_g.872:
	LDA	%r0, $min_caml_g.872, $4	# 
	FLDA	%fr10, $min_caml_l.1009	# 
	SDR	%r0, %rsp, $0	# 
	FSDR	%fr1, %rsp, $4	# 
	FSDR	%fr0, %rsp, $8	# 
	MV	%rcl, %r0	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-12	# 
	MV	%fr1, %fr0	# 
	LDR	%r0, %rsp, $0	# 
	FLDR	%fr1, %rsp, $4	# 
	FLDR	%fr0, %rsp, $8	# 
	FSUB	%fr1, %fr1, %fr0	# 
	FCMP	%fr10, %fr1	# 
	FJLT	$min_caml_if_flt.1376	# 
	SDR	%r0, %rsp, $12	# 
	FSDR	%fr1, %rsp, $16	# 
	FSDR	%fr0, %rsp, $20	# 
	MV	%rcl, %r0	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-24	# 
	MV	%fr1, %fr0	# 
	LDR	%r0, %rsp, $12	# 
	FLDR	%fr1, %rsp, $16	# 
	FLDR	%fr0, %rsp, $20	# 
	FSUB	%fr10, %fr1, %fr0	# 
	FLDA	%fr1, $min_caml_l.1010	# 
	FCMP	%fr10, %fr1	# 
	FJLT	$min_caml_if_flt.1378	# 
	SDR	%r0, %rsp, $24	# 
	FSDR	%fr1, %rsp, $28	# 
	FSDR	%fr0, %rsp, $32	# 
	MV	%rcl, %r0	# 
	ADDI	%rsp, %rsp, $36	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-36	# 
	LDR	%r0, %rsp, $24	# 
	FLDR	%fr1, %rsp, $28	# 
	FLDR	%fr0, %rsp, $32	# 
	SDR	%r0, %rsp, $36	# 
	FSDR	%fr1, %rsp, $40	# 
	FSDR	%fr0, %rsp, $44	# 
	LDR	%r0, %rsp, $36	# 
	FLDR	%fr1, %rsp, $40	# 
	FLDR	%fr0, %rsp, $44	# 
	ADDI	%rsp, %rsp, $48	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-48	# 
	J	$min_caml_if_flt_cont.1379	# 
min_caml_if_flt.1378:
	SDR	%r0, %rsp, $48	# 
	FSDR	%fr1, %rsp, $52	# 
	FSDR	%fr0, %rsp, $56	# 
	LDR	%r0, %rsp, $48	# 
	FLDR	%fr1, %rsp, $52	# 
	FLDR	%fr0, %rsp, $56	# 
	MV	%rcl, %r0	# 
	ADDI	%rsp, %rsp, $60	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-60	# 
min_caml_if_flt_cont.1379:
	J	$min_caml_if_flt_cont.1377	# 
min_caml_if_flt.1376:
	SDR	%r0, %rsp, $60	# 
	FSDR	%fr1, %rsp, $64	# 
	FSDR	%fr0, %rsp, $68	# 
	MV	%rcl, %r0	# 
	ADDI	%rsp, %rsp, $72	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-72	# 
	LDR	%r0, %rsp, $60	# 
	FLDR	%fr1, %rsp, $64	# 
	FLDR	%fr0, %rsp, $68	# 
	SDR	%r0, %rsp, $72	# 
	FSDR	%fr1, %rsp, $76	# 
	FSDR	%fr0, %rsp, $80	# 
	LDR	%r0, %rsp, $72	# 
	FLDR	%fr1, %rsp, $76	# 
	FLDR	%fr0, %rsp, $80	# 
	ADDI	%rsp, %rsp, $84	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-84	# 
min_caml_if_flt_cont.1377:
	LINK	# 
min_caml_f.870:
	FLDA	%fr1, $min_caml_f.870, $4	# 
	FMUL	%fr10, %fr0, %fr0	# 
	FSUB	%fr10, %fr10, %fr1	# 
	FLDA	%fr1, $min_caml_l.994	# 
	FMUL	%fr1, %fr1, %fr0	# 
	FDIV	%fr1, %fr10, %fr1	# 
	FSUB	%fr0, %fr0, %fr1	# 
	LINK	# 
min_caml_floor.466:
	SDR	%r10, %rsp, $0	# 
	MV	%r0, %rhp	# 
	ADDI	%rhp, %rhp, $8	# 
	MVI	%r1, $min_caml_searchsub.888	# 
	SDA	%r1, $min_caml_searchsub.888	# 
	FSDR	%fr0, %r0, $4	# 
	MV	%r1, %rhp	# 
	ADDI	%rhp, %rhp, $8	# 
	MVI	%r10, $min_caml_search.890	# 
	SDA	%r10, $min_caml_search.890	# 
	FSDR	%fr0, %r1, $4	# 
	MVI	%r10, $1	# 
	SDR	%r1, %rsp, $4	# 
	SDR	%r0, %rsp, $8	# 
	FSDR	%fr0, %rsp, $12	# 
	MV	%rcl, %r0	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-16	# 
	LDR	%r1, %rsp, $4	# 
	LDR	%r0, %rsp, $8	# 
	FLDR	%fr0, %rsp, $12	# 
	MVI	%r10, $2	# 
	DIV	%r10, %r0, %r10	# 
	SDR	%r1, %rsp, $16	# 
	SDR	%r0, %rsp, $20	# 
	FSDR	%fr0, %rsp, $24	# 
	MV	%rcl, %r1	# 
	MV	%r1, %r0	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $28	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-28	# 
	LDR	%r1, %rsp, $16	# 
	LDR	%r0, %rsp, $20	# 
	FLDR	%fr0, %rsp, $24	# 
	LDR	%r10, %rsp, $0	# 
	LINK	# 
min_caml_search.890:
	SDR	%r11, %rsp, $0	# 
	SDR	%r10, %rsp, $4	# 
	FLDA	%fr0, $min_caml_search.890, $4	# 
	SUB	%r11, %r1, %r0	# 
	MVI	%r10, $1	# 
	XOR	%r11, %r10	# 
	JZ	$min_caml_if_eq.1380	# 
	ADD	%r11, %r0, %r1	# 
	MVI	%r10, $2	# 
	DIV	%r10, %r11, %r10	# 
	SDR	%r1, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	FSDR	%fr1, %rsp, $16	# 
	FSDR	%fr0, %rsp, $20	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-24	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $8	# 
	LDR	%r0, %rsp, $12	# 
	FLDR	%fr1, %rsp, $16	# 
	FLDR	%fr0, %rsp, $20	# 
	FCMP	%fr1, %fr0	# 
	FJLT	$min_caml_if_flt.1382	# 
	MVI	%r1, $2	# 
	DIV	%r1, %r11, %r1	# 
	SDR	%r1, %rsp, $24	# 
	SDR	%r0, %rsp, $28	# 
	FSDR	%fr1, %rsp, $32	# 
	FSDR	%fr0, %rsp, $36	# 
	LDR	%r1, %rsp, $24	# 
	LDR	%r0, %rsp, $28	# 
	FLDR	%fr1, %rsp, $32	# 
	FLDR	%fr0, %rsp, $36	# 
	ADDI	%rsp, %rsp, $40	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-40	# 
	J	$min_caml_if_flt_cont.1383	# 
min_caml_if_flt.1382:
	MVI	%r0, $2	# 
	DIV	%r0, %r11, %r0	# 
	SDR	%r1, %rsp, $40	# 
	SDR	%r0, %rsp, $44	# 
	FSDR	%fr1, %rsp, $48	# 
	FSDR	%fr0, %rsp, $52	# 
	LDR	%r1, %rsp, $40	# 
	LDR	%r0, %rsp, $44	# 
	FLDR	%fr1, %rsp, $48	# 
	FLDR	%fr0, %rsp, $52	# 
	ADDI	%rsp, %rsp, $56	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-56	# 
min_caml_if_flt_cont.1383:
	J	$min_caml_if_eq_cont.1381	# 
min_caml_if_eq.1380:
	LDA	%r0, $min_caml_a.891	# 
min_caml_if_eq_cont.1381:
	LDR	%r11, %rsp, $0	# 
	LDR	%r10, %rsp, $4	# 
	LINK	# 
min_caml_searchsub.888:
	FLDA	%fr0, $min_caml_searchsub.888, $4	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	FSDR	%fr1, %rsp, $8	# 
	FSDR	%fr0, %rsp, $12	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-16	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	FLDR	%fr1, %rsp, $8	# 
	FLDR	%fr0, %rsp, $12	# 
	FCMP	%fr0, %fr1	# 
	FJLT	$min_caml_if_flt.1384	# 
	LDA	%r0, $min_caml_y.889	# 
	J	$min_caml_if_flt_cont.1385	# 
min_caml_if_flt.1384:
	MVI	%r1, $4	# 
	MUL	%r1, %r0, %r1	# 
	MVI	%r0, $2	# 
	DIV	%r0, %r1, %r0	# 
	SDR	%r1, %rsp, $16	# 
	SDR	%r0, %rsp, $20	# 
	FSDR	%fr1, %rsp, $24	# 
	FSDR	%fr0, %rsp, $28	# 
	LDR	%r1, %rsp, $16	# 
	LDR	%r0, %rsp, $20	# 
	FLDR	%fr1, %rsp, $24	# 
	FLDR	%fr0, %rsp, $28	# 
	ADDI	%rsp, %rsp, $32	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-32	# 
min_caml_if_flt_cont.1385:
	LINK	# 
min_caml_ftoi.463:
	SDR	%r10, %rsp, $0	# 
	MV	%r0, %rhp	# 
	ADDI	%rhp, %rhp, $8	# 
	MVI	%r1, $min_caml_searchsub.915	# 
	SDA	%r1, $min_caml_searchsub.915	# 
	FSDR	%fr0, %r0, $4	# 
	MV	%r1, %rhp	# 
	ADDI	%rhp, %rhp, $8	# 
	MVI	%r10, $min_caml_search.917	# 
	SDA	%r10, $min_caml_search.917	# 
	FSDR	%fr0, %r1, $4	# 
	MVI	%r10, $1	# 
	SDR	%r1, %rsp, $4	# 
	SDR	%r0, %rsp, $8	# 
	FSDR	%fr0, %rsp, $12	# 
	MV	%rcl, %r0	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-16	# 
	LDR	%r1, %rsp, $4	# 
	LDR	%r0, %rsp, $8	# 
	FLDR	%fr0, %rsp, $12	# 
	MVI	%r10, $2	# 
	DIV	%r10, %r0, %r10	# 
	SDR	%r1, %rsp, $16	# 
	SDR	%r0, %rsp, $20	# 
	FSDR	%fr0, %rsp, $24	# 
	MV	%rcl, %r1	# 
	MV	%r1, %r0	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $28	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-28	# 
	LDR	%r1, %rsp, $16	# 
	LDR	%r0, %rsp, $20	# 
	FLDR	%fr0, %rsp, $24	# 
	LDR	%r10, %rsp, $0	# 
	LINK	# 
min_caml_search.917:
	SDR	%r11, %rsp, $0	# 
	SDR	%r10, %rsp, $4	# 
	FLDA	%fr0, $min_caml_search.917, $4	# 
	SUB	%r11, %r1, %r0	# 
	MVI	%r10, $1	# 
	XOR	%r11, %r10	# 
	JZ	$min_caml_if_eq.1386	# 
	ADD	%r11, %r0, %r1	# 
	MVI	%r10, $2	# 
	DIV	%r10, %r11, %r10	# 
	SDR	%r1, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	FSDR	%fr1, %rsp, $16	# 
	FSDR	%fr0, %rsp, $20	# 
	MV	%r0, %r10	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-24	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $8	# 
	LDR	%r0, %rsp, $12	# 
	FLDR	%fr1, %rsp, $16	# 
	FLDR	%fr0, %rsp, $20	# 
	FCMP	%fr0, %fr1	# 
	FJLT	$min_caml_if_flt.1388	# 
	MVI	%r1, $2	# 
	DIV	%r1, %r11, %r1	# 
	SDR	%r1, %rsp, $24	# 
	SDR	%r0, %rsp, $28	# 
	FSDR	%fr1, %rsp, $32	# 
	FSDR	%fr0, %rsp, $36	# 
	LDR	%r1, %rsp, $24	# 
	LDR	%r0, %rsp, $28	# 
	FLDR	%fr1, %rsp, $32	# 
	FLDR	%fr0, %rsp, $36	# 
	ADDI	%rsp, %rsp, $40	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-40	# 
	J	$min_caml_if_flt_cont.1389	# 
min_caml_if_flt.1388:
	MVI	%r0, $2	# 
	DIV	%r0, %r11, %r0	# 
	SDR	%r1, %rsp, $40	# 
	SDR	%r0, %rsp, $44	# 
	FSDR	%fr1, %rsp, $48	# 
	FSDR	%fr0, %rsp, $52	# 
	LDR	%r1, %rsp, $40	# 
	LDR	%r0, %rsp, $44	# 
	FLDR	%fr1, %rsp, $48	# 
	FLDR	%fr0, %rsp, $52	# 
	ADDI	%rsp, %rsp, $56	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-56	# 
min_caml_if_flt_cont.1389:
	J	$min_caml_if_eq_cont.1387	# 
min_caml_if_eq.1386:
	SDR	%r1, %rsp, $56	# 
	SDR	%r0, %rsp, $60	# 
	FSDR	%fr1, %rsp, $64	# 
	FSDR	%fr0, %rsp, $68	# 
	MV	%r0, %r1	# 
	ADDI	%rsp, %rsp, $72	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-72	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $56	# 
	LDR	%r0, %rsp, $60	# 
	FLDR	%fr1, %rsp, $64	# 
	FLDR	%fr0, %rsp, $68	# 
	FSUB	%fr10, %fr1, %fr0	# 
	SDR	%r1, %rsp, $72	# 
	SDR	%r0, %rsp, $76	# 
	FSDR	%fr1, %rsp, $80	# 
	FSDR	%fr0, %rsp, $84	# 
	ADDI	%rsp, %rsp, $88	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-88	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $72	# 
	LDR	%r0, %rsp, $76	# 
	FLDR	%fr1, %rsp, $80	# 
	FLDR	%fr0, %rsp, $84	# 
	FSUB	%fr0, %fr0, %fr1	# 
	FCMP	%fr10, %fr0	# 
	FJLT	$min_caml_if_flt.1390	# 
	LDA	%r0, $min_caml_b.919	# 
	J	$min_caml_if_flt_cont.1391	# 
min_caml_if_flt.1390:
	LDA	%r0, $min_caml_a.918	# 
min_caml_if_flt_cont.1391:
min_caml_if_eq_cont.1387:
	LDR	%r11, %rsp, $0	# 
	LDR	%r10, %rsp, $4	# 
	LINK	# 
min_caml_searchsub.915:
	FLDA	%fr0, $min_caml_searchsub.915, $4	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	FSDR	%fr1, %rsp, $8	# 
	FSDR	%fr0, %rsp, $12	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-16	# 
	FMV	%fr1, %fr0	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	FLDR	%fr1, %rsp, $8	# 
	FLDR	%fr0, %rsp, $12	# 
	FCMP	%fr0, %fr1	# 
	FJLT	$min_caml_if_flt.1392	# 
	LDA	%r0, $min_caml_y.916	# 
	J	$min_caml_if_flt_cont.1393	# 
min_caml_if_flt.1392:
	MVI	%r1, $4	# 
	MUL	%r1, %r0, %r1	# 
	MVI	%r0, $2	# 
	DIV	%r0, %r1, %r0	# 
	SDR	%r1, %rsp, $16	# 
	SDR	%r0, %rsp, $20	# 
	FSDR	%fr1, %rsp, $24	# 
	FSDR	%fr0, %rsp, $28	# 
	LDR	%r1, %rsp, $16	# 
	LDR	%r0, %rsp, $20	# 
	FLDR	%fr1, %rsp, $24	# 
	FLDR	%fr0, %rsp, $28	# 
	ADDI	%rsp, %rsp, $32	# 
	JLINKC	# 
	ADDI	%rsp, %rsp, $-32	# 
min_caml_if_flt_cont.1393:
	LINK	# 
min_caml_itof.460:
	XOR	%r1, %r1, %r1	# 
	CMP	%r1, %r0	# 
	JZ	$min_caml_if_lt.1394	# 
	FLDA	%fr0, $min_caml_l.996	# 
	MVI	%r1, $1	# 
	SDR	%r1, %rsp, $0	# 
	SDR	%r0, %rsp, $4	# 
	FSDR	%fr0, %rsp, $8	# 
	ADDI	%rsp, %rsp, $12	# 
	JLINK	loopa.947	# 
	ADDI	%rsp, %rsp, $-12	# 
	LDR	%r1, %rsp, $0	# 
	LDR	%r0, %rsp, $4	# 
	FLDR	%fr0, %rsp, $8	# 
	MVI	%r1, $1	# 
	SDR	%r1, %rsp, $12	# 
	SDR	%r0, %rsp, $16	# 
	FSDR	%fr0, %rsp, $20	# 
	ADDI	%rsp, %rsp, $24	# 
	JLINK	loopb.951	# 
	ADDI	%rsp, %rsp, $-24	# 
	MV	%r1, %r0	# 
	LDR	%r1, %rsp, $12	# 
	LDR	%r0, %rsp, $16	# 
	FLDR	%fr0, %rsp, $20	# 
	SDR	%r1, %rsp, $24	# 
	SDR	%r0, %rsp, $28	# 
	FSDR	%fr0, %rsp, $32	# 
	LDR	%r1, %rsp, $24	# 
	LDR	%r0, %rsp, $28	# 
	FLDR	%fr0, %rsp, $32	# 
	ADDI	%rsp, %rsp, $36	# 
	JLINK	itofsub.954	# 
	ADDI	%rsp, %rsp, $-36	# 
	J	$min_caml_if_lt_cont.1395	# 
min_caml_if_lt.1394:
	NEG1	%r0	# 
	SDR	%r1, %rsp, $36	# 
	SDR	%r0, %rsp, $40	# 
	FSDR	%fr0, %rsp, $44	# 
	ADDI	%rsp, %rsp, $48	# 
	JLINK	itof.460	# 
	ADDI	%rsp, %rsp, $-48	# 
	LDR	%r1, %rsp, $36	# 
	LDR	%r0, %rsp, $40	# 
	FLDR	%fr0, %rsp, $44	# 
	FNEG1	%fr0	# 
min_caml_if_lt_cont.1395:
	LINK	# 
min_caml_itofsub.954:
	SDR	%r10, %rsp, $0	# 
	CMP	%r1, %r0	# 
	JZ	$min_caml_if_lt.1396	# 
	MVI	%r10, $1	# 
	XOR	%r1, %r10	# 
	JZ	$min_caml_if_eq.1398	# 
	FLDA	%fr1, $min_caml_l.994	# 
	FDIV	%fr0, %fr0, %fr1	# 
	MVI	%r10, $2	# 
	DIV	%r1, %r1, %r10	# 
	SDR	%r1, %rsp, $4	# 
	SDR	%r0, %rsp, $8	# 
	FSDR	%fr1, %rsp, $12	# 
	FSDR	%fr0, %rsp, $16	# 
	LDR	%r1, %rsp, $4	# 
	LDR	%r0, %rsp, $8	# 
	FLDR	%fr1, %rsp, $12	# 
	FLDR	%fr0, %rsp, $16	# 
	ADDI	%rsp, %rsp, $20	# 
	JLINK	itofsub.954	# 
	ADDI	%rsp, %rsp, $-20	# 
	J	$min_caml_if_eq_cont.1399	# 
min_caml_if_eq.1398:
	FLDA	%fr0, $min_caml_l.995	# 
min_caml_if_eq_cont.1399:
	J	$min_caml_if_lt_cont.1397	# 
min_caml_if_lt.1396:
	MVI	%r10, $1	# 
	XOR	%r1, %r10	# 
	JZ	$min_caml_if_eq.1400	# 
	SUB	%r10, %r0, %r1	# 
	FLDA	%fr1, $min_caml_l.994	# 
	FDIV	%fr1, %fr0, %fr1	# 
	MVI	%r0, $2	# 
	DIV	%r0, %r1, %r0	# 
	SDR	%r1, %rsp, $20	# 
	SDR	%r0, %rsp, $24	# 
	FSDR	%fr1, %rsp, $28	# 
	FSDR	%fr0, %rsp, $32	# 
	LDR	%r1, %rsp, $20	# 
	LDR	%r0, %rsp, $24	# 
	FLDR	%fr1, %rsp, $28	# 
	FLDR	%fr0, %rsp, $32	# 
	MV	%r1, %r0	# 
	MV	%r0, %r10	# 
	FMV	%fr0, %fr1	# 
	ADDI	%rsp, %rsp, $36	# 
	JLINK	itofsub.954	# 
	ADDI	%rsp, %rsp, $-36	# 
	FMV	%fr1, %fr0	# 
	J	$min_caml_if_eq_cont.1401	# 
min_caml_if_eq.1400:
	FLDA	%fr1, $min_caml_l.995	# 
min_caml_if_eq_cont.1401:
	FADD	%fr0, %fr0, %fr1	# 
min_caml_if_lt_cont.1397:
	LDR	%r10, %rsp, $0	# 
	LINK	# 
min_caml_loopb.951:
	SDR	%r11, %rsp, $0	# 
	SDR	%r10, %rsp, $4	# 
	MVI	%r10, $4	# 
	MUL	%r11, %r1, %r10	# 
	MVI	%r10, $2	# 
	DIV	%r10, %r11, %r10	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1402	# 
	MVI	%r10, $4	# 
	MUL	%r10, %r1, %r10	# 
	MVI	%r1, $2	# 
	DIV	%r1, %r10, %r1	# 
	SDR	%r1, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	LDR	%r1, %rsp, $8	# 
	LDR	%r0, %rsp, $12	# 
	ADDI	%rsp, %rsp, $16	# 
	JLINK	loopb.951	# 
	ADDI	%rsp, %rsp, $-16	# 
	J	$min_caml_if_lt_cont.1403	# 
min_caml_if_lt.1402:
	LDA	%r0, $min_caml_k.953	# 
min_caml_if_lt_cont.1403:
	LDR	%r11, %rsp, $0	# 
	LDR	%r10, %rsp, $4	# 
	LINK	# 
min_caml_loopa.947:
	SDR	%r11, %rsp, $0	# 
	SDR	%r10, %rsp, $4	# 
	MVI	%r10, $4	# 
	MUL	%r11, %r1, %r10	# 
	MVI	%r10, $2	# 
	DIV	%r10, %r11, %r10	# 
	CMP	%r10, %r0	# 
	JZ	$min_caml_if_lt.1404	# 
	FADD	%fr0, %fr0, %fr0	# 
	MVI	%r10, $4	# 
	MUL	%r10, %r1, %r10	# 
	MVI	%r1, $2	# 
	DIV	%r1, %r10, %r1	# 
	SDR	%r1, %rsp, $8	# 
	SDR	%r0, %rsp, $12	# 
	FSDR	%fr0, %rsp, $16	# 
	LDR	%r1, %rsp, $8	# 
	LDR	%r0, %rsp, $12	# 
	FLDR	%fr0, %rsp, $16	# 
	ADDI	%rsp, %rsp, $20	# 
	JLINK	loopa.947	# 
	ADDI	%rsp, %rsp, $-20	# 
	J	$min_caml_if_lt_cont.1405	# 
min_caml_if_lt.1404:
	FLDA	%fr0, $min_caml_j.949	# 
min_caml_if_lt_cont.1405:
	LDR	%r11, %rsp, $0	# 
	LDR	%r10, %rsp, $4	# 
	LINK	# 
