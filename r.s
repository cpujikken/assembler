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
.start	min_caml_start
.data
.align	4
l.1032:	#5.497787 lib.ml#49:14->49:36
	.long	40afeddf
l.1031:	#4.712389 lib.ml#48:14->48:36
	.long	4096cbe4
l.1030:	#3.926991 lib.ml#47:14->47:36
	.long	407b53d1
l.1029:	#3.141593 lib.ml#46:14->46:36
	.long	40490fdb
l.1028:	#2.356194 lib.ml#45:14->45:36
	.long	4016cbe4
l.1027:	#1.570796 lib.ml#44:14->44:36
	.long	3fc90fdb
l.1026:	#8.000000 lib.ml#40:41->40:44
	.long	41000000
l.1025:	#6.283185 lib.ml#39:30->39:52
	.long	40c90fdb
l.1024:	#24.000000 lib.ml#42:94->42:98
	.long	41c00000
l.1023:	#720.000000 lib.ml#42:71->42:76
	.long	44340000
l.1022:	#40320.000000 lib.ml#42:40->42:47
	.long	471d8000
l.1021:	#6.000000 lib.ml#41:90->41:93
	.long	40c00000
l.1020:	#5040.000000 lib.ml#41:69->41:75
	.long	459d8000
l.1019:	#120.000000 lib.ml#41:37->41:42
	.long	42f00000
l.1018:	#0.785398 lib.ml#36:38->36:55
	.long	3f490fdb
l.1017:	#1.570796 lib.ml#37:5->37:22
	.long	3fc90fdb
l.1010:	#-0.000000 lib.ml#28:75->28:86
	.long	7fffffffb3d6bf95
l.1009:	#0.000000 lib.ml#28:31->28:40
	.long	33d6bf95
l.996:	#1.000000 lib.ml#9:21->9:23
	.long	3f800000
l.995:	#0.000000 lib.ml#8:23->8:26
	.long	0
l.994:	#2.000000 lib.ml#8:47->8:49
	.long	40000000
.align	4
.text
print_space.487:
	SDR	%r9, %r31, $0	# lib.ml#84:36->84:38
	MVI	%r9, $32	# lib.ml#84:36->84:38
	PRINT	%r9	# lib.ml#84:25->84:38
	LDR	%r9, %r31, $0	# lib.ml#84:36->84:38
	LINK	# lib.ml#84:36->84:38
print_newline.484:
	SDR	%r9, %r31, $0	# lib.ml#83:38->83:40
	MVI	%r9, $10	# lib.ml#83:38->83:40
	PRINT	%r9	# lib.ml#83:27->83:40
	LDR	%r9, %r31, $0	# lib.ml#83:38->83:40
	LINK	# lib.ml#83:38->83:40
print_int.481:
	SDR	%r9, %r31, $0	# lib.ml#81:91->81:92
	MVI	%r9, $1	# lib.ml#81:91->81:92
	SDR	%r1, %r31, $4	# lib.ml#81:78->81:92
	SDR	%r0, %r31, $8	# lib.ml#81:78->81:92
	MV	%r0, %r1	# lib.ml#81:78->81:92
	MV	%r1, %r9	# lib.ml#81:78->81:92
	ADDI	%r31, %r31, $12	# lib.ml#81:78->81:92
	JLINK	$print_loop.504	# lib.ml#81:78->81:92
	ADDI	%r31, %r31, $-12	# lib.ml#81:78->81:92
	MV	%r9, %r0	# lib.ml#81:78->81:92
	LDR	%r1, %r31, $4	# lib.ml#81:78->81:92
	LDR	%r0, %r31, $8	# lib.ml#81:78->81:92
	SDR	%r1, %r31, $12	# lib.ml#81:75->81:93
	SDR	%r0, %r31, $16	# lib.ml#81:75->81:93
	MV	%r0, %r9	# lib.ml#81:75->81:93
	ADDI	%r31, %r31, $20	# lib.ml#81:75->81:93
	JLINK	$z.499	# lib.ml#81:75->81:93
	ADDI	%r31, %r31, $-20	# lib.ml#81:75->81:93
	LDR	%r1, %r31, $12	# lib.ml#81:75->81:93
	LDR	%r0, %r31, $16	# lib.ml#81:75->81:93
	LDR	%r9, %r31, $0	# lib.ml#81:91->81:92
	LINK	# lib.ml#81:91->81:92
print_loop.504:
	SDR	%r9, %r31, $0	# lib.ml#80:19->80:25
	SDR	%r1, %r31, $4	# lib.ml#80:19->80:25
	SDR	%r0, %r31, $8	# lib.ml#80:19->80:25
	MV	%r0, %r2	# lib.ml#80:19->80:25
	ADDI	%r31, %r31, $12	# lib.ml#80:19->80:25
	JLINK	$four.495	# lib.ml#80:19->80:25
	ADDI	%r31, %r31, $-12	# lib.ml#80:19->80:25
	MV	%r9, %r0	# lib.ml#80:19->80:25
	LDR	%r1, %r31, $4	# lib.ml#80:19->80:25
	LDR	%r0, %r31, $8	# lib.ml#80:19->80:25
	SDR	%r1, %r31, $12	# lib.ml#80:13->80:26
	SDR	%r0, %r31, $16	# lib.ml#80:13->80:26
	MV	%r0, %r9	# lib.ml#80:13->80:26
	ADDI	%r31, %r31, $20	# lib.ml#80:13->80:26
	JLINK	$four.495	# lib.ml#80:13->80:26
	ADDI	%r31, %r31, $-20	# lib.ml#80:13->80:26
	MV	%r9, %r0	# lib.ml#80:13->80:26
	LDR	%r1, %r31, $12	# lib.ml#80:13->80:26
	LDR	%r0, %r31, $16	# lib.ml#80:13->80:26
	SDR	%r1, %r31, $20	# lib.ml#80:7->80:27
	SDR	%r0, %r31, $24	# lib.ml#80:7->80:27
	MV	%r0, %r9	# lib.ml#80:7->80:27
	ADDI	%r31, %r31, $28	# lib.ml#80:7->80:27
	JLINK	$half.497	# lib.ml#80:7->80:27
	ADDI	%r31, %r31, $-28	# lib.ml#80:7->80:27
	MV	%r9, %r0	# lib.ml#80:7->80:27
	LDR	%r1, %r31, $20	# lib.ml#80:7->80:27
	LDR	%r0, %r31, $24	# lib.ml#80:7->80:27
	ADD	%r9, %r9, %r2	# lib.ml#80:6->80:32
	ADD	%r9, %r9, %r2	# lib.ml#80:6->80:36
	CMP	%r9, %r1	# lib.ml#80:3->81:71
	JZ	$if_lt.1281	# lib.ml#80:3->81:71
	SDR	%r1, %r31, $28	# lib.ml#81:50->81:56
	SDR	%r0, %r31, $32	# lib.ml#81:50->81:56
	MV	%r0, %r2	# lib.ml#81:50->81:56
	ADDI	%r31, %r31, $36	# lib.ml#81:50->81:56
	JLINK	$four.495	# lib.ml#81:50->81:56
	ADDI	%r31, %r31, $-36	# lib.ml#81:50->81:56
	MV	%r9, %r0	# lib.ml#81:50->81:56
	LDR	%r1, %r31, $28	# lib.ml#81:50->81:56
	LDR	%r0, %r31, $32	# lib.ml#81:50->81:56
	SDR	%r1, %r31, $36	# lib.ml#81:44->81:57
	SDR	%r0, %r31, $40	# lib.ml#81:44->81:57
	MV	%r0, %r9	# lib.ml#81:44->81:57
	ADDI	%r31, %r31, $44	# lib.ml#81:44->81:57
	JLINK	$four.495	# lib.ml#81:44->81:57
	ADDI	%r31, %r31, $-44	# lib.ml#81:44->81:57
	MV	%r9, %r0	# lib.ml#81:44->81:57
	LDR	%r1, %r31, $36	# lib.ml#81:44->81:57
	LDR	%r0, %r31, $40	# lib.ml#81:44->81:57
	SDR	%r1, %r31, $44	# lib.ml#81:38->81:58
	SDR	%r0, %r31, $48	# lib.ml#81:38->81:58
	MV	%r0, %r9	# lib.ml#81:38->81:58
	ADDI	%r31, %r31, $52	# lib.ml#81:38->81:58
	JLINK	$half.497	# lib.ml#81:38->81:58
	ADDI	%r31, %r31, $-52	# lib.ml#81:38->81:58
	MV	%r9, %r0	# lib.ml#81:38->81:58
	LDR	%r1, %r31, $44	# lib.ml#81:38->81:58
	LDR	%r0, %r31, $48	# lib.ml#81:38->81:58
	ADD	%r9, %r9, %r2	# lib.ml#81:37->81:63
	ADD	%r9, %r9, %r2	# lib.ml#81:37->81:67
	SDR	%r2, %r31, $52	# lib.ml#81:23->81:68
	SDR	%r1, %r31, $56	# lib.ml#81:23->81:68
	SDR	%r0, %r31, $60	# lib.ml#81:23->81:68
	MV	%r0, %r1	# lib.ml#81:23->81:68
	MV	%r1, %r9	# lib.ml#81:23->81:68
	ADDI	%r31, %r31, $64	# lib.ml#81:23->81:68
	JLINK	$print_loop.504	# lib.ml#81:23->81:68
	ADDI	%r31, %r31, $-64	# lib.ml#81:23->81:68
	MV	%r9, %r0	# lib.ml#81:23->81:68
	LDR	%r2, %r31, $52	# lib.ml#81:23->81:68
	LDR	%r1, %r31, $56	# lib.ml#81:23->81:68
	LDR	%r0, %r31, $60	# lib.ml#81:23->81:68
	SDR	%r2, %r31, $64	# lib.ml#81:8->81:71
	SDR	%r1, %r31, $68	# lib.ml#81:8->81:71
	SDR	%r0, %r31, $72	# lib.ml#81:8->81:71
	LDR	%r2, %r31, $64	# lib.ml#81:8->81:71
	LDR	%r1, %r31, $68	# lib.ml#81:8->81:71
	LDR	%r0, %r31, $72	# lib.ml#81:8->81:71
	MV	%r1, %r2	# lib.ml#81:8->81:71
	MV	%r0, %r9	# lib.ml#81:8->81:71
	ADDI	%r31, %r31, $76	# lib.ml#81:8->81:71
	JLINK	$print_int_sub.501	# lib.ml#81:8->81:71
	ADDI	%r31, %r31, $-76	# lib.ml#81:8->81:71
	J	$if_lt_cont.1282	# lib.ml#80:3->81:71
if_lt.1281:
	SDR	%r2, %r31, $76	# lib.ml#80:46->80:63
	SDR	%r1, %r31, $80	# lib.ml#80:46->80:63
	SDR	%r0, %r31, $84	# lib.ml#80:46->80:63
	LDR	%r2, %r31, $76	# lib.ml#80:46->80:63
	LDR	%r1, %r31, $80	# lib.ml#80:46->80:63
	LDR	%r0, %r31, $84	# lib.ml#80:46->80:63
	MV	%r0, %r1	# lib.ml#80:46->80:63
	MV	%r1, %r2	# lib.ml#80:46->80:63
	ADDI	%r31, %r31, $88	# lib.ml#80:46->80:63
	JLINK	$print_int_sub.501	# lib.ml#80:46->80:63
	ADDI	%r31, %r31, $-88	# lib.ml#80:46->80:63
if_lt_cont.1282:
	LDR	%r9, %r31, $0	# lib.ml#80:19->80:25
	LINK	# lib.ml#80:19->80:25
print_int_sub.501:
	SDR	%r9, %r31, $0	# lib.ml#69:3->78:54
	CMP	%r2, %r1	# lib.ml#69:3->78:54
	JZ	$if_lt.1283	# lib.ml#69:3->78:54
	ADD	%r9, %r2, %r2	# lib.ml#70:11->70:16
	CMP	%r9, %r1	# lib.ml#70:8->78:54
	JZ	$if_lt.1285	# lib.ml#70:8->78:54
	ADD	%r9, %r9, %r2	# lib.ml#71:11->71:20
	CMP	%r9, %r1	# lib.ml#71:8->78:54
	JZ	$if_lt.1287	# lib.ml#71:8->78:54
	SDR	%r1, %r31, $4	# lib.ml#72:11->72:17
	SDR	%r0, %r31, $8	# lib.ml#72:11->72:17
	MV	%r0, %r2	# lib.ml#72:11->72:17
	ADDI	%r31, %r31, $12	# lib.ml#72:11->72:17
	JLINK	$four.495	# lib.ml#72:11->72:17
	ADDI	%r31, %r31, $-12	# lib.ml#72:11->72:17
	MV	%r9, %r0	# lib.ml#72:11->72:17
	LDR	%r1, %r31, $4	# lib.ml#72:11->72:17
	LDR	%r0, %r31, $8	# lib.ml#72:11->72:17
	CMP	%r9, %r1	# lib.ml#72:8->78:54
	JZ	$if_lt.1289	# lib.ml#72:8->78:54
	SDR	%r1, %r31, $12	# lib.ml#73:12->73:18
	SDR	%r0, %r31, $16	# lib.ml#73:12->73:18
	MV	%r0, %r2	# lib.ml#73:12->73:18
	ADDI	%r31, %r31, $20	# lib.ml#73:12->73:18
	JLINK	$four.495	# lib.ml#73:12->73:18
	ADDI	%r31, %r31, $-20	# lib.ml#73:12->73:18
	MV	%r9, %r0	# lib.ml#73:12->73:18
	LDR	%r1, %r31, $12	# lib.ml#73:12->73:18
	LDR	%r0, %r31, $16	# lib.ml#73:12->73:18
	ADD	%r9, %r9, %r2	# lib.ml#73:11->73:23
	CMP	%r9, %r1	# lib.ml#73:8->78:54
	JZ	$if_lt.1291	# lib.ml#73:8->78:54
	SDR	%r1, %r31, $20	# lib.ml#74:12->74:18
	SDR	%r0, %r31, $24	# lib.ml#74:12->74:18
	MV	%r0, %r2	# lib.ml#74:12->74:18
	ADDI	%r31, %r31, $28	# lib.ml#74:12->74:18
	JLINK	$four.495	# lib.ml#74:12->74:18
	ADDI	%r31, %r31, $-28	# lib.ml#74:12->74:18
	MV	%r9, %r0	# lib.ml#74:12->74:18
	LDR	%r1, %r31, $20	# lib.ml#74:12->74:18
	LDR	%r0, %r31, $24	# lib.ml#74:12->74:18
	ADD	%r9, %r9, %r2	# lib.ml#74:11->74:23
	ADD	%r9, %r9, %r2	# lib.ml#74:11->74:27
	CMP	%r9, %r1	# lib.ml#74:8->78:54
	JZ	$if_lt.1293	# lib.ml#74:8->78:54
	SDR	%r1, %r31, $28	# lib.ml#75:12->75:18
	SDR	%r0, %r31, $32	# lib.ml#75:12->75:18
	MV	%r0, %r2	# lib.ml#75:12->75:18
	ADDI	%r31, %r31, $36	# lib.ml#75:12->75:18
	JLINK	$four.495	# lib.ml#75:12->75:18
	ADDI	%r31, %r31, $-36	# lib.ml#75:12->75:18
	MV	%r9, %r0	# lib.ml#75:12->75:18
	LDR	%r1, %r31, $28	# lib.ml#75:12->75:18
	LDR	%r0, %r31, $32	# lib.ml#75:12->75:18
	ADD	%r9, %r9, %r2	# lib.ml#75:11->75:23
	ADD	%r9, %r9, %r2	# lib.ml#75:11->75:27
	ADD	%r9, %r9, %r2	# lib.ml#75:11->75:31
	CMP	%r9, %r1	# lib.ml#75:8->78:54
	JZ	$if_lt.1295	# lib.ml#75:8->78:54
	SDR	%r1, %r31, $36	# lib.ml#76:24->76:30
	SDR	%r0, %r31, $40	# lib.ml#76:24->76:30
	MV	%r0, %r2	# lib.ml#76:24->76:30
	ADDI	%r31, %r31, $44	# lib.ml#76:24->76:30
	JLINK	$four.495	# lib.ml#76:24->76:30
	ADDI	%r31, %r31, $-44	# lib.ml#76:24->76:30
	MV	%r9, %r0	# lib.ml#76:24->76:30
	LDR	%r1, %r31, $36	# lib.ml#76:24->76:30
	LDR	%r0, %r31, $40	# lib.ml#76:24->76:30
	SDR	%r1, %r31, $44	# lib.ml#76:18->76:31
	SDR	%r0, %r31, $48	# lib.ml#76:18->76:31
	MV	%r0, %r9	# lib.ml#76:18->76:31
	ADDI	%r31, %r31, $52	# lib.ml#76:18->76:31
	JLINK	$four.495	# lib.ml#76:18->76:31
	ADDI	%r31, %r31, $-52	# lib.ml#76:18->76:31
	MV	%r9, %r0	# lib.ml#76:18->76:31
	LDR	%r1, %r31, $44	# lib.ml#76:18->76:31
	LDR	%r0, %r31, $48	# lib.ml#76:18->76:31
	SDR	%r1, %r31, $52	# lib.ml#76:12->76:32
	SDR	%r0, %r31, $56	# lib.ml#76:12->76:32
	MV	%r0, %r9	# lib.ml#76:12->76:32
	ADDI	%r31, %r31, $60	# lib.ml#76:12->76:32
	JLINK	$half.497	# lib.ml#76:12->76:32
	ADDI	%r31, %r31, $-60	# lib.ml#76:12->76:32
	MV	%r9, %r0	# lib.ml#76:12->76:32
	LDR	%r1, %r31, $52	# lib.ml#76:12->76:32
	LDR	%r0, %r31, $56	# lib.ml#76:12->76:32
	CMP	%r9, %r1	# lib.ml#76:8->78:54
	JZ	$if_lt.1297	# lib.ml#76:8->78:54
	SDR	%r1, %r31, $60	# lib.ml#77:24->77:30
	SDR	%r0, %r31, $64	# lib.ml#77:24->77:30
	MV	%r0, %r2	# lib.ml#77:24->77:30
	ADDI	%r31, %r31, $68	# lib.ml#77:24->77:30
	JLINK	$four.495	# lib.ml#77:24->77:30
	ADDI	%r31, %r31, $-68	# lib.ml#77:24->77:30
	MV	%r9, %r0	# lib.ml#77:24->77:30
	LDR	%r1, %r31, $60	# lib.ml#77:24->77:30
	LDR	%r0, %r31, $64	# lib.ml#77:24->77:30
	SDR	%r1, %r31, $68	# lib.ml#77:18->77:31
	SDR	%r0, %r31, $72	# lib.ml#77:18->77:31
	MV	%r0, %r9	# lib.ml#77:18->77:31
	ADDI	%r31, %r31, $76	# lib.ml#77:18->77:31
	JLINK	$four.495	# lib.ml#77:18->77:31
	ADDI	%r31, %r31, $-76	# lib.ml#77:18->77:31
	MV	%r9, %r0	# lib.ml#77:18->77:31
	LDR	%r1, %r31, $68	# lib.ml#77:18->77:31
	LDR	%r0, %r31, $72	# lib.ml#77:18->77:31
	SDR	%r1, %r31, $76	# lib.ml#77:12->77:32
	SDR	%r0, %r31, $80	# lib.ml#77:12->77:32
	MV	%r0, %r9	# lib.ml#77:12->77:32
	ADDI	%r31, %r31, $84	# lib.ml#77:12->77:32
	JLINK	$half.497	# lib.ml#77:12->77:32
	ADDI	%r31, %r31, $-84	# lib.ml#77:12->77:32
	MV	%r9, %r0	# lib.ml#77:12->77:32
	LDR	%r1, %r31, $76	# lib.ml#77:12->77:32
	LDR	%r0, %r31, $80	# lib.ml#77:12->77:32
	ADD	%r9, %r9, %r2	# lib.ml#77:11->77:37
	CMP	%r9, %r1	# lib.ml#77:8->78:54
	JZ	$if_lt.1299	# lib.ml#77:8->78:54
	SDR	%r1, %r31, $84	# lib.ml#78:40->78:46
	SDR	%r0, %r31, $88	# lib.ml#78:40->78:46
	MV	%r0, %r2	# lib.ml#78:40->78:46
	ADDI	%r31, %r31, $92	# lib.ml#78:40->78:46
	JLINK	$four.495	# lib.ml#78:40->78:46
	ADDI	%r31, %r31, $-92	# lib.ml#78:40->78:46
	MV	%r9, %r0	# lib.ml#78:40->78:46
	LDR	%r1, %r31, $84	# lib.ml#78:40->78:46
	LDR	%r0, %r31, $88	# lib.ml#78:40->78:46
	SDR	%r1, %r31, $92	# lib.ml#78:34->78:47
	SDR	%r0, %r31, $96	# lib.ml#78:34->78:47
	MV	%r0, %r9	# lib.ml#78:34->78:47
	ADDI	%r31, %r31, $100	# lib.ml#78:34->78:47
	JLINK	$four.495	# lib.ml#78:34->78:47
	ADDI	%r31, %r31, $-100	# lib.ml#78:34->78:47
	MV	%r9, %r0	# lib.ml#78:34->78:47
	LDR	%r1, %r31, $92	# lib.ml#78:34->78:47
	LDR	%r0, %r31, $96	# lib.ml#78:34->78:47
	SDR	%r1, %r31, $100	# lib.ml#78:28->78:48
	SDR	%r0, %r31, $104	# lib.ml#78:28->78:48
	MV	%r0, %r9	# lib.ml#78:28->78:48
	ADDI	%r31, %r31, $108	# lib.ml#78:28->78:48
	JLINK	$half.497	# lib.ml#78:28->78:48
	ADDI	%r31, %r31, $-108	# lib.ml#78:28->78:48
	MV	%r9, %r0	# lib.ml#78:28->78:48
	LDR	%r1, %r31, $100	# lib.ml#78:28->78:48
	LDR	%r0, %r31, $104	# lib.ml#78:28->78:48
	SUB	%r9, %r1, %r9	# lib.ml#78:23->78:49
	SUB	%r0, %r9, %r2	# lib.ml#78:23->78:53
	J	$if_lt_cont.1300	# lib.ml#77:8->78:54
if_lt.1299:
	SDR	%r1, %r31, $108	# lib.ml#77:79->77:85
	SDR	%r0, %r31, $112	# lib.ml#77:79->77:85
	MV	%r0, %r2	# lib.ml#77:79->77:85
	ADDI	%r31, %r31, $116	# lib.ml#77:79->77:85
	JLINK	$four.495	# lib.ml#77:79->77:85
	ADDI	%r31, %r31, $-116	# lib.ml#77:79->77:85
	MV	%r9, %r0	# lib.ml#77:79->77:85
	LDR	%r1, %r31, $108	# lib.ml#77:79->77:85
	LDR	%r0, %r31, $112	# lib.ml#77:79->77:85
	SDR	%r1, %r31, $116	# lib.ml#77:73->77:86
	SDR	%r0, %r31, $120	# lib.ml#77:73->77:86
	MV	%r0, %r9	# lib.ml#77:73->77:86
	ADDI	%r31, %r31, $124	# lib.ml#77:73->77:86
	JLINK	$four.495	# lib.ml#77:73->77:86
	ADDI	%r31, %r31, $-124	# lib.ml#77:73->77:86
	MV	%r9, %r0	# lib.ml#77:73->77:86
	LDR	%r1, %r31, $116	# lib.ml#77:73->77:86
	LDR	%r0, %r31, $120	# lib.ml#77:73->77:86
	SDR	%r1, %r31, $124	# lib.ml#77:67->77:87
	SDR	%r0, %r31, $128	# lib.ml#77:67->77:87
	MV	%r0, %r9	# lib.ml#77:67->77:87
	ADDI	%r31, %r31, $132	# lib.ml#77:67->77:87
	JLINK	$half.497	# lib.ml#77:67->77:87
	ADDI	%r31, %r31, $-132	# lib.ml#77:67->77:87
	MV	%r9, %r0	# lib.ml#77:67->77:87
	LDR	%r1, %r31, $124	# lib.ml#77:67->77:87
	LDR	%r0, %r31, $128	# lib.ml#77:67->77:87
	SUB	%r0, %r1, %r9	# lib.ml#77:62->77:88
if_lt_cont.1300:
	J	$if_lt_cont.1298	# lib.ml#76:8->78:54
if_lt.1297:
	SDR	%r1, %r31, $132	# lib.ml#76:63->76:69
	SDR	%r0, %r31, $136	# lib.ml#76:63->76:69
	MV	%r0, %r2	# lib.ml#76:63->76:69
	ADDI	%r31, %r31, $140	# lib.ml#76:63->76:69
	JLINK	$four.495	# lib.ml#76:63->76:69
	ADDI	%r31, %r31, $-140	# lib.ml#76:63->76:69
	MV	%r9, %r0	# lib.ml#76:63->76:69
	LDR	%r1, %r31, $132	# lib.ml#76:63->76:69
	LDR	%r0, %r31, $136	# lib.ml#76:63->76:69
	SUB	%r9, %r1, %r9	# lib.ml#76:58->76:70
	SUB	%r9, %r9, %r2	# lib.ml#76:58->76:74
	SUB	%r9, %r9, %r2	# lib.ml#76:58->76:78
	SUB	%r0, %r9, %r2	# lib.ml#76:58->76:82
if_lt_cont.1298:
	J	$if_lt_cont.1296	# lib.ml#75:8->78:54
if_lt.1295:
	SDR	%r1, %r31, $140	# lib.ml#75:61->75:67
	SDR	%r0, %r31, $144	# lib.ml#75:61->75:67
	MV	%r0, %r2	# lib.ml#75:61->75:67
	ADDI	%r31, %r31, $148	# lib.ml#75:61->75:67
	JLINK	$four.495	# lib.ml#75:61->75:67
	ADDI	%r31, %r31, $-148	# lib.ml#75:61->75:67
	MV	%r9, %r0	# lib.ml#75:61->75:67
	LDR	%r1, %r31, $140	# lib.ml#75:61->75:67
	LDR	%r0, %r31, $144	# lib.ml#75:61->75:67
	SUB	%r9, %r1, %r9	# lib.ml#75:56->75:68
	SUB	%r9, %r9, %r2	# lib.ml#75:56->75:72
	SUB	%r0, %r9, %r2	# lib.ml#75:56->75:76
if_lt_cont.1296:
	J	$if_lt_cont.1294	# lib.ml#74:8->78:54
if_lt.1293:
	SDR	%r1, %r31, $148	# lib.ml#74:57->74:63
	SDR	%r0, %r31, $152	# lib.ml#74:57->74:63
	MV	%r0, %r2	# lib.ml#74:57->74:63
	ADDI	%r31, %r31, $156	# lib.ml#74:57->74:63
	JLINK	$four.495	# lib.ml#74:57->74:63
	ADDI	%r31, %r31, $-156	# lib.ml#74:57->74:63
	MV	%r9, %r0	# lib.ml#74:57->74:63
	LDR	%r1, %r31, $148	# lib.ml#74:57->74:63
	LDR	%r0, %r31, $152	# lib.ml#74:57->74:63
	SUB	%r9, %r1, %r9	# lib.ml#74:52->74:64
	SUB	%r0, %r9, %r2	# lib.ml#74:52->74:68
if_lt_cont.1294:
	J	$if_lt_cont.1292	# lib.ml#73:8->78:54
if_lt.1291:
	SDR	%r1, %r31, $156	# lib.ml#73:53->73:59
	SDR	%r0, %r31, $160	# lib.ml#73:53->73:59
	MV	%r0, %r2	# lib.ml#73:53->73:59
	ADDI	%r31, %r31, $164	# lib.ml#73:53->73:59
	JLINK	$four.495	# lib.ml#73:53->73:59
	ADDI	%r31, %r31, $-164	# lib.ml#73:53->73:59
	MV	%r9, %r0	# lib.ml#73:53->73:59
	LDR	%r1, %r31, $156	# lib.ml#73:53->73:59
	LDR	%r0, %r31, $160	# lib.ml#73:53->73:59
	SUB	%r0, %r1, %r9	# lib.ml#73:48->73:60
if_lt_cont.1292:
	J	$if_lt_cont.1290	# lib.ml#72:8->78:54
if_lt.1289:
	SUB	%r9, %r1, %r2	# lib.ml#72:42->72:47
	SUB	%r9, %r9, %r2	# lib.ml#72:42->72:51
	SUB	%r0, %r9, %r2	# lib.ml#72:42->72:55
if_lt_cont.1290:
	J	$if_lt_cont.1288	# lib.ml#71:8->78:54
if_lt.1287:
	SUB	%r9, %r1, %r2	# lib.ml#71:45->71:50
	SUB	%r0, %r9, %r2	# lib.ml#71:45->71:54
if_lt_cont.1288:
	J	$if_lt_cont.1286	# lib.ml#70:8->78:54
if_lt.1285:
	SUB	%r0, %r1, %r2	# lib.ml#70:41->70:46
if_lt_cont.1286:
	J	$if_lt_cont.1284	# lib.ml#69:3->78:54
if_lt.1283:
	LDA	%r0, $n.502	# lib.ml#69:32->69:33
if_lt_cont.1284:
	LDR	%r9, %r31, $0	# lib.ml#69:3->78:54
	LINK	# lib.ml#69:3->78:54
z.499:
	LINK	# lib.ml#67:16->67:18
half.497:
	SDR	%r9, %r31, $0	# lib.ml#66:21->66:22
	MVI	%r9, $2	# lib.ml#66:21->66:22
	DIV	%r0, %r1, %r9	# lib.ml#66:19->66:22
	LDR	%r9, %r31, $0	# lib.ml#66:21->66:22
	LINK	# lib.ml#66:21->66:22
four.495:
	SDR	%r9, %r31, $0	# lib.ml#65:21->65:22
	MVI	%r9, $4	# lib.ml#65:21->65:22
	MUL	%r0, %r1, %r9	# lib.ml#65:19->65:22
	LDR	%r9, %r31, $0	# lib.ml#65:21->65:22
	LINK	# lib.ml#65:21->65:22
sin.478:
	SDR	%r9, %r31, $0	# lib.ml#52:30->52:54
	FLDA	%fr9, $l.1025	# lib.ml#52:30->52:54
	FDIV	%fr9, %fr0, %fr9	# lib.ml#52:24->52:55
	SDR	%r0, %r31, $4	# lib.ml#52:17->52:56
	FSDR	%fr0, %r31, $8	# lib.ml#52:17->52:56
	FMV	%fr0, %fr9	# lib.ml#52:17->52:56
	ADDI	%r31, %r31, $12	# lib.ml#52:17->52:56
	JLINK	$floor.466	# lib.ml#52:17->52:56
	ADDI	%r31, %r31, $-12	# lib.ml#52:17->52:56
	MV	%r9, %r0	# lib.ml#52:17->52:56
	LDR	%r0, %r31, $4	# lib.ml#52:17->52:56
	FLDR	%fr0, %r31, $8	# lib.ml#52:17->52:56
	SDR	%r0, %r31, $12	# lib.ml#52:11->52:57
	FSDR	%fr0, %r31, $16	# lib.ml#52:11->52:57
	MV	%r0, %r9	# lib.ml#52:11->52:57
	ADDI	%r31, %r31, $20	# lib.ml#52:11->52:57
	JLINK	$itof.460	# lib.ml#52:11->52:57
	ADDI	%r31, %r31, $-20	# lib.ml#52:11->52:57
	FMV	%fr9, %fr0	# lib.ml#52:11->52:57
	LDR	%r0, %r31, $12	# lib.ml#52:11->52:57
	FLDR	%fr0, %r31, $16	# lib.ml#52:11->52:57
	FLDA	%fr8, $l.1018	# lib.ml#53:20->53:37
	FMUL	%fr8, %fr9, %fr8	# lib.ml#53:15->53:37
	FLDA	%fr9, $l.1026	# lib.ml#53:41->53:44
	FMUL	%fr9, %fr8, %fr9	# lib.ml#53:15->53:44
	FSUB	%fr9, %fr0, %fr9	# lib.ml#53:10->53:44
	FLDA	%fr8, $l.1018	# lib.ml#56:9->56:26
	FCMP	%fr8, %fr9	# lib.ml#56:2->63:40
	FJLT	$if_flt.1301	# lib.ml#56:2->63:40
	FLDA	%fr8, $l.1027	# lib.ml#57:9->57:31
	FCMP	%fr8, %fr9	# lib.ml#57:2->63:40
	FJLT	$if_flt.1303	# lib.ml#57:2->63:40
	FLDA	%fr8, $l.1028	# lib.ml#58:9->58:31
	FCMP	%fr8, %fr9	# lib.ml#58:2->63:40
	FJLT	$if_flt.1305	# lib.ml#58:2->63:40
	FLDA	%fr8, $l.1029	# lib.ml#59:9->59:31
	FCMP	%fr8, %fr9	# lib.ml#59:2->63:40
	FJLT	$if_flt.1307	# lib.ml#59:2->63:40
	FLDA	%fr8, $l.1030	# lib.ml#60:9->60:31
	FCMP	%fr8, %fr9	# lib.ml#60:2->63:40
	FJLT	$if_flt.1309	# lib.ml#60:2->63:40
	FLDA	%fr8, $l.1031	# lib.ml#61:9->61:31
	FCMP	%fr8, %fr9	# lib.ml#61:2->63:40
	FJLT	$if_flt.1311	# lib.ml#61:2->63:40
	FLDA	%fr8, $l.1032	# lib.ml#62:9->62:31
	FCMP	%fr8, %fr9	# lib.ml#62:2->63:40
	FJLT	$if_flt.1313	# lib.ml#62:2->63:40
	FLDA	%fr8, $l.1025	# lib.ml#63:13->63:35
	FSUB	%fr9, %fr8, %fr9	# lib.ml#63:13->63:38
	SDR	%r0, %r31, $20	# lib.ml#63:5->63:39
	FSDR	%fr0, %r31, $24	# lib.ml#63:5->63:39
	FMV	%fr0, %fr9	# lib.ml#63:5->63:39
	ADDI	%r31, %r31, $28	# lib.ml#63:5->63:39
	JLINK	$sinsub.585	# lib.ml#63:5->63:39
	ADDI	%r31, %r31, $-28	# lib.ml#63:5->63:39
	FMV	%fr9, %fr0	# lib.ml#63:5->63:39
	LDR	%r0, %r31, $20	# lib.ml#63:5->63:39
	FLDR	%fr0, %r31, $24	# lib.ml#63:5->63:39
	FNEG2	%fr0, %fr9	# lib.ml#63:2->63:40
	J	$if_flt_cont.1314	# lib.ml#62:2->63:40
if_flt.1313:
	FLDA	%fr8, $l.1031	# lib.ml#62:53->62:75
	FSUB	%fr9, %fr9, %fr8	# lib.ml#62:48->62:75
	SDR	%r0, %r31, $28	# lib.ml#62:40->62:76
	FSDR	%fr0, %r31, $32	# lib.ml#62:40->62:76
	FMV	%fr0, %fr9	# lib.ml#62:40->62:76
	ADDI	%r31, %r31, $36	# lib.ml#62:40->62:76
	JLINK	$cossub.587	# lib.ml#62:40->62:76
	ADDI	%r31, %r31, $-36	# lib.ml#62:40->62:76
	FMV	%fr9, %fr0	# lib.ml#62:40->62:76
	LDR	%r0, %r31, $28	# lib.ml#62:40->62:76
	FLDR	%fr0, %r31, $32	# lib.ml#62:40->62:76
	FNEG2	%fr0, %fr9	# lib.ml#62:37->62:77
if_flt_cont.1314:
	J	$if_flt_cont.1312	# lib.ml#61:2->63:40
if_flt.1311:
	FLDA	%fr8, $l.1031	# lib.ml#61:48->61:70
	FSUB	%fr9, %fr8, %fr9	# lib.ml#61:48->61:73
	SDR	%r0, %r31, $36	# lib.ml#61:40->61:74
	FSDR	%fr0, %r31, $40	# lib.ml#61:40->61:74
	FMV	%fr0, %fr9	# lib.ml#61:40->61:74
	ADDI	%r31, %r31, $44	# lib.ml#61:40->61:74
	JLINK	$cossub.587	# lib.ml#61:40->61:74
	ADDI	%r31, %r31, $-44	# lib.ml#61:40->61:74
	FMV	%fr9, %fr0	# lib.ml#61:40->61:74
	LDR	%r0, %r31, $36	# lib.ml#61:40->61:74
	FLDR	%fr0, %r31, $40	# lib.ml#61:40->61:74
	FNEG2	%fr0, %fr9	# lib.ml#61:37->61:75
if_flt_cont.1312:
	J	$if_flt_cont.1310	# lib.ml#60:2->63:40
if_flt.1309:
	FLDA	%fr8, $l.1029	# lib.ml#60:53->60:75
	FSUB	%fr9, %fr9, %fr8	# lib.ml#60:48->60:75
	SDR	%r0, %r31, $44	# lib.ml#60:40->60:76
	FSDR	%fr0, %r31, $48	# lib.ml#60:40->60:76
	FMV	%fr0, %fr9	# lib.ml#60:40->60:76
	ADDI	%r31, %r31, $52	# lib.ml#60:40->60:76
	JLINK	$sinsub.585	# lib.ml#60:40->60:76
	ADDI	%r31, %r31, $-52	# lib.ml#60:40->60:76
	FMV	%fr9, %fr0	# lib.ml#60:40->60:76
	LDR	%r0, %r31, $44	# lib.ml#60:40->60:76
	FLDR	%fr0, %r31, $48	# lib.ml#60:40->60:76
	FNEG2	%fr0, %fr9	# lib.ml#60:37->60:77
if_flt_cont.1310:
	J	$if_flt_cont.1308	# lib.ml#59:2->63:40
if_flt.1307:
	FLDA	%fr8, $l.1029	# lib.ml#59:45->59:67
	FSUB	%fr9, %fr8, %fr9	# lib.ml#59:45->59:70
	SDR	%r0, %r31, $52	# lib.ml#59:37->59:71
	FSDR	%fr0, %r31, $56	# lib.ml#59:37->59:71
	LDR	%r0, %r31, $52	# lib.ml#59:37->59:71
	FLDR	%fr0, %r31, $56	# lib.ml#59:37->59:71
	FMV	%fr0, %fr9	# lib.ml#59:37->59:71
	ADDI	%r31, %r31, $60	# lib.ml#59:37->59:71
	JLINK	$sinsub.585	# lib.ml#59:37->59:71
	ADDI	%r31, %r31, $-60	# lib.ml#59:37->59:71
if_flt_cont.1308:
	J	$if_flt_cont.1306	# lib.ml#58:2->63:40
if_flt.1305:
	FLDA	%fr8, $l.1027	# lib.ml#58:48->58:70
	FSUB	%fr9, %fr9, %fr8	# lib.ml#58:45->58:70
	SDR	%r0, %r31, $60	# lib.ml#58:37->58:71
	FSDR	%fr0, %r31, $64	# lib.ml#58:37->58:71
	LDR	%r0, %r31, $60	# lib.ml#58:37->58:71
	FLDR	%fr0, %r31, $64	# lib.ml#58:37->58:71
	FMV	%fr0, %fr9	# lib.ml#58:37->58:71
	ADDI	%r31, %r31, $68	# lib.ml#58:37->58:71
	JLINK	$cossub.587	# lib.ml#58:37->58:71
	ADDI	%r31, %r31, $-68	# lib.ml#58:37->58:71
if_flt_cont.1306:
	J	$if_flt_cont.1304	# lib.ml#57:2->63:40
if_flt.1303:
	FLDA	%fr8, $l.1027	# lib.ml#57:45->57:67
	FSUB	%fr9, %fr8, %fr9	# lib.ml#57:45->57:70
	SDR	%r0, %r31, $68	# lib.ml#57:37->57:71
	FSDR	%fr0, %r31, $72	# lib.ml#57:37->57:71
	LDR	%r0, %r31, $68	# lib.ml#57:37->57:71
	FLDR	%fr0, %r31, $72	# lib.ml#57:37->57:71
	FMV	%fr0, %fr9	# lib.ml#57:37->57:71
	ADDI	%r31, %r31, $76	# lib.ml#57:37->57:71
	JLINK	$cossub.587	# lib.ml#57:37->57:71
	ADDI	%r31, %r31, $-76	# lib.ml#57:37->57:71
if_flt_cont.1304:
	J	$if_flt_cont.1302	# lib.ml#56:2->63:40
if_flt.1301:
	SDR	%r0, %r31, $76	# lib.ml#56:32->56:40
	FSDR	%fr0, %r31, $80	# lib.ml#56:32->56:40
	LDR	%r0, %r31, $76	# lib.ml#56:32->56:40
	FLDR	%fr0, %r31, $80	# lib.ml#56:32->56:40
	FMV	%fr0, %fr9	# lib.ml#56:32->56:40
	ADDI	%r31, %r31, $84	# lib.ml#56:32->56:40
	JLINK	$sinsub.585	# lib.ml#56:32->56:40
	ADDI	%r31, %r31, $-84	# lib.ml#56:32->56:40
if_flt_cont.1302:
	LDR	%r9, %r31, $0	# lib.ml#52:30->52:54
	LINK	# lib.ml#52:30->52:54
cossub.587:
	FMUL	%fr5, %fr0, %fr0	# lib.ml#55:22->55:26
	FMUL	%fr9, %fr5, %fr0	# lib.ml#55:22->55:29
	FMUL	%fr6, %fr9, %fr0	# lib.ml#55:22->55:32
	FMUL	%fr9, %fr6, %fr0	# lib.ml#55:22->55:35
	FMUL	%fr7, %fr9, %fr0	# lib.ml#55:22->55:38
	FLDA	%fr9, $l.1022	# lib.ml#55:40->55:47
	FDIV	%fr8, %fr7, %fr9	# lib.ml#55:22->55:47
	FLDA	%fr9, $l.1023	# lib.ml#55:71->55:76
	FDIV	%fr9, %fr7, %fr9	# lib.ml#55:53->55:76
	FSUB	%fr8, %fr8, %fr9	# lib.ml#55:21->55:77
	FLDA	%fr9, $l.1024	# lib.ml#55:94->55:98
	FDIV	%fr9, %fr6, %fr9	# lib.ml#55:82->55:98
	FADD	%fr8, %fr8, %fr9	# lib.ml#55:21->55:99
	FLDA	%fr9, $l.994	# lib.ml#55:110->55:113
	FDIV	%fr9, %fr5, %fr9	# lib.ml#55:104->55:113
	FSUB	%fr8, %fr8, %fr9	# lib.ml#55:21->55:114
	FLDA	%fr9, $l.996	# lib.ml#55:118->55:121
	FADD	%fr0, %fr8, %fr9	# lib.ml#55:21->55:121
	LINK	# lib.ml#55:22->55:26
sinsub.585:
	FMUL	%fr9, %fr0, %fr0	# lib.ml#54:22->54:26
	FMUL	%fr6, %fr9, %fr0	# lib.ml#54:22->54:29
	FMUL	%fr9, %fr6, %fr0	# lib.ml#54:22->54:32
	FMUL	%fr9, %fr9, %fr0	# lib.ml#54:22->54:35
	FLDA	%fr8, $l.1019	# lib.ml#54:37->54:42
	FDIV	%fr7, %fr9, %fr8	# lib.ml#54:22->54:42
	FMUL	%fr9, %fr9, %fr0	# lib.ml#54:48->54:64
	FMUL	%fr8, %fr9, %fr0	# lib.ml#54:48->54:67
	FLDA	%fr9, $l.1020	# lib.ml#54:69->54:75
	FDIV	%fr9, %fr8, %fr9	# lib.ml#54:48->54:75
	FSUB	%fr8, %fr7, %fr9	# lib.ml#54:21->54:76
	FLDA	%fr9, $l.1021	# lib.ml#54:90->54:93
	FDIV	%fr9, %fr6, %fr9	# lib.ml#54:81->54:93
	FSUB	%fr9, %fr8, %fr9	# lib.ml#54:21->54:94
	FADD	%fr0, %fr9, %fr0	# lib.ml#54:21->54:99
	LINK	# lib.ml#54:22->54:26
cos.475:
	SDR	%r9, %r31, $0	# lib.ml#39:30->39:52
	FLDA	%fr9, $l.1025	# lib.ml#39:30->39:52
	FDIV	%fr9, %fr0, %fr9	# lib.ml#39:24->39:53
	SDR	%r0, %r31, $4	# lib.ml#39:17->39:54
	FSDR	%fr0, %r31, $8	# lib.ml#39:17->39:54
	FMV	%fr0, %fr9	# lib.ml#39:17->39:54
	ADDI	%r31, %r31, $12	# lib.ml#39:17->39:54
	JLINK	$floor.466	# lib.ml#39:17->39:54
	ADDI	%r31, %r31, $-12	# lib.ml#39:17->39:54
	MV	%r9, %r0	# lib.ml#39:17->39:54
	LDR	%r0, %r31, $4	# lib.ml#39:17->39:54
	FLDR	%fr0, %r31, $8	# lib.ml#39:17->39:54
	SDR	%r0, %r31, $12	# lib.ml#39:11->39:55
	FSDR	%fr0, %r31, $16	# lib.ml#39:11->39:55
	MV	%r0, %r9	# lib.ml#39:11->39:55
	ADDI	%r31, %r31, $20	# lib.ml#39:11->39:55
	JLINK	$itof.460	# lib.ml#39:11->39:55
	ADDI	%r31, %r31, $-20	# lib.ml#39:11->39:55
	FMV	%fr9, %fr0	# lib.ml#39:11->39:55
	LDR	%r0, %r31, $12	# lib.ml#39:11->39:55
	FLDR	%fr0, %r31, $16	# lib.ml#39:11->39:55
	FLDA	%fr8, $l.1018	# lib.ml#40:20->40:37
	FMUL	%fr8, %fr9, %fr8	# lib.ml#40:15->40:37
	FLDA	%fr9, $l.1026	# lib.ml#40:41->40:44
	FMUL	%fr9, %fr8, %fr9	# lib.ml#40:15->40:44
	FSUB	%fr9, %fr0, %fr9	# lib.ml#40:10->40:44
	FLDA	%fr8, $l.1018	# lib.ml#43:9->43:26
	FCMP	%fr8, %fr9	# lib.ml#43:2->50:41
	FJLT	$if_flt.1315	# lib.ml#43:2->50:41
	FLDA	%fr8, $l.1027	# lib.ml#44:14->44:36
	FCMP	%fr8, %fr9	# lib.ml#44:7->50:41
	FJLT	$if_flt.1317	# lib.ml#44:7->50:41
	FLDA	%fr8, $l.1028	# lib.ml#45:14->45:36
	FCMP	%fr8, %fr9	# lib.ml#45:7->50:41
	FJLT	$if_flt.1319	# lib.ml#45:7->50:41
	FLDA	%fr8, $l.1029	# lib.ml#46:14->46:36
	FCMP	%fr8, %fr9	# lib.ml#46:7->50:41
	FJLT	$if_flt.1321	# lib.ml#46:7->50:41
	FLDA	%fr8, $l.1030	# lib.ml#47:14->47:36
	FCMP	%fr8, %fr9	# lib.ml#47:7->50:41
	FJLT	$if_flt.1323	# lib.ml#47:7->50:41
	FLDA	%fr8, $l.1031	# lib.ml#48:14->48:36
	FCMP	%fr8, %fr9	# lib.ml#48:7->50:41
	FJLT	$if_flt.1325	# lib.ml#48:7->50:41
	FLDA	%fr8, $l.1032	# lib.ml#49:14->49:36
	FCMP	%fr8, %fr9	# lib.ml#49:7->50:41
	FJLT	$if_flt.1327	# lib.ml#49:7->50:41
	FLDA	%fr8, $l.1025	# lib.ml#50:15->50:37
	FSUB	%fr9, %fr8, %fr9	# lib.ml#50:15->50:40
	SDR	%r0, %r31, $20	# lib.ml#50:7->50:41
	FSDR	%fr0, %r31, $24	# lib.ml#50:7->50:41
	LDR	%r0, %r31, $20	# lib.ml#50:7->50:41
	FLDR	%fr0, %r31, $24	# lib.ml#50:7->50:41
	FMV	%fr0, %fr9	# lib.ml#50:7->50:41
	ADDI	%r31, %r31, $28	# lib.ml#50:7->50:41
	JLINK	$cossub.700	# lib.ml#50:7->50:41
	ADDI	%r31, %r31, $-28	# lib.ml#50:7->50:41
	J	$if_flt_cont.1328	# lib.ml#49:7->50:41
if_flt.1327:
	FLDA	%fr8, $l.1031	# lib.ml#49:53->49:75
	FSUB	%fr9, %fr9, %fr8	# lib.ml#49:50->49:75
	SDR	%r0, %r31, $28	# lib.ml#49:42->49:76
	FSDR	%fr0, %r31, $32	# lib.ml#49:42->49:76
	LDR	%r0, %r31, $28	# lib.ml#49:42->49:76
	FLDR	%fr0, %r31, $32	# lib.ml#49:42->49:76
	FMV	%fr0, %fr9	# lib.ml#49:42->49:76
	ADDI	%r31, %r31, $36	# lib.ml#49:42->49:76
	JLINK	$sinsub.698	# lib.ml#49:42->49:76
	ADDI	%r31, %r31, $-36	# lib.ml#49:42->49:76
if_flt_cont.1328:
	J	$if_flt_cont.1326	# lib.ml#48:7->50:41
if_flt.1325:
	FLDA	%fr8, $l.1031	# lib.ml#48:53->48:75
	FSUB	%fr9, %fr8, %fr9	# lib.ml#48:53->48:78
	SDR	%r0, %r31, $36	# lib.ml#48:45->48:79
	FSDR	%fr0, %r31, $40	# lib.ml#48:45->48:79
	FMV	%fr0, %fr9	# lib.ml#48:45->48:79
	ADDI	%r31, %r31, $44	# lib.ml#48:45->48:79
	JLINK	$sinsub.698	# lib.ml#48:45->48:79
	ADDI	%r31, %r31, $-44	# lib.ml#48:45->48:79
	FMV	%fr9, %fr0	# lib.ml#48:45->48:79
	LDR	%r0, %r31, $36	# lib.ml#48:45->48:79
	FLDR	%fr0, %r31, $40	# lib.ml#48:45->48:79
	FNEG2	%fr0, %fr9	# lib.ml#48:42->48:80
if_flt_cont.1326:
	J	$if_flt_cont.1324	# lib.ml#47:7->50:41
if_flt.1323:
	FLDA	%fr8, $l.1029	# lib.ml#47:56->47:78
	FSUB	%fr9, %fr9, %fr8	# lib.ml#47:53->47:78
	SDR	%r0, %r31, $44	# lib.ml#47:45->47:79
	FSDR	%fr0, %r31, $48	# lib.ml#47:45->47:79
	FMV	%fr0, %fr9	# lib.ml#47:45->47:79
	ADDI	%r31, %r31, $52	# lib.ml#47:45->47:79
	JLINK	$cossub.700	# lib.ml#47:45->47:79
	ADDI	%r31, %r31, $-52	# lib.ml#47:45->47:79
	FMV	%fr9, %fr0	# lib.ml#47:45->47:79
	LDR	%r0, %r31, $44	# lib.ml#47:45->47:79
	FLDR	%fr0, %r31, $48	# lib.ml#47:45->47:79
	FNEG2	%fr0, %fr9	# lib.ml#47:42->47:80
if_flt_cont.1324:
	J	$if_flt_cont.1322	# lib.ml#46:7->50:41
if_flt.1321:
	FLDA	%fr8, $l.1029	# lib.ml#46:53->46:75
	FSUB	%fr9, %fr8, %fr9	# lib.ml#46:53->46:78
	SDR	%r0, %r31, $52	# lib.ml#46:45->46:79
	FSDR	%fr0, %r31, $56	# lib.ml#46:45->46:79
	FMV	%fr0, %fr9	# lib.ml#46:45->46:79
	ADDI	%r31, %r31, $60	# lib.ml#46:45->46:79
	JLINK	$cossub.700	# lib.ml#46:45->46:79
	ADDI	%r31, %r31, $-60	# lib.ml#46:45->46:79
	FMV	%fr9, %fr0	# lib.ml#46:45->46:79
	LDR	%r0, %r31, $52	# lib.ml#46:45->46:79
	FLDR	%fr0, %r31, $56	# lib.ml#46:45->46:79
	FNEG2	%fr0, %fr9	# lib.ml#46:42->46:80
if_flt_cont.1322:
	J	$if_flt_cont.1320	# lib.ml#45:7->50:41
if_flt.1319:
	FLDA	%fr8, $l.1027	# lib.ml#45:56->45:78
	FSUB	%fr9, %fr9, %fr8	# lib.ml#45:53->45:78
	SDR	%r0, %r31, $60	# lib.ml#45:45->45:79
	FSDR	%fr0, %r31, $64	# lib.ml#45:45->45:79
	FMV	%fr0, %fr9	# lib.ml#45:45->45:79
	ADDI	%r31, %r31, $68	# lib.ml#45:45->45:79
	JLINK	$sinsub.698	# lib.ml#45:45->45:79
	ADDI	%r31, %r31, $-68	# lib.ml#45:45->45:79
	FMV	%fr9, %fr0	# lib.ml#45:45->45:79
	LDR	%r0, %r31, $60	# lib.ml#45:45->45:79
	FLDR	%fr0, %r31, $64	# lib.ml#45:45->45:79
	FNEG2	%fr0, %fr9	# lib.ml#45:42->45:80
if_flt_cont.1320:
	J	$if_flt_cont.1318	# lib.ml#44:7->50:41
if_flt.1317:
	FLDA	%fr8, $l.1027	# lib.ml#44:50->44:72
	FSUB	%fr9, %fr8, %fr9	# lib.ml#44:50->44:75
	SDR	%r0, %r31, $68	# lib.ml#44:42->44:76
	FSDR	%fr0, %r31, $72	# lib.ml#44:42->44:76
	LDR	%r0, %r31, $68	# lib.ml#44:42->44:76
	FLDR	%fr0, %r31, $72	# lib.ml#44:42->44:76
	FMV	%fr0, %fr9	# lib.ml#44:42->44:76
	ADDI	%r31, %r31, $76	# lib.ml#44:42->44:76
	JLINK	$sinsub.698	# lib.ml#44:42->44:76
	ADDI	%r31, %r31, $-76	# lib.ml#44:42->44:76
if_flt_cont.1318:
	J	$if_flt_cont.1316	# lib.ml#43:2->50:41
if_flt.1315:
	SDR	%r0, %r31, $76	# lib.ml#43:32->43:40
	FSDR	%fr0, %r31, $80	# lib.ml#43:32->43:40
	LDR	%r0, %r31, $76	# lib.ml#43:32->43:40
	FLDR	%fr0, %r31, $80	# lib.ml#43:32->43:40
	FMV	%fr0, %fr9	# lib.ml#43:32->43:40
	ADDI	%r31, %r31, $84	# lib.ml#43:32->43:40
	JLINK	$cossub.700	# lib.ml#43:32->43:40
	ADDI	%r31, %r31, $-84	# lib.ml#43:32->43:40
if_flt_cont.1316:
	LDR	%r9, %r31, $0	# lib.ml#39:30->39:52
	LINK	# lib.ml#39:30->39:52
cossub.700:
	FMUL	%fr5, %fr0, %fr0	# lib.ml#42:22->42:26
	FMUL	%fr9, %fr5, %fr0	# lib.ml#42:22->42:29
	FMUL	%fr6, %fr9, %fr0	# lib.ml#42:22->42:32
	FMUL	%fr9, %fr6, %fr0	# lib.ml#42:22->42:35
	FMUL	%fr7, %fr9, %fr0	# lib.ml#42:22->42:38
	FLDA	%fr9, $l.1022	# lib.ml#42:40->42:47
	FDIV	%fr8, %fr7, %fr9	# lib.ml#42:22->42:47
	FLDA	%fr9, $l.1023	# lib.ml#42:71->42:76
	FDIV	%fr9, %fr7, %fr9	# lib.ml#42:53->42:76
	FSUB	%fr8, %fr8, %fr9	# lib.ml#42:21->42:77
	FLDA	%fr9, $l.1024	# lib.ml#42:94->42:98
	FDIV	%fr9, %fr6, %fr9	# lib.ml#42:82->42:98
	FADD	%fr8, %fr8, %fr9	# lib.ml#42:21->42:99
	FLDA	%fr9, $l.994	# lib.ml#42:110->42:113
	FDIV	%fr9, %fr5, %fr9	# lib.ml#42:104->42:113
	FSUB	%fr8, %fr8, %fr9	# lib.ml#42:21->42:114
	FLDA	%fr9, $l.996	# lib.ml#42:118->42:121
	FADD	%fr0, %fr8, %fr9	# lib.ml#42:21->42:121
	LINK	# lib.ml#42:22->42:26
sinsub.698:
	FMUL	%fr9, %fr0, %fr0	# lib.ml#41:22->41:26
	FMUL	%fr6, %fr9, %fr0	# lib.ml#41:22->41:29
	FMUL	%fr9, %fr6, %fr0	# lib.ml#41:22->41:32
	FMUL	%fr9, %fr9, %fr0	# lib.ml#41:22->41:35
	FLDA	%fr8, $l.1019	# lib.ml#41:37->41:42
	FDIV	%fr7, %fr9, %fr8	# lib.ml#41:22->41:42
	FMUL	%fr9, %fr9, %fr0	# lib.ml#41:48->41:64
	FMUL	%fr8, %fr9, %fr0	# lib.ml#41:48->41:67
	FLDA	%fr9, $l.1020	# lib.ml#41:69->41:75
	FDIV	%fr9, %fr8, %fr9	# lib.ml#41:48->41:75
	FSUB	%fr8, %fr7, %fr9	# lib.ml#41:21->41:76
	FLDA	%fr9, $l.1021	# lib.ml#41:90->41:93
	FDIV	%fr9, %fr6, %fr9	# lib.ml#41:81->41:93
	FSUB	%fr9, %fr8, %fr9	# lib.ml#41:21->41:94
	FADD	%fr0, %fr9, %fr0	# lib.ml#41:21->41:99
	LINK	# lib.ml#41:22->41:26
arctan.472:
	SDR	%r9, %r31, $0	# lib.ml#31:12->31:14
	FLDA	%fr9, $l.995	# lib.ml#31:12->31:14
	FCMP	%fr9, %fr0	# lib.ml#31:5->37:50
	FJLT	$if_flt.1329	# lib.ml#31:5->37:50
	FLDA	%fr9, $l.994	# lib.ml#34:20->34:23
	SDR	%r0, %r31, $4	# lib.ml#34:15->34:23
	FSDR	%fr0, %r31, $8	# lib.ml#34:15->34:23
	FMV	%fr0, %fr9	# lib.ml#34:15->34:23
	ADDI	%r31, %r31, $12	# lib.ml#34:15->34:23
	JLINK	$sqrt.469	# lib.ml#34:15->34:23
	ADDI	%r31, %r31, $-12	# lib.ml#34:15->34:23
	FMV	%fr8, %fr0	# lib.ml#34:15->34:23
	LDR	%r0, %r31, $4	# lib.ml#34:15->34:23
	FLDR	%fr0, %r31, $8	# lib.ml#34:15->34:23
	FLDA	%fr9, $l.996	# lib.ml#34:28->34:31
	FSUB	%fr9, %fr8, %fr9	# lib.ml#34:14->34:31
	FCMP	%fr0, %fr9	# lib.ml#34:5->37:50
	FJLT	$if_flt.1331	# lib.ml#34:5->37:50
	FLDA	%fr9, $l.996	# lib.ml#35:13->35:16
	FCMP	%fr0, %fr9	# lib.ml#35:5->37:50
	FJLT	$if_flt.1333	# lib.ml#35:5->37:50
	FLDA	%fr9, $l.994	# lib.ml#36:20->36:23
	SDR	%r0, %r31, $12	# lib.ml#36:15->36:23
	FSDR	%fr0, %r31, $16	# lib.ml#36:15->36:23
	FMV	%fr0, %fr9	# lib.ml#36:15->36:23
	ADDI	%r31, %r31, $20	# lib.ml#36:15->36:23
	JLINK	$sqrt.469	# lib.ml#36:15->36:23
	ADDI	%r31, %r31, $-20	# lib.ml#36:15->36:23
	FMV	%fr8, %fr0	# lib.ml#36:15->36:23
	LDR	%r0, %r31, $12	# lib.ml#36:15->36:23
	FLDR	%fr0, %r31, $16	# lib.ml#36:15->36:23
	FLDA	%fr9, $l.996	# lib.ml#36:28->36:31
	FADD	%fr9, %fr8, %fr9	# lib.ml#36:14->36:31
	FCMP	%fr0, %fr9	# lib.ml#36:5->37:50
	FJLT	$if_flt.1335	# lib.ml#36:5->37:50
	FLDA	%fr8, $l.1017	# lib.ml#37:5->37:22
	FLDA	%fr9, $l.996	# lib.ml#37:38->37:41
	FDIV	%fr9, %fr9, %fr0	# lib.ml#37:38->37:44
	MVI	%r9, $100	# lib.ml#37:46->37:49
	SDR	%r0, %r31, $20	# lib.ml#37:27->37:49
	FSDR	%fr0, %r31, $24	# lib.ml#37:27->37:49
	MV	%r0, %r9	# lib.ml#37:27->37:49
	FMV	%fr0, %fr9	# lib.ml#37:27->37:49
	ADDI	%r31, %r31, $28	# lib.ml#37:27->37:49
	JLINK	$arctansub.813	# lib.ml#37:27->37:49
	ADDI	%r31, %r31, $-28	# lib.ml#37:27->37:49
	FMV	%fr9, %fr0	# lib.ml#37:27->37:49
	LDR	%r0, %r31, $20	# lib.ml#37:27->37:49
	FLDR	%fr0, %r31, $24	# lib.ml#37:27->37:49
	FSUB	%fr0, %fr8, %fr9	# lib.ml#37:5->37:50
	J	$if_flt_cont.1336	# lib.ml#36:5->37:50
if_flt.1335:
	FLDA	%fr7, $l.1018	# lib.ml#36:38->36:55
	FLDA	%fr9, $l.996	# lib.ml#36:75->36:78
	FSUB	%fr8, %fr0, %fr9	# lib.ml#36:72->36:78
	FLDA	%fr9, $l.996	# lib.ml#36:85->36:88
	FADD	%fr9, %fr0, %fr9	# lib.ml#36:82->36:88
	FDIV	%fr9, %fr8, %fr9	# lib.ml#36:71->36:89
	MVI	%r9, $100	# lib.ml#36:91->36:94
	SDR	%r0, %r31, $28	# lib.ml#36:60->36:94
	FSDR	%fr0, %r31, $32	# lib.ml#36:60->36:94
	MV	%r0, %r9	# lib.ml#36:60->36:94
	FMV	%fr0, %fr9	# lib.ml#36:60->36:94
	ADDI	%r31, %r31, $36	# lib.ml#36:60->36:94
	JLINK	$arctansub.813	# lib.ml#36:60->36:94
	ADDI	%r31, %r31, $-36	# lib.ml#36:60->36:94
	FMV	%fr9, %fr0	# lib.ml#36:60->36:94
	LDR	%r0, %r31, $28	# lib.ml#36:60->36:94
	FLDR	%fr0, %r31, $32	# lib.ml#36:60->36:94
	FADD	%fr0, %fr7, %fr9	# lib.ml#36:38->36:95
if_flt_cont.1336:
	J	$if_flt_cont.1334	# lib.ml#35:5->37:50
if_flt.1333:
	FLDA	%fr7, $l.1018	# lib.ml#35:22->35:39
	FLDA	%fr9, $l.996	# lib.ml#35:56->35:59
	FSUB	%fr8, %fr9, %fr0	# lib.ml#35:56->35:62
	FLDA	%fr9, $l.996	# lib.ml#35:66->35:69
	FADD	%fr9, %fr9, %fr0	# lib.ml#35:66->35:72
	FDIV	%fr9, %fr8, %fr9	# lib.ml#35:55->35:73
	MVI	%r9, $100	# lib.ml#35:75->35:78
	SDR	%r0, %r31, $36	# lib.ml#35:44->35:78
	FSDR	%fr0, %r31, $40	# lib.ml#35:44->35:78
	MV	%r0, %r9	# lib.ml#35:44->35:78
	FMV	%fr0, %fr9	# lib.ml#35:44->35:78
	ADDI	%r31, %r31, $44	# lib.ml#35:44->35:78
	JLINK	$arctansub.813	# lib.ml#35:44->35:78
	ADDI	%r31, %r31, $-44	# lib.ml#35:44->35:78
	FMV	%fr9, %fr0	# lib.ml#35:44->35:78
	LDR	%r0, %r31, $36	# lib.ml#35:44->35:78
	FLDR	%fr0, %r31, $40	# lib.ml#35:44->35:78
	FSUB	%fr0, %fr7, %fr9	# lib.ml#35:22->35:79
if_flt_cont.1334:
	J	$if_flt_cont.1332	# lib.ml#34:5->37:50
if_flt.1331:
	MVI	%r9, $100	# lib.ml#34:50->34:53
	SDR	%r0, %r31, $44	# lib.ml#34:38->34:53
	FSDR	%fr0, %r31, $48	# lib.ml#34:38->34:53
	LDR	%r0, %r31, $44	# lib.ml#34:38->34:53
	FLDR	%fr0, %r31, $48	# lib.ml#34:38->34:53
	MV	%r0, %r9	# lib.ml#34:38->34:53
	ADDI	%r31, %r31, $52	# lib.ml#34:38->34:53
	JLINK	$arctansub.813	# lib.ml#34:38->34:53
	ADDI	%r31, %r31, $-52	# lib.ml#34:38->34:53
if_flt_cont.1332:
	J	$if_flt_cont.1330	# lib.ml#31:5->37:50
if_flt.1329:
	FNEG2	%fr9, %fr0	# lib.ml#31:31->31:34
	SDR	%r0, %r31, $52	# lib.ml#31:23->31:35
	FSDR	%fr0, %r31, $56	# lib.ml#31:23->31:35
	FMV	%fr0, %fr9	# lib.ml#31:23->31:35
	ADDI	%r31, %r31, $60	# lib.ml#31:23->31:35
	JLINK	$arctan.472	# lib.ml#31:23->31:35
	ADDI	%r31, %r31, $-60	# lib.ml#31:23->31:35
	FMV	%fr9, %fr0	# lib.ml#31:23->31:35
	LDR	%r0, %r31, $52	# lib.ml#31:23->31:35
	FLDR	%fr0, %r31, $56	# lib.ml#31:23->31:35
	FNEG2	%fr0, %fr9	# lib.ml#31:20->31:36
if_flt_cont.1330:
	LDR	%r9, %r31, $0	# lib.ml#31:12->31:14
	LINK	# lib.ml#31:12->31:14
arctansub.813:
	SDR	%r9, %r31, $0	# lib.ml#33:36->33:37
	XOR	%r9, %r9, %r9	# lib.ml#33:36->33:37
	XOR	%r1, %r9	# lib.ml#33:29->33:118
	JZ	$if_eq.1337	# lib.ml#33:29->33:118
	ADDI	%r9, %r1, $-1	# lib.ml#33:64->33:67
	SDR	%r1, %r31, $4	# lib.ml#33:51->33:68
	SDR	%r0, %r31, $8	# lib.ml#33:51->33:68
	FSDR	%fr0, %r31, $12	# lib.ml#33:51->33:68
	MV	%r0, %r9	# lib.ml#33:51->33:68
	ADDI	%r31, %r31, $16	# lib.ml#33:51->33:68
	JLINK	$arctansub.813	# lib.ml#33:51->33:68
	ADDI	%r31, %r31, $-16	# lib.ml#33:51->33:68
	FMV	%fr7, %fr0	# lib.ml#33:51->33:68
	LDR	%r1, %r31, $4	# lib.ml#33:51->33:68
	LDR	%r0, %r31, $8	# lib.ml#33:51->33:68
	FLDR	%fr0, %r31, $12	# lib.ml#33:51->33:68
	FNEG2	%fr9, %fr0	# lib.ml#33:82->33:85
	MVI	%r9, $2	# lib.ml#33:88->33:89
	MUL	%r9, %r9, %r1	# lib.ml#33:88->33:91
	INC	%r9	# lib.ml#33:88->33:95
	SDR	%r1, %r31, $16	# lib.ml#33:75->33:96
	SDR	%r0, %r31, $20	# lib.ml#33:75->33:96
	FSDR	%fr0, %r31, $24	# lib.ml#33:75->33:96
	MV	%r0, %r9	# lib.ml#33:75->33:96
	FMV	%fr0, %fr9	# lib.ml#33:75->33:96
	ADDI	%r31, %r31, $28	# lib.ml#33:75->33:96
	JLINK	$power.810	# lib.ml#33:75->33:96
	ADDI	%r31, %r31, $-28	# lib.ml#33:75->33:96
	FMV	%fr8, %fr0	# lib.ml#33:75->33:96
	LDR	%r1, %r31, $16	# lib.ml#33:75->33:96
	LDR	%r0, %r31, $20	# lib.ml#33:75->33:96
	FLDR	%fr0, %r31, $24	# lib.ml#33:75->33:96
	MVI	%r9, $2	# lib.ml#33:108->33:109
	MUL	%r9, %r9, %r1	# lib.ml#33:108->33:111
	INC	%r9	# lib.ml#33:108->33:115
	SDR	%r1, %r31, $28	# lib.ml#33:102->33:116
	SDR	%r0, %r31, $32	# lib.ml#33:102->33:116
	FSDR	%fr0, %r31, $36	# lib.ml#33:102->33:116
	MV	%r0, %r9	# lib.ml#33:102->33:116
	ADDI	%r31, %r31, $40	# lib.ml#33:102->33:116
	JLINK	$itof.460	# lib.ml#33:102->33:116
	ADDI	%r31, %r31, $-40	# lib.ml#33:102->33:116
	FMV	%fr9, %fr0	# lib.ml#33:102->33:116
	LDR	%r1, %r31, $28	# lib.ml#33:102->33:116
	LDR	%r0, %r31, $32	# lib.ml#33:102->33:116
	FLDR	%fr0, %r31, $36	# lib.ml#33:102->33:116
	FDIV	%fr9, %fr8, %fr9	# lib.ml#33:74->33:117
	FADD	%fr0, %fr7, %fr9	# lib.ml#33:50->33:118
	J	$if_eq_cont.1338	# lib.ml#33:29->33:118
if_eq.1337:
	FLDA	%fr0, $x.814	# lib.ml#33:43->33:44
if_eq_cont.1338:
	LDR	%r9, %r31, $0	# lib.ml#33:36->33:37
	LINK	# lib.ml#33:36->33:37
power.810:
	SDR	%r9, %r31, $0	# lib.ml#32:32->32:33
	XOR	%r9, %r9, %r9	# lib.ml#32:32->32:33
	XOR	%r1, %r9	# lib.ml#32:25->32:68
	JZ	$if_eq.1339	# lib.ml#32:25->32:68
	ADDI	%r9, %r1, $-1	# lib.ml#32:63->32:66
	SDR	%r1, %r31, $4	# lib.ml#32:54->32:67
	SDR	%r0, %r31, $8	# lib.ml#32:54->32:67
	FSDR	%fr0, %r31, $12	# lib.ml#32:54->32:67
	MV	%r0, %r9	# lib.ml#32:54->32:67
	ADDI	%r31, %r31, $16	# lib.ml#32:54->32:67
	JLINK	$power.810	# lib.ml#32:54->32:67
	ADDI	%r31, %r31, $-16	# lib.ml#32:54->32:67
	FMV	%fr9, %fr0	# lib.ml#32:54->32:67
	LDR	%r1, %r31, $4	# lib.ml#32:54->32:67
	LDR	%r0, %r31, $8	# lib.ml#32:54->32:67
	FLDR	%fr0, %r31, $12	# lib.ml#32:54->32:67
	FMUL	%fr0, %fr0, %fr9	# lib.ml#32:48->32:68
	J	$if_eq_cont.1340	# lib.ml#32:25->32:68
if_eq.1339:
	FLDA	%fr0, $l.996	# lib.ml#32:39->32:42
if_eq_cont.1340:
	LDR	%r9, %r31, $0	# lib.ml#32:32->32:33
	LINK	# lib.ml#32:32->32:33
sqrt.469:
	SDR	%r9, %r31, $0	# lib.ml#27:2->29:13
	SDR	%r8, %r31, $4	# lib.ml#27:2->29:13
	SDR	%r7, %r31, $8	# lib.ml#27:2->29:13
	MV	%r8, %r30	# lib.ml#27:2->29:13
	ADDI	%r30, %r30, $8	# lib.ml#27:2->29:13
	MVI	%r9, $f.870	# lib.ml#27:2->29:13
	SDA	%r9, $f.870	# lib.ml#27:2->29:13
	FSDR	%fr0, %r8, $4	# lib.ml#27:2->29:13
	MV	%r9, %r30	# lib.ml#28:2->29:13
	ADDI	%r30, %r30, $8	# lib.ml#28:2->29:13
	MVI	%r7, $g.872	# lib.ml#28:2->29:13
	SDA	%r7, $g.872	# lib.ml#28:2->29:13
	SDR	%r8, %r9, $4	# lib.ml#28:2->29:13
	SDR	%r0, %r31, $12	# lib.ml#29:9->29:12
	FSDR	%fr0, %r31, $16	# lib.ml#29:9->29:12
	MV	%r0, %r9	# lib.ml#29:9->29:12
	ADDI	%r31, %r31, $20	# lib.ml#29:9->29:12
	JLINKC	# lib.ml#29:9->29:12
	ADDI	%r31, %r31, $-20	# lib.ml#29:9->29:12
	LDR	%r0, %r31, $12	# lib.ml#29:9->29:12
	FLDR	%fr0, %r31, $16	# lib.ml#29:9->29:12
	LDR	%r9, %r31, $0	# lib.ml#27:2->29:13
	LDR	%r8, %r31, $4	# lib.ml#27:2->29:13
	LDR	%r7, %r31, $8	# lib.ml#27:2->29:13
	LINK	# lib.ml#27:2->29:13
g.872:
	SDR	%r9, %r31, $0	# lib.ml#28:16->28:110
	LDA	%r9, $g.872, $4	# lib.ml#28:16->28:110
	FLDA	%fr8, $l.1009	# lib.ml#28:31->28:40
	SDR	%r0, %r31, $4	# lib.ml#28:21->28:24
	FSDR	%fr0, %r31, $8	# lib.ml#28:21->28:24
	MV	%r0, %r9	# lib.ml#28:21->28:24
	ADDI	%r31, %r31, $12	# lib.ml#28:21->28:24
	JLINKC	# lib.ml#28:21->28:24
	ADDI	%r31, %r31, $-12	# lib.ml#28:21->28:24
	FMV	%fr9, %fr0	# lib.ml#28:21->28:24
	LDR	%r0, %r31, $4	# lib.ml#28:21->28:24
	FLDR	%fr0, %r31, $8	# lib.ml#28:21->28:24
	FSUB	%fr9, %fr9, %fr0	# lib.ml#28:20->28:28
	FCMP	%fr8, %fr9	# lib.ml#28:16->28:110
	FJLT	$if_flt.1341	# lib.ml#28:16->28:110
	SDR	%r0, %r31, $12	# lib.ml#28:65->28:68
	FSDR	%fr0, %r31, $16	# lib.ml#28:65->28:68
	MV	%r0, %r9	# lib.ml#28:65->28:68
	ADDI	%r31, %r31, $20	# lib.ml#28:65->28:68
	JLINKC	# lib.ml#28:65->28:68
	ADDI	%r31, %r31, $-20	# lib.ml#28:65->28:68
	FMV	%fr9, %fr0	# lib.ml#28:65->28:68
	LDR	%r0, %r31, $12	# lib.ml#28:65->28:68
	FLDR	%fr0, %r31, $16	# lib.ml#28:65->28:68
	FSUB	%fr8, %fr9, %fr0	# lib.ml#28:64->28:72
	FLDA	%fr9, $l.1010	# lib.ml#28:75->28:86
	FCMP	%fr8, %fr9	# lib.ml#28:60->28:109
	FJLT	$if_flt.1343	# lib.ml#28:60->28:109
	SDR	%r0, %r31, $20	# lib.ml#28:105->28:108
	FSDR	%fr0, %r31, $24	# lib.ml#28:105->28:108
	MV	%r0, %r9	# lib.ml#28:105->28:108
	ADDI	%r31, %r31, $28	# lib.ml#28:105->28:108
	JLINKC	# lib.ml#28:105->28:108
	ADDI	%r31, %r31, $-28	# lib.ml#28:105->28:108
	FMV	%fr9, %fr0	# lib.ml#28:105->28:108
	LDR	%r0, %r31, $20	# lib.ml#28:105->28:108
	FLDR	%fr0, %r31, $24	# lib.ml#28:105->28:108
	SDR	%r0, %r31, $28	# lib.ml#28:102->28:109
	FSDR	%fr0, %r31, $32	# lib.ml#28:102->28:109
	LDR	%r0, %r31, $28	# lib.ml#28:102->28:109
	FLDR	%fr0, %r31, $32	# lib.ml#28:102->28:109
	FMV	%fr0, %fr9	# lib.ml#28:102->28:109
	ADDI	%r31, %r31, $36	# lib.ml#28:102->28:109
	JLINKC	# lib.ml#28:102->28:109
	ADDI	%r31, %r31, $-36	# lib.ml#28:102->28:109
	J	$if_flt_cont.1344	# lib.ml#28:60->28:109
if_flt.1343:
	SDR	%r0, %r31, $36	# lib.ml#28:93->28:96
	FSDR	%fr0, %r31, $40	# lib.ml#28:93->28:96
	LDR	%r0, %r31, $36	# lib.ml#28:93->28:96
	FLDR	%fr0, %r31, $40	# lib.ml#28:93->28:96
	MV	%r0, %r9	# lib.ml#28:93->28:96
	ADDI	%r31, %r31, $44	# lib.ml#28:93->28:96
	JLINKC	# lib.ml#28:93->28:96
	ADDI	%r31, %r31, $-44	# lib.ml#28:93->28:96
if_flt_cont.1344:
	J	$if_flt_cont.1342	# lib.ml#28:16->28:110
if_flt.1341:
	SDR	%r0, %r31, $44	# lib.ml#28:49->28:52
	FSDR	%fr0, %r31, $48	# lib.ml#28:49->28:52
	MV	%r0, %r9	# lib.ml#28:49->28:52
	ADDI	%r31, %r31, $52	# lib.ml#28:49->28:52
	JLINKC	# lib.ml#28:49->28:52
	ADDI	%r31, %r31, $-52	# lib.ml#28:49->28:52
	FMV	%fr9, %fr0	# lib.ml#28:49->28:52
	LDR	%r0, %r31, $44	# lib.ml#28:49->28:52
	FLDR	%fr0, %r31, $48	# lib.ml#28:49->28:52
	SDR	%r0, %r31, $52	# lib.ml#28:46->28:53
	FSDR	%fr0, %r31, $56	# lib.ml#28:46->28:53
	LDR	%r0, %r31, $52	# lib.ml#28:46->28:53
	FLDR	%fr0, %r31, $56	# lib.ml#28:46->28:53
	FMV	%fr0, %fr9	# lib.ml#28:46->28:53
	ADDI	%r31, %r31, $60	# lib.ml#28:46->28:53
	JLINKC	# lib.ml#28:46->28:53
	ADDI	%r31, %r31, $-60	# lib.ml#28:46->28:53
if_flt_cont.1342:
	LDR	%r9, %r31, $0	# lib.ml#28:16->28:110
	LINK	# lib.ml#28:16->28:110
f.870:
	FLDA	%fr9, $f.870, $4	# lib.ml#27:21->27:28
	FMUL	%fr8, %fr0, %fr0	# lib.ml#27:21->27:25
	FSUB	%fr8, %fr8, %fr9	# lib.ml#27:21->27:28
	FLDA	%fr9, $l.994	# lib.ml#27:32->27:35
	FMUL	%fr9, %fr9, %fr0	# lib.ml#27:32->27:38
	FDIV	%fr9, %fr8, %fr9	# lib.ml#27:20->27:39
	FSUB	%fr0, %fr0, %fr9	# lib.ml#27:16->27:40
	LINK	# lib.ml#27:21->27:28
floor.466:
	SDR	%r9, %r31, $0	# lib.ml#19:2->25:16
	SDR	%r8, %r31, $4	# lib.ml#19:2->25:16
	SDR	%r7, %r31, $8	# lib.ml#19:2->25:16
	MV	%r9, %r30	# lib.ml#19:2->25:16
	ADDI	%r30, %r30, $8	# lib.ml#19:2->25:16
	MVI	%r8, $searchsub.888	# lib.ml#19:2->25:16
	SDA	%r8, $searchsub.888	# lib.ml#19:2->25:16
	FSDR	%fr0, %r9, $4	# lib.ml#19:2->25:16
	MV	%r8, %r30	# lib.ml#21:2->25:16
	ADDI	%r30, %r30, $8	# lib.ml#21:2->25:16
	MVI	%r7, $search.890	# lib.ml#21:2->25:16
	SDA	%r7, $search.890	# lib.ml#21:2->25:16
	FSDR	%fr0, %r8, $4	# lib.ml#21:2->25:16
	MVI	%r7, $1	# lib.ml#24:20->24:21
	SDR	%r0, %r31, $12	# lib.ml#24:10->24:21
	FSDR	%fr0, %r31, $16	# lib.ml#24:10->24:21
	MV	%r1, %r7	# lib.ml#24:10->24:21
	MV	%r0, %r9	# lib.ml#24:10->24:21
	ADDI	%r31, %r31, $20	# lib.ml#24:10->24:21
	JLINKC	# lib.ml#24:10->24:21
	ADDI	%r31, %r31, $-20	# lib.ml#24:10->24:21
	MV	%r9, %r0	# lib.ml#24:10->24:21
	LDR	%r0, %r31, $12	# lib.ml#24:10->24:21
	FLDR	%fr0, %r31, $16	# lib.ml#24:10->24:21
	MVI	%r7, $2	# lib.ml#25:12->25:13
	DIV	%r7, %r9, %r7	# lib.ml#25:10->25:13
	SDR	%r0, %r31, $20	# lib.ml#25:2->25:16
	FSDR	%fr0, %r31, $24	# lib.ml#25:2->25:16
	MV	%r2, %r9	# lib.ml#25:2->25:16
	MV	%r1, %r7	# lib.ml#25:2->25:16
	MV	%r0, %r8	# lib.ml#25:2->25:16
	ADDI	%r31, %r31, $28	# lib.ml#25:2->25:16
	JLINKC	# lib.ml#25:2->25:16
	ADDI	%r31, %r31, $-28	# lib.ml#25:2->25:16
	LDR	%r0, %r31, $20	# lib.ml#25:2->25:16
	FLDR	%fr0, %r31, $24	# lib.ml#25:2->25:16
	LDR	%r9, %r31, $0	# lib.ml#19:2->25:16
	LDR	%r8, %r31, $4	# lib.ml#19:2->25:16
	LDR	%r7, %r31, $8	# lib.ml#19:2->25:16
	LINK	# lib.ml#19:2->25:16
search.890:
	SDR	%r9, %r31, $0	# lib.ml#22:4->23:86
	SDR	%r8, %r31, $4	# lib.ml#22:4->23:86
	FLDA	%fr9, $search.890, $4	# lib.ml#22:4->23:86
	SUB	%r8, %r2, %r1	# lib.ml#22:8->22:11
	MVI	%r9, $1	# lib.ml#22:14->22:15
	XOR	%r8, %r9	# lib.ml#22:4->23:86
	JZ	$if_eq.1345	# lib.ml#22:4->23:86
	ADD	%r8, %r1, %r2	# lib.ml#23:24->23:27
	MVI	%r9, $2	# lib.ml#23:29->23:30
	DIV	%r9, %r8, %r9	# lib.ml#23:23->23:30
	SDR	%r2, %r31, $8	# lib.ml#23:17->23:31
	SDR	%r1, %r31, $12	# lib.ml#23:17->23:31
	SDR	%r0, %r31, $16	# lib.ml#23:17->23:31
	MV	%r0, %r9	# lib.ml#23:17->23:31
	ADDI	%r31, %r31, $20	# lib.ml#23:17->23:31
	JLINK	$itof.460	# lib.ml#23:17->23:31
	ADDI	%r31, %r31, $-20	# lib.ml#23:17->23:31
	FMV	%fr8, %fr0	# lib.ml#23:17->23:31
	LDR	%r2, %r31, $8	# lib.ml#23:17->23:31
	LDR	%r1, %r31, $12	# lib.ml#23:17->23:31
	LDR	%r0, %r31, $16	# lib.ml#23:17->23:31
	FCMP	%fr8, %fr9	# lib.ml#23:13->23:85
	FJLT	$if_flt.1347	# lib.ml#23:13->23:85
	MVI	%r9, $2	# lib.ml#23:83->23:84
	DIV	%r9, %r8, %r9	# lib.ml#23:77->23:84
	SDR	%r2, %r31, $20	# lib.ml#23:67->23:85
	SDR	%r1, %r31, $24	# lib.ml#23:67->23:85
	SDR	%r0, %r31, $28	# lib.ml#23:67->23:85
	LDR	%r2, %r31, $20	# lib.ml#23:67->23:85
	LDR	%r1, %r31, $24	# lib.ml#23:67->23:85
	LDR	%r0, %r31, $28	# lib.ml#23:67->23:85
	MV	%r2, %r9	# lib.ml#23:67->23:85
	ADDI	%r31, %r31, $32	# lib.ml#23:67->23:85
	JLINKC	# lib.ml#23:67->23:85
	ADDI	%r31, %r31, $-32	# lib.ml#23:67->23:85
	J	$if_flt_cont.1348	# lib.ml#23:13->23:85
if_flt.1347:
	MVI	%r9, $2	# lib.ml#23:57->23:58
	DIV	%r9, %r8, %r9	# lib.ml#23:51->23:58
	SDR	%r2, %r31, $32	# lib.ml#23:43->23:61
	SDR	%r1, %r31, $36	# lib.ml#23:43->23:61
	SDR	%r0, %r31, $40	# lib.ml#23:43->23:61
	LDR	%r2, %r31, $32	# lib.ml#23:43->23:61
	LDR	%r1, %r31, $36	# lib.ml#23:43->23:61
	LDR	%r0, %r31, $40	# lib.ml#23:43->23:61
	MV	%r1, %r9	# lib.ml#23:43->23:61
	ADDI	%r31, %r31, $44	# lib.ml#23:43->23:61
	JLINKC	# lib.ml#23:43->23:61
	ADDI	%r31, %r31, $-44	# lib.ml#23:43->23:61
if_flt_cont.1348:
	J	$if_eq_cont.1346	# lib.ml#22:4->23:86
if_eq.1345:
	LDA	%r0, $a.891	# lib.ml#23:3->23:4
if_eq_cont.1346:
	LDR	%r9, %r31, $0	# lib.ml#22:4->23:86
	LDR	%r8, %r31, $4	# lib.ml#22:4->23:86
	LINK	# lib.ml#22:4->23:86
searchsub.888:
	SDR	%r9, %r31, $0	# lib.ml#20:3->20:52
	SDR	%r8, %r31, $4	# lib.ml#20:3->20:52
	FLDA	%fr9, $searchsub.888, $4	# lib.ml#20:3->20:52
	SDR	%r1, %r31, $8	# lib.ml#20:8->20:14
	SDR	%r0, %r31, $12	# lib.ml#20:8->20:14
	MV	%r0, %r1	# lib.ml#20:8->20:14
	ADDI	%r31, %r31, $16	# lib.ml#20:8->20:14
	JLINK	$itof.460	# lib.ml#20:8->20:14
	ADDI	%r31, %r31, $-16	# lib.ml#20:8->20:14
	FMV	%fr8, %fr0	# lib.ml#20:8->20:14
	LDR	%r1, %r31, $8	# lib.ml#20:8->20:14
	LDR	%r0, %r31, $12	# lib.ml#20:8->20:14
	FCMP	%fr9, %fr8	# lib.ml#20:3->20:52
	FJLT	$if_flt.1349	# lib.ml#20:3->20:52
	LDA	%r0, $y.889	# lib.ml#20:51->20:52
	J	$if_flt_cont.1350	# lib.ml#20:3->20:52
if_flt.1349:
	MVI	%r9, $4	# lib.ml#20:40->20:41
	MUL	%r8, %r1, %r9	# lib.ml#20:38->20:41
	MVI	%r9, $2	# lib.ml#20:42->20:43
	DIV	%r9, %r8, %r9	# lib.ml#20:38->20:43
	SDR	%r1, %r31, $16	# lib.ml#20:27->20:44
	SDR	%r0, %r31, $20	# lib.ml#20:27->20:44
	LDR	%r1, %r31, $16	# lib.ml#20:27->20:44
	LDR	%r0, %r31, $20	# lib.ml#20:27->20:44
	MV	%r1, %r9	# lib.ml#20:27->20:44
	ADDI	%r31, %r31, $24	# lib.ml#20:27->20:44
	JLINKC	# lib.ml#20:27->20:44
	ADDI	%r31, %r31, $-24	# lib.ml#20:27->20:44
if_flt_cont.1350:
	LDR	%r9, %r31, $0	# lib.ml#20:3->20:52
	LDR	%r8, %r31, $4	# lib.ml#20:3->20:52
	LINK	# lib.ml#20:3->20:52
ftoi.463:
	SDR	%r9, %r31, $0	# lib.ml#11:2->17:16
	SDR	%r8, %r31, $4	# lib.ml#11:2->17:16
	SDR	%r7, %r31, $8	# lib.ml#11:2->17:16
	MV	%r9, %r30	# lib.ml#11:2->17:16
	ADDI	%r30, %r30, $8	# lib.ml#11:2->17:16
	MVI	%r8, $searchsub.915	# lib.ml#11:2->17:16
	SDA	%r8, $searchsub.915	# lib.ml#11:2->17:16
	FSDR	%fr0, %r9, $4	# lib.ml#11:2->17:16
	MV	%r8, %r30	# lib.ml#13:2->17:16
	ADDI	%r30, %r30, $8	# lib.ml#13:2->17:16
	MVI	%r7, $search.917	# lib.ml#13:2->17:16
	SDA	%r7, $search.917	# lib.ml#13:2->17:16
	FSDR	%fr0, %r8, $4	# lib.ml#13:2->17:16
	MVI	%r7, $1	# lib.ml#16:20->16:21
	SDR	%r0, %r31, $12	# lib.ml#16:10->16:21
	FSDR	%fr0, %r31, $16	# lib.ml#16:10->16:21
	MV	%r1, %r7	# lib.ml#16:10->16:21
	MV	%r0, %r9	# lib.ml#16:10->16:21
	ADDI	%r31, %r31, $20	# lib.ml#16:10->16:21
	JLINKC	# lib.ml#16:10->16:21
	ADDI	%r31, %r31, $-20	# lib.ml#16:10->16:21
	MV	%r9, %r0	# lib.ml#16:10->16:21
	LDR	%r0, %r31, $12	# lib.ml#16:10->16:21
	FLDR	%fr0, %r31, $16	# lib.ml#16:10->16:21
	MVI	%r7, $2	# lib.ml#17:12->17:13
	DIV	%r7, %r9, %r7	# lib.ml#17:10->17:13
	SDR	%r0, %r31, $20	# lib.ml#17:2->17:16
	FSDR	%fr0, %r31, $24	# lib.ml#17:2->17:16
	MV	%r2, %r9	# lib.ml#17:2->17:16
	MV	%r1, %r7	# lib.ml#17:2->17:16
	MV	%r0, %r8	# lib.ml#17:2->17:16
	ADDI	%r31, %r31, $28	# lib.ml#17:2->17:16
	JLINKC	# lib.ml#17:2->17:16
	ADDI	%r31, %r31, $-28	# lib.ml#17:2->17:16
	LDR	%r0, %r31, $20	# lib.ml#17:2->17:16
	FLDR	%fr0, %r31, $24	# lib.ml#17:2->17:16
	LDR	%r9, %r31, $0	# lib.ml#11:2->17:16
	LDR	%r8, %r31, $4	# lib.ml#11:2->17:16
	LDR	%r7, %r31, $8	# lib.ml#11:2->17:16
	LINK	# lib.ml#11:2->17:16
search.917:
	SDR	%r9, %r31, $0	# lib.ml#14:4->15:131
	SDR	%r8, %r31, $4	# lib.ml#14:4->15:131
	FLDA	%fr9, $search.917, $4	# lib.ml#14:4->15:131
	SUB	%r8, %r2, %r1	# lib.ml#14:8->14:11
	MVI	%r9, $1	# lib.ml#14:14->14:15
	XOR	%r8, %r9	# lib.ml#14:4->15:131
	JZ	$if_eq.1351	# lib.ml#14:4->15:131
	ADD	%r8, %r1, %r2	# lib.ml#15:70->15:73
	MVI	%r9, $2	# lib.ml#15:75->15:76
	DIV	%r9, %r8, %r9	# lib.ml#15:69->15:76
	SDR	%r2, %r31, $8	# lib.ml#15:63->15:77
	SDR	%r1, %r31, $12	# lib.ml#15:63->15:77
	SDR	%r0, %r31, $16	# lib.ml#15:63->15:77
	MV	%r0, %r9	# lib.ml#15:63->15:77
	ADDI	%r31, %r31, $20	# lib.ml#15:63->15:77
	JLINK	$itof.460	# lib.ml#15:63->15:77
	ADDI	%r31, %r31, $-20	# lib.ml#15:63->15:77
	FMV	%fr8, %fr0	# lib.ml#15:63->15:77
	LDR	%r2, %r31, $8	# lib.ml#15:63->15:77
	LDR	%r1, %r31, $12	# lib.ml#15:63->15:77
	LDR	%r0, %r31, $16	# lib.ml#15:63->15:77
	FCMP	%fr9, %fr8	# lib.ml#15:59->15:130
	FJLT	$if_flt.1353	# lib.ml#15:59->15:130
	MVI	%r9, $2	# lib.ml#15:128->15:129
	DIV	%r9, %r8, %r9	# lib.ml#15:122->15:129
	SDR	%r2, %r31, $20	# lib.ml#15:112->15:130
	SDR	%r1, %r31, $24	# lib.ml#15:112->15:130
	SDR	%r0, %r31, $28	# lib.ml#15:112->15:130
	LDR	%r2, %r31, $20	# lib.ml#15:112->15:130
	LDR	%r1, %r31, $24	# lib.ml#15:112->15:130
	LDR	%r0, %r31, $28	# lib.ml#15:112->15:130
	MV	%r2, %r9	# lib.ml#15:112->15:130
	ADDI	%r31, %r31, $32	# lib.ml#15:112->15:130
	JLINKC	# lib.ml#15:112->15:130
	ADDI	%r31, %r31, $-32	# lib.ml#15:112->15:130
	J	$if_flt_cont.1354	# lib.ml#15:59->15:130
if_flt.1353:
	MVI	%r9, $2	# lib.ml#15:102->15:103
	DIV	%r9, %r8, %r9	# lib.ml#15:96->15:103
	SDR	%r2, %r31, $32	# lib.ml#15:88->15:106
	SDR	%r1, %r31, $36	# lib.ml#15:88->15:106
	SDR	%r0, %r31, $40	# lib.ml#15:88->15:106
	LDR	%r2, %r31, $32	# lib.ml#15:88->15:106
	LDR	%r1, %r31, $36	# lib.ml#15:88->15:106
	LDR	%r0, %r31, $40	# lib.ml#15:88->15:106
	MV	%r1, %r9	# lib.ml#15:88->15:106
	ADDI	%r31, %r31, $44	# lib.ml#15:88->15:106
	JLINKC	# lib.ml#15:88->15:106
	ADDI	%r31, %r31, $-44	# lib.ml#15:88->15:106
if_flt_cont.1354:
	J	$if_eq_cont.1352	# lib.ml#14:4->15:131
if_eq.1351:
	SDR	%r2, %r31, $44	# lib.ml#15:9->15:15
	SDR	%r1, %r31, $48	# lib.ml#15:9->15:15
	SDR	%r0, %r31, $52	# lib.ml#15:9->15:15
	MV	%r0, %r2	# lib.ml#15:9->15:15
	ADDI	%r31, %r31, $56	# lib.ml#15:9->15:15
	JLINK	$itof.460	# lib.ml#15:9->15:15
	ADDI	%r31, %r31, $-56	# lib.ml#15:9->15:15
	FMV	%fr8, %fr0	# lib.ml#15:9->15:15
	LDR	%r2, %r31, $44	# lib.ml#15:9->15:15
	LDR	%r1, %r31, $48	# lib.ml#15:9->15:15
	LDR	%r0, %r31, $52	# lib.ml#15:9->15:15
	FSUB	%fr7, %fr8, %fr9	# lib.ml#15:8->15:19
	SDR	%r2, %r31, $56	# lib.ml#15:26->15:32
	SDR	%r1, %r31, $60	# lib.ml#15:26->15:32
	SDR	%r0, %r31, $64	# lib.ml#15:26->15:32
	MV	%r0, %r1	# lib.ml#15:26->15:32
	ADDI	%r31, %r31, $68	# lib.ml#15:26->15:32
	JLINK	$itof.460	# lib.ml#15:26->15:32
	ADDI	%r31, %r31, $-68	# lib.ml#15:26->15:32
	FMV	%fr8, %fr0	# lib.ml#15:26->15:32
	LDR	%r2, %r31, $56	# lib.ml#15:26->15:32
	LDR	%r1, %r31, $60	# lib.ml#15:26->15:32
	LDR	%r0, %r31, $64	# lib.ml#15:26->15:32
	FSUB	%fr9, %fr9, %fr8	# lib.ml#15:22->15:33
	FCMP	%fr7, %fr9	# lib.ml#15:4->15:48
	FJLT	$if_flt.1355	# lib.ml#15:4->15:48
	LDA	%r0, $b.919	# lib.ml#15:47->15:48
	J	$if_flt_cont.1356	# lib.ml#15:4->15:48
if_flt.1355:
	LDA	%r0, $a.918	# lib.ml#15:40->15:41
if_flt_cont.1356:
if_eq_cont.1352:
	LDR	%r9, %r31, $0	# lib.ml#14:4->15:131
	LDR	%r8, %r31, $4	# lib.ml#14:4->15:131
	LINK	# lib.ml#14:4->15:131
searchsub.915:
	SDR	%r9, %r31, $0	# lib.ml#12:3->12:52
	SDR	%r8, %r31, $4	# lib.ml#12:3->12:52
	FLDA	%fr9, $searchsub.915, $4	# lib.ml#12:3->12:52
	SDR	%r1, %r31, $8	# lib.ml#12:8->12:14
	SDR	%r0, %r31, $12	# lib.ml#12:8->12:14
	MV	%r0, %r1	# lib.ml#12:8->12:14
	ADDI	%r31, %r31, $16	# lib.ml#12:8->12:14
	JLINK	$itof.460	# lib.ml#12:8->12:14
	ADDI	%r31, %r31, $-16	# lib.ml#12:8->12:14
	FMV	%fr8, %fr0	# lib.ml#12:8->12:14
	LDR	%r1, %r31, $8	# lib.ml#12:8->12:14
	LDR	%r0, %r31, $12	# lib.ml#12:8->12:14
	FCMP	%fr9, %fr8	# lib.ml#12:3->12:52
	FJLT	$if_flt.1357	# lib.ml#12:3->12:52
	LDA	%r0, $y.916	# lib.ml#12:51->12:52
	J	$if_flt_cont.1358	# lib.ml#12:3->12:52
if_flt.1357:
	MVI	%r9, $4	# lib.ml#12:40->12:41
	MUL	%r8, %r1, %r9	# lib.ml#12:38->12:41
	MVI	%r9, $2	# lib.ml#12:42->12:43
	DIV	%r9, %r8, %r9	# lib.ml#12:38->12:43
	SDR	%r1, %r31, $16	# lib.ml#12:27->12:44
	SDR	%r0, %r31, $20	# lib.ml#12:27->12:44
	LDR	%r1, %r31, $16	# lib.ml#12:27->12:44
	LDR	%r0, %r31, $20	# lib.ml#12:27->12:44
	MV	%r1, %r9	# lib.ml#12:27->12:44
	ADDI	%r31, %r31, $24	# lib.ml#12:27->12:44
	JLINKC	# lib.ml#12:27->12:44
	ADDI	%r31, %r31, $-24	# lib.ml#12:27->12:44
if_flt_cont.1358:
	LDR	%r9, %r31, $0	# lib.ml#12:3->12:52
	LDR	%r8, %r31, $4	# lib.ml#12:3->12:52
	LINK	# lib.ml#12:3->12:52
itof.460:
	SDR	%r9, %r31, $0	# lib.ml#1:25->1:26
	XOR	%r9, %r9, %r9	# lib.ml#1:25->1:26
	CMP	%r9, %r1	# lib.ml#1:18->9:38
	JZ	$if_lt.1359	# lib.ml#1:18->9:38
	FLDA	%fr9, $l.996	# lib.ml#9:21->9:23
	MVI	%r9, $1	# lib.ml#9:24->9:25
	SDR	%r1, %r31, $4	# lib.ml#9:13->9:25
	SDR	%r0, %r31, $8	# lib.ml#9:13->9:25
	MV	%r0, %r1	# lib.ml#9:13->9:25
	MV	%r1, %r9	# lib.ml#9:13->9:25
	FMV	%fr0, %fr9	# lib.ml#9:13->9:25
	ADDI	%r31, %r31, $12	# lib.ml#9:13->9:25
	JLINK	$loopa.947	# lib.ml#9:13->9:25
	ADDI	%r31, %r31, $-12	# lib.ml#9:13->9:25
	FMV	%fr9, %fr0	# lib.ml#9:13->9:25
	LDR	%r1, %r31, $4	# lib.ml#9:13->9:25
	LDR	%r0, %r31, $8	# lib.ml#9:13->9:25
	MVI	%r9, $1	# lib.ml#9:36->9:37
	SDR	%r1, %r31, $12	# lib.ml#9:28->9:37
	SDR	%r0, %r31, $16	# lib.ml#9:28->9:37
	MV	%r0, %r1	# lib.ml#9:28->9:37
	MV	%r1, %r9	# lib.ml#9:28->9:37
	ADDI	%r31, %r31, $20	# lib.ml#9:28->9:37
	JLINK	$loopb.951	# lib.ml#9:28->9:37
	ADDI	%r31, %r31, $-20	# lib.ml#9:28->9:37
	MV	%r9, %r0	# lib.ml#9:28->9:37
	LDR	%r1, %r31, $12	# lib.ml#9:28->9:37
	LDR	%r0, %r31, $16	# lib.ml#9:28->9:37
	SDR	%r1, %r31, $20	# lib.ml#9:2->9:38
	SDR	%r0, %r31, $24	# lib.ml#9:2->9:38
	LDR	%r1, %r31, $20	# lib.ml#9:2->9:38
	LDR	%r0, %r31, $24	# lib.ml#9:2->9:38
	MV	%r0, %r1	# lib.ml#9:2->9:38
	MV	%r1, %r9	# lib.ml#9:2->9:38
	FMV	%fr0, %fr9	# lib.ml#9:2->9:38
	ADDI	%r31, %r31, $28	# lib.ml#9:2->9:38
	JLINK	$itofsub.954	# lib.ml#9:2->9:38
	ADDI	%r31, %r31, $-28	# lib.ml#9:2->9:38
	J	$if_lt_cont.1360	# lib.ml#1:18->9:38
if_lt.1359:
	NEG2	%r9, %r1	# lib.ml#1:41->1:43
	SDR	%r1, %r31, $28	# lib.ml#1:35->1:44
	SDR	%r0, %r31, $32	# lib.ml#1:35->1:44
	MV	%r0, %r9	# lib.ml#1:35->1:44
	ADDI	%r31, %r31, $36	# lib.ml#1:35->1:44
	JLINK	$itof.460	# lib.ml#1:35->1:44
	ADDI	%r31, %r31, $-36	# lib.ml#1:35->1:44
	FMV	%fr9, %fr0	# lib.ml#1:35->1:44
	LDR	%r1, %r31, $28	# lib.ml#1:35->1:44
	LDR	%r0, %r31, $32	# lib.ml#1:35->1:44
	FNEG2	%fr0, %fr9	# lib.ml#1:32->1:45
if_lt_cont.1360:
	LDR	%r9, %r31, $0	# lib.ml#1:25->1:26
	LINK	# lib.ml#1:25->1:26
itofsub.954:
	SDR	%r9, %r31, $0	# lib.ml#7:3->8:58
	SDR	%r8, %r31, $4	# lib.ml#7:3->8:58
	CMP	%r2, %r1	# lib.ml#7:3->8:58
	JZ	$if_lt.1361	# lib.ml#7:3->8:58
	MVI	%r9, $1	# lib.ml#8:16->8:17
	XOR	%r2, %r9	# lib.ml#8:9->8:57
	JZ	$if_eq.1363	# lib.ml#8:9->8:57
	FLDA	%fr9, $l.994	# lib.ml#8:47->8:49
	FDIV	%fr9, %fr0, %fr9	# lib.ml#8:44->8:49
	MVI	%r9, $2	# lib.ml#8:54->8:55
	DIV	%r9, %r2, %r9	# lib.ml#8:52->8:55
	SDR	%r2, %r31, $8	# lib.ml#8:33->8:56
	SDR	%r1, %r31, $12	# lib.ml#8:33->8:56
	SDR	%r0, %r31, $16	# lib.ml#8:33->8:56
	FSDR	%fr0, %r31, $20	# lib.ml#8:33->8:56
	LDR	%r2, %r31, $8	# lib.ml#8:33->8:56
	LDR	%r1, %r31, $12	# lib.ml#8:33->8:56
	LDR	%r0, %r31, $16	# lib.ml#8:33->8:56
	FLDR	%fr0, %r31, $20	# lib.ml#8:33->8:56
	MV	%r0, %r1	# lib.ml#8:33->8:56
	MV	%r1, %r9	# lib.ml#8:33->8:56
	FMV	%fr0, %fr9	# lib.ml#8:33->8:56
	ADDI	%r31, %r31, $24	# lib.ml#8:33->8:56
	JLINK	$itofsub.954	# lib.ml#8:33->8:56
	ADDI	%r31, %r31, $-24	# lib.ml#8:33->8:56
	J	$if_eq_cont.1364	# lib.ml#8:9->8:57
if_eq.1363:
	FLDA	%fr0, $l.995	# lib.ml#8:23->8:26
if_eq_cont.1364:
	J	$if_lt_cont.1362	# lib.ml#7:3->8:58
if_lt.1361:
	MVI	%r9, $1	# lib.ml#7:31->7:32
	XOR	%r2, %r9	# lib.ml#7:24->7:76
	JZ	$if_eq.1365	# lib.ml#7:24->7:76
	SUB	%r8, %r1, %r2	# lib.ml#7:57->7:60
	FLDA	%fr9, $l.994	# lib.ml#7:66->7:68
	FDIV	%fr9, %fr0, %fr9	# lib.ml#7:63->7:68
	MVI	%r9, $2	# lib.ml#7:73->7:74
	DIV	%r9, %r2, %r9	# lib.ml#7:71->7:74
	SDR	%r2, %r31, $24	# lib.ml#7:48->7:75
	SDR	%r1, %r31, $28	# lib.ml#7:48->7:75
	SDR	%r0, %r31, $32	# lib.ml#7:48->7:75
	FSDR	%fr0, %r31, $36	# lib.ml#7:48->7:75
	LDR	%r2, %r31, $24	# lib.ml#7:48->7:75
	LDR	%r1, %r31, $28	# lib.ml#7:48->7:75
	LDR	%r0, %r31, $32	# lib.ml#7:48->7:75
	FLDR	%fr0, %r31, $36	# lib.ml#7:48->7:75
	MV	%r1, %r9	# lib.ml#7:48->7:75
	MV	%r0, %r8	# lib.ml#7:48->7:75
	FMV	%fr0, %fr9	# lib.ml#7:48->7:75
	ADDI	%r31, %r31, $40	# lib.ml#7:48->7:75
	JLINK	$itofsub.954	# lib.ml#7:48->7:75
	ADDI	%r31, %r31, $-40	# lib.ml#7:48->7:75
	FMV	%fr9, %fr0	# lib.ml#7:48->7:75
	J	$if_eq_cont.1366	# lib.ml#7:24->7:76
if_eq.1365:
	FLDA	%fr9, $l.995	# lib.ml#7:38->7:41
if_eq_cont.1366:
	FADD	%fr0, %fr0, %fr9	# lib.ml#7:18->7:77
if_lt_cont.1362:
	LDR	%r9, %r31, $0	# lib.ml#7:3->8:58
	LDR	%r8, %r31, $4	# lib.ml#7:3->8:58
	LINK	# lib.ml#7:3->8:58
loopb.951:
	SDR	%r9, %r31, $0	# lib.ml#5:8->5:9
	SDR	%r8, %r31, $4	# lib.ml#5:8->5:9
	MVI	%r9, $4	# lib.ml#5:8->5:9
	MUL	%r8, %r2, %r9	# lib.ml#5:6->5:9
	MVI	%r9, $2	# lib.ml#5:10->5:11
	DIV	%r9, %r8, %r9	# lib.ml#5:6->5:11
	CMP	%r9, %r1	# lib.ml#5:3->5:43
	JZ	$if_lt.1367	# lib.ml#5:3->5:43
	MVI	%r9, $4	# lib.ml#5:39->5:40
	MUL	%r8, %r2, %r9	# lib.ml#5:37->5:40
	MVI	%r9, $2	# lib.ml#5:41->5:42
	DIV	%r9, %r8, %r9	# lib.ml#5:37->5:42
	SDR	%r2, %r31, $8	# lib.ml#5:28->5:43
	SDR	%r1, %r31, $12	# lib.ml#5:28->5:43
	SDR	%r0, %r31, $16	# lib.ml#5:28->5:43
	LDR	%r2, %r31, $8	# lib.ml#5:28->5:43
	LDR	%r1, %r31, $12	# lib.ml#5:28->5:43
	LDR	%r0, %r31, $16	# lib.ml#5:28->5:43
	MV	%r0, %r1	# lib.ml#5:28->5:43
	MV	%r1, %r9	# lib.ml#5:28->5:43
	ADDI	%r31, %r31, $20	# lib.ml#5:28->5:43
	JLINK	$loopb.951	# lib.ml#5:28->5:43
	ADDI	%r31, %r31, $-20	# lib.ml#5:28->5:43
	J	$if_lt_cont.1368	# lib.ml#5:3->5:43
if_lt.1367:
	LDA	%r0, $k.953	# lib.ml#5:21->5:22
if_lt_cont.1368:
	LDR	%r9, %r31, $0	# lib.ml#5:8->5:9
	LDR	%r8, %r31, $4	# lib.ml#5:8->5:9
	LINK	# lib.ml#5:8->5:9
loopa.947:
	SDR	%r9, %r31, $0	# lib.ml#3:8->3:9
	SDR	%r8, %r31, $4	# lib.ml#3:8->3:9
	MVI	%r9, $4	# lib.ml#3:8->3:9
	MUL	%r8, %r2, %r9	# lib.ml#3:6->3:9
	MVI	%r9, $2	# lib.ml#3:10->3:11
	DIV	%r9, %r8, %r9	# lib.ml#3:6->3:11
	CMP	%r9, %r1	# lib.ml#3:3->3:50
	JZ	$if_lt.1369	# lib.ml#3:3->3:50
	FADD	%fr9, %fr0, %fr0	# lib.ml#3:37->3:41
	MVI	%r9, $4	# lib.ml#3:46->3:47
	MUL	%r8, %r2, %r9	# lib.ml#3:44->3:47
	MVI	%r9, $2	# lib.ml#3:48->3:49
	DIV	%r9, %r8, %r9	# lib.ml#3:44->3:49
	SDR	%r2, %r31, $8	# lib.ml#3:28->3:50
	SDR	%r1, %r31, $12	# lib.ml#3:28->3:50
	SDR	%r0, %r31, $16	# lib.ml#3:28->3:50
	FSDR	%fr0, %r31, $20	# lib.ml#3:28->3:50
	LDR	%r2, %r31, $8	# lib.ml#3:28->3:50
	LDR	%r1, %r31, $12	# lib.ml#3:28->3:50
	LDR	%r0, %r31, $16	# lib.ml#3:28->3:50
	FLDR	%fr0, %r31, $20	# lib.ml#3:28->3:50
	MV	%r0, %r1	# lib.ml#3:28->3:50
	MV	%r1, %r9	# lib.ml#3:28->3:50
	FMV	%fr0, %fr9	# lib.ml#3:28->3:50
	ADDI	%r31, %r31, $24	# lib.ml#3:28->3:50
	JLINK	$loopa.947	# lib.ml#3:28->3:50
	ADDI	%r31, %r31, $-24	# lib.ml#3:28->3:50
	J	$if_lt_cont.1370	# lib.ml#3:3->3:50
if_lt.1369:
	FLDA	%fr0, $j.949	# lib.ml#3:21->3:22
if_lt_cont.1370:
	LDR	%r9, %r31, $0	# lib.ml#3:8->3:9
	LDR	%r8, %r31, $4	# lib.ml#3:8->3:9
	LINK	# lib.ml#3:8->3:9
min_caml_start:
	SDR	%r9, %r31, $0	# lib.ml#9:47->9:48
	MVI	%r9, $2	# lib.ml#9:47->9:48
	MV	%r0, %r9	# lib.ml#9:42->9:48
	ADDI	%r31, %r31, $4	# lib.ml#9:42->9:48
	JLINK	$itof.460	# lib.ml#9:42->9:48
	ADDI	%r31, %r31, $-4	# lib.ml#9:42->9:48
	FMV	%fr9, %fr0	# lib.ml#9:42->9:48
	FLDA	%fr9, $l.994	# lib.ml#17:25->17:27
	FMV	%fr0, %fr9	# lib.ml#17:20->17:27
	ADDI	%r31, %r31, $4	# lib.ml#17:20->17:27
	JLINK	$ftoi.463	# lib.ml#17:20->17:27
	ADDI	%r31, %r31, $-4	# lib.ml#17:20->17:27
	MV	%r9, %r0	# lib.ml#17:20->17:27
	FLDA	%fr9, $l.994	# lib.ml#25:26->25:29
	FMV	%fr0, %fr9	# lib.ml#25:20->25:29
	ADDI	%r31, %r31, $4	# lib.ml#25:20->25:29
	JLINK	$floor.466	# lib.ml#25:20->25:29
	ADDI	%r31, %r31, $-4	# lib.ml#25:20->25:29
	MV	%r9, %r0	# lib.ml#25:20->25:29
	FLDA	%fr9, $l.994	# lib.ml#29:22->29:25
	FMV	%fr0, %fr9	# lib.ml#29:17->29:25
	ADDI	%r31, %r31, $4	# lib.ml#29:17->29:25
	JLINK	$sqrt.469	# lib.ml#29:17->29:25
	ADDI	%r31, %r31, $-4	# lib.ml#29:17->29:25
	FMV	%fr9, %fr0	# lib.ml#29:17->29:25
	FLDA	%fr9, $l.996	# lib.ml#37:61->37:64
	FMV	%fr0, %fr9	# lib.ml#37:54->37:64
	ADDI	%r31, %r31, $4	# lib.ml#37:54->37:64
	JLINK	$arctan.472	# lib.ml#37:54->37:64
	ADDI	%r31, %r31, $-4	# lib.ml#37:54->37:64
	FMV	%fr9, %fr0	# lib.ml#37:54->37:64
	FLDA	%fr9, $l.996	# lib.ml#50:49->50:52
	FMV	%fr0, %fr9	# lib.ml#50:45->50:52
	ADDI	%r31, %r31, $4	# lib.ml#50:45->50:52
	JLINK	$cos.475	# lib.ml#50:45->50:52
	ADDI	%r31, %r31, $-4	# lib.ml#50:45->50:52
	FMV	%fr9, %fr0	# lib.ml#50:45->50:52
	FLDA	%fr9, $l.996	# lib.ml#63:48->63:51
	FMV	%fr0, %fr9	# lib.ml#63:44->63:51
	ADDI	%r31, %r31, $4	# lib.ml#63:44->63:51
	JLINK	$sin.478	# lib.ml#63:44->63:51
	ADDI	%r31, %r31, $-4	# lib.ml#63:44->63:51
	FMV	%fr9, %fr0	# lib.ml#63:44->63:51
	MVI	%r9, $3	# lib.ml#82:18->82:19
	MV	%r0, %r9	# lib.ml#82:8->82:19
	ADDI	%r31, %r31, $4	# lib.ml#82:8->82:19
	JLINK	$print_int.481	# lib.ml#82:8->82:19
	ADDI	%r31, %r31, $-4	# lib.ml#82:8->82:19
	ADDI	%r31, %r31, $4	# lib.ml#83:44->83:60
	JLINK	$print_newline.484	# lib.ml#83:44->83:60
	ADDI	%r31, %r31, $-4	# lib.ml#83:44->83:60
	ADDI	%r31, %r31, $4	# lib.ml#84:42->84:56
	JLINK	$print_space.487	# lib.ml#84:42->84:56
	ADDI	%r31, %r31, $-4	# lib.ml#84:42->84:56
	LDR	%r9, %r31, $0	# lib.ml#9:47->9:48
	LINK	# lib.ml#9:47->9:48
