.data
.align	4
min_caml_l.1139:	#0.100000 lib.ml#119:26->119:29
	.long	3dcccccd
min_caml_l.1138:	#-0.000000 lib.ml#28:75->28:86
	.long	b3d6bf95
min_caml_l.1137:	#0.000000 lib.ml#28:31->28:40
	.long	33d6bf95
min_caml_l.1136:	#1.570796 lib.ml#37:5->37:22
	.long	3fc90fdb
min_caml_l.1135:	#6.000000 lib.ml#54:90->54:93
	.long	40c00000
min_caml_l.1134:	#5040.000000 lib.ml#54:69->54:75
	.long	459d8000
min_caml_l.1133:	#120.000000 lib.ml#54:37->54:42
	.long	42f00000
min_caml_l.1132:	#1.000000 lib.ml#55:118->55:121
	.long	3f800000
min_caml_l.1131:	#24.000000 lib.ml#55:94->55:98
	.long	41c00000
min_caml_l.1130:	#720.000000 lib.ml#55:71->55:76
	.long	44340000
min_caml_l.1129:	#40320.000000 lib.ml#55:40->55:47
	.long	471d8000
min_caml_l.1128:	#5.497787 lib.ml#62:9->62:31
	.long	40afeddf
min_caml_l.1127:	#4.712389 lib.ml#61:9->61:31
	.long	4096cbe4
min_caml_l.1126:	#3.926991 lib.ml#60:9->60:31
	.long	407b53d1
min_caml_l.1125:	#3.141593 lib.ml#59:9->59:31
	.long	40490fdb
min_caml_l.1124:	#2.356194 lib.ml#58:9->58:31
	.long	4016cbe4
min_caml_l.1123:	#1.570796 lib.ml#57:9->57:31
	.long	3fc90fdb
min_caml_l.1122:	#8.000000 lib.ml#53:41->53:44
	.long	41000000
min_caml_l.1121:	#0.785398 lib.ml#53:20->53:37
	.long	3f490fdb
min_caml_l.1120:	#6.283185 lib.ml#52:38->52:62
	.long	40c90fdb
min_caml_l.1119:	#0.000000 lib.ml#89:24->89:27
	.long	00000000
min_caml_l.1118:	#2.000000 lib.ml#91:24->91:27
	.long	40000000
min_caml_l.1403:	#33554432 lib.ml#9:63->9:64
	.long	02000000
min_caml_l.1402:	#1048576 lib.ml#9:63->9:64
	.long	00100000
.align	4
.text
min_caml_create_float_array:
	SDR	%r9, %r31, $0	# lib.ml#115:14->115:19
	FOUR	%r9, %r1	# lib.ml#115:14->115:19
	ADD	%r30, %r30, %r9	# lib.ml#115:14->115:19
	MV	%r9, %r30	# lib.ml#115:14->115:19
	SDR	%r1, %r31, $4	# lib.ml#117:8->117:31
	SDR	%r0, %r31, $8	# lib.ml#117:8->117:31
	FSDR	%fr0, %r31, $12	# lib.ml#117:8->117:31
	MV	%r0, %r9	# lib.ml#117:8->117:31
	ADDI	%r31, %r31, $16	# lib.ml#117:8->117:31
	ADDI	%r31, %r31, $4	# lib.ml#117:8->117:31
	SIP	# lib.ml#117:8->117:31
	J	$min_caml_copy_loop.560	# lib.ml#117:8->117:31
	ADDI	%r31, %r31, $-16	# lib.ml#117:8->117:31
	LDR	%r1, %r31, $4	# lib.ml#117:8->117:31
	LDR	%r0, %r31, $8	# lib.ml#117:8->117:31
	FLDR	%fr0, %r31, $12	# lib.ml#117:8->117:31
	LDR	%r9, %r31, $0	# lib.ml#115:14->115:19
	LINK	# lib.ml#115:14->115:19
min_caml_copy_loop.560:
	SDR	%r9, %r31, $0	# lib.ml#108:17->108:18
	MVI	%r9, $0	# lib.ml#108:17->108:18
	CMP	%r9, %r2	# lib.ml#108:8->113:13
	JZ	$min_caml_if_lt.1404	# lib.ml#108:8->113:13
	FSDD	%fr0, %r1, $4, %r2	# lib.ml#111:12->111:30
	MVI	%r9, $1	# lib.ml#112:33->112:34
	SUB	%r9, %r2, %r9	# lib.ml#112:27->112:34
	SDR	%r2, %r31, $4	# lib.ml#112:12->112:41
	SDR	%r1, %r31, $8	# lib.ml#112:12->112:41
	SDR	%r0, %r31, $12	# lib.ml#112:12->112:41
	FSDR	%fr0, %r31, $16	# lib.ml#112:12->112:41
	LDR	%r2, %r31, $4	# lib.ml#112:12->112:41
	LDR	%r1, %r31, $8	# lib.ml#112:12->112:41
	LDR	%r0, %r31, $12	# lib.ml#112:12->112:41
	FLDR	%fr0, %r31, $16	# lib.ml#112:12->112:41
	MV	%r0, %r1	# lib.ml#112:12->112:41
	MV	%r1, %r9	# lib.ml#112:12->112:41
	ADDI	%r31, %r31, $20	# lib.ml#112:12->112:41
	ADDI	%r31, %r31, $4	# lib.ml#112:12->112:41
	SIP	# lib.ml#112:12->112:41
	J	$min_caml_copy_loop.560	# lib.ml#112:12->112:41
	ADDI	%r31, %r31, $-20	# lib.ml#112:12->112:41
	J	$min_caml_if_lt_cont.1405	# lib.ml#108:8->113:13
min_caml_if_lt.1404:
	MV	%r0, %r1	# lib.ml#108:24->108:27
min_caml_if_lt_cont.1405:
	LDR	%r9, %r31, $0	# lib.ml#108:17->108:18
	LINK	# lib.ml#108:17->108:18
min_caml_create_int_array:
	SDR	%r9, %r31, $0	# lib.ml#102:14->102:19
	FOUR	%r9, %r1	# lib.ml#102:14->102:19
	ADD	%r30, %r30, %r9	# lib.ml#102:14->102:19
	MV	%r9, %r30	# lib.ml#102:14->102:19
	SDR	%r2, %r31, $4	# lib.ml#104:8->104:31
	SDR	%r1, %r31, $8	# lib.ml#104:8->104:31
	SDR	%r0, %r31, $12	# lib.ml#104:8->104:31
	MV	%r0, %r9	# lib.ml#104:8->104:31
	ADDI	%r31, %r31, $16	# lib.ml#104:8->104:31
	ADDI	%r31, %r31, $4	# lib.ml#104:8->104:31
	SIP	# lib.ml#104:8->104:31
	J	$min_caml_copy_loop.572	# lib.ml#104:8->104:31
	ADDI	%r31, %r31, $-16	# lib.ml#104:8->104:31
	LDR	%r2, %r31, $4	# lib.ml#104:8->104:31
	LDR	%r1, %r31, $8	# lib.ml#104:8->104:31
	LDR	%r0, %r31, $12	# lib.ml#104:8->104:31
	LDR	%r9, %r31, $0	# lib.ml#102:14->102:19
	LINK	# lib.ml#102:14->102:19
min_caml_copy_loop.572:
	SDR	%r9, %r31, $0	# lib.ml#95:17->95:18
	MVI	%r9, $0	# lib.ml#95:17->95:18
	CMP	%r9, %r2	# lib.ml#95:8->100:13
	JZ	$min_caml_if_lt.1406	# lib.ml#95:8->100:13
	SDD	%r3, %r1, $4, %r2	# lib.ml#98:12->98:30
	MVI	%r9, $1	# lib.ml#99:33->99:34
	SUB	%r9, %r2, %r9	# lib.ml#99:27->99:34
	SDR	%r3, %r31, $4	# lib.ml#99:12->99:41
	SDR	%r2, %r31, $8	# lib.ml#99:12->99:41
	SDR	%r1, %r31, $12	# lib.ml#99:12->99:41
	SDR	%r0, %r31, $16	# lib.ml#99:12->99:41
	LDR	%r3, %r31, $4	# lib.ml#99:12->99:41
	LDR	%r2, %r31, $8	# lib.ml#99:12->99:41
	LDR	%r1, %r31, $12	# lib.ml#99:12->99:41
	LDR	%r0, %r31, $16	# lib.ml#99:12->99:41
	MV	%r2, %r3	# lib.ml#99:12->99:41
	MV	%r0, %r1	# lib.ml#99:12->99:41
	MV	%r1, %r9	# lib.ml#99:12->99:41
	ADDI	%r31, %r31, $20	# lib.ml#99:12->99:41
	ADDI	%r31, %r31, $4	# lib.ml#99:12->99:41
	SIP	# lib.ml#99:12->99:41
	J	$min_caml_copy_loop.572	# lib.ml#99:12->99:41
	ADDI	%r31, %r31, $-20	# lib.ml#99:12->99:41
	J	$min_caml_if_lt_cont.1407	# lib.ml#95:8->100:13
min_caml_if_lt.1406:
	MV	%r0, %r1	# lib.ml#95:24->95:27
min_caml_if_lt_cont.1407:
	LDR	%r9, %r31, $0	# lib.ml#95:17->95:18
	LINK	# lib.ml#95:17->95:18
min_caml_fless:
	FCMP	%fr1, %fr0	# lib.ml#92:21->92:26
	FJLT	$min_caml_if_flt.1408	# lib.ml#92:21->92:26
	MVI	%r0, $0	# lib.ml#92:21->92:26
	J	$min_caml_if_flt_cont.1409	# lib.ml#92:21->92:26
min_caml_if_flt.1408:
	MVI	%r0, $1	# lib.ml#92:21->92:26
min_caml_if_flt_cont.1409:
	LINK	# lib.ml#92:21->92:26
min_caml_fhalf:
	FLDA	%fr1, $min_caml_l.1118	# lib.ml#91:24->91:27
	FDIV	%fr0, %fr0, %fr1	# lib.ml#91:19->91:27
	LINK	# lib.ml#91:24->91:27
min_caml_fsqr:
	FMUL	%fr0, %fr0, %fr0	# lib.ml#90:18->90:24
	LINK	# lib.ml#90:18->90:24
min_caml_fisneg:
	FLDA	%fr1, $min_caml_l.1119	# lib.ml#89:24->89:27
	FCMP	%fr1, %fr0	# lib.ml#89:20->89:27
	FJLT	$min_caml_if_flt.1410	# lib.ml#89:20->89:27
	MVI	%r0, $0	# lib.ml#89:20->89:27
	J	$min_caml_if_flt_cont.1411	# lib.ml#89:20->89:27
min_caml_if_flt.1410:
	MVI	%r0, $1	# lib.ml#89:20->89:27
min_caml_if_flt_cont.1411:
	LINK	# lib.ml#89:24->89:27
min_caml_fneg:
	FNEG1	%fr0	# lib.ml#88:18->88:22
	LINK	# lib.ml#88:18->88:22
min_caml_fispos:
	FLDA	%fr1, $min_caml_l.1119	# lib.ml#87:24->87:27
	FCMP	%fr0, %fr1	# lib.ml#87:20->87:27
	FJLT	$min_caml_if_flt.1412	# lib.ml#87:20->87:27
	MVI	%r0, $0	# lib.ml#87:20->87:27
	J	$min_caml_if_flt_cont.1413	# lib.ml#87:20->87:27
min_caml_if_flt.1412:
	MVI	%r0, $1	# lib.ml#87:20->87:27
min_caml_if_flt_cont.1413:
	LINK	# lib.ml#87:24->87:27
min_caml_fiszero:
	FLDA	%fr1, $min_caml_l.1119	# lib.ml#86:25->86:28
	FCMP	%fr0, %fr1	# lib.ml#86:21->86:28
	FJEQ	$min_caml_if_feq.1414	# lib.ml#86:21->86:28
	MVI	%r0, $0	# lib.ml#86:21->86:28
	J	$min_caml_if_feq_cont.1415	# lib.ml#86:21->86:28
min_caml_if_feq.1414:
	MVI	%r0, $1	# lib.ml#86:21->86:28
min_caml_if_feq_cont.1415:
	LINK	# lib.ml#86:25->86:28
min_caml_print_char:
	PRINT	%r1	# lib.ml#85:24->85:36
	LINK	# lib.ml#85:24->85:36
min_caml_print_space:
	MVI	%r0, $32	# lib.ml#84:36->84:38
	PRINT	%r0	# lib.ml#84:25->84:38
	LINK	# lib.ml#84:36->84:38
min_caml_print_newline:
	MVI	%r0, $10	# lib.ml#83:38->83:40
	PRINT	%r0	# lib.ml#83:27->83:40
	LINK	# lib.ml#83:38->83:40
min_caml_print_int:
	SDR	%r9, %r31, $0	# lib.ml#81:91->81:92
	MVI	%r9, $1	# lib.ml#81:91->81:92
	SDR	%r1, %r31, $4	# lib.ml#81:78->81:92
	SDR	%r0, %r31, $8	# lib.ml#81:78->81:92
	MV	%r0, %r1	# lib.ml#81:78->81:92
	MV	%r1, %r9	# lib.ml#81:78->81:92
	ADDI	%r31, %r31, $12	# lib.ml#81:78->81:92
	ADDI	%r31, %r31, $4	# lib.ml#81:78->81:92
	SIP	# lib.ml#81:78->81:92
	J	$min_caml_print_loop.609	# lib.ml#81:78->81:92
	ADDI	%r31, %r31, $-12	# lib.ml#81:78->81:92
	MV	%r9, %r0	# lib.ml#81:78->81:92
	LDR	%r1, %r31, $4	# lib.ml#81:78->81:92
	LDR	%r0, %r31, $8	# lib.ml#81:78->81:92
	LDR	%r9, %r31, $0	# lib.ml#81:91->81:92
	LINK	# lib.ml#81:91->81:92
min_caml_print_loop.609:
	SDR	%r9, %r31, $0	# lib.ml#80:19->80:25
	SDR	%r1, %r31, $4	# lib.ml#80:19->80:25
	SDR	%r0, %r31, $8	# lib.ml#80:19->80:25
	MV	%r0, %r2	# lib.ml#80:19->80:25
	ADDI	%r31, %r31, $12	# lib.ml#80:19->80:25
	ADDI	%r31, %r31, $4	# lib.ml#80:19->80:25
	SIP	# lib.ml#80:19->80:25
	J	$min_caml_four.600	# lib.ml#80:19->80:25
	ADDI	%r31, %r31, $-12	# lib.ml#80:19->80:25
	MV	%r9, %r0	# lib.ml#80:19->80:25
	LDR	%r1, %r31, $4	# lib.ml#80:19->80:25
	LDR	%r0, %r31, $8	# lib.ml#80:19->80:25
	SDR	%r1, %r31, $12	# lib.ml#80:13->80:26
	SDR	%r0, %r31, $16	# lib.ml#80:13->80:26
	MV	%r0, %r9	# lib.ml#80:13->80:26
	ADDI	%r31, %r31, $20	# lib.ml#80:13->80:26
	ADDI	%r31, %r31, $4	# lib.ml#80:13->80:26
	SIP	# lib.ml#80:13->80:26
	J	$min_caml_four.600	# lib.ml#80:13->80:26
	ADDI	%r31, %r31, $-20	# lib.ml#80:13->80:26
	MV	%r9, %r0	# lib.ml#80:13->80:26
	LDR	%r1, %r31, $12	# lib.ml#80:13->80:26
	LDR	%r0, %r31, $16	# lib.ml#80:13->80:26
	SDR	%r1, %r31, $20	# lib.ml#80:7->80:27
	SDR	%r0, %r31, $24	# lib.ml#80:7->80:27
	MV	%r0, %r9	# lib.ml#80:7->80:27
	ADDI	%r31, %r31, $28	# lib.ml#80:7->80:27
	ADDI	%r31, %r31, $4	# lib.ml#80:7->80:27
	SIP	# lib.ml#80:7->80:27
	J	$min_caml_half.602	# lib.ml#80:7->80:27
	ADDI	%r31, %r31, $-28	# lib.ml#80:7->80:27
	MV	%r9, %r0	# lib.ml#80:7->80:27
	LDR	%r1, %r31, $20	# lib.ml#80:7->80:27
	LDR	%r0, %r31, $24	# lib.ml#80:7->80:27
	ADD	%r9, %r9, %r2	# lib.ml#80:6->80:32
	ADD	%r9, %r9, %r2	# lib.ml#80:6->80:36
	CMP	%r9, %r1	# lib.ml#80:3->81:71
	JZ	$min_caml_if_lt.1416	# lib.ml#80:3->81:71
	SDR	%r1, %r31, $28	# lib.ml#81:50->81:56
	SDR	%r0, %r31, $32	# lib.ml#81:50->81:56
	MV	%r0, %r2	# lib.ml#81:50->81:56
	ADDI	%r31, %r31, $36	# lib.ml#81:50->81:56
	ADDI	%r31, %r31, $4	# lib.ml#81:50->81:56
	SIP	# lib.ml#81:50->81:56
	J	$min_caml_four.600	# lib.ml#81:50->81:56
	ADDI	%r31, %r31, $-36	# lib.ml#81:50->81:56
	MV	%r9, %r0	# lib.ml#81:50->81:56
	LDR	%r1, %r31, $28	# lib.ml#81:50->81:56
	LDR	%r0, %r31, $32	# lib.ml#81:50->81:56
	SDR	%r1, %r31, $36	# lib.ml#81:44->81:57
	SDR	%r0, %r31, $40	# lib.ml#81:44->81:57
	MV	%r0, %r9	# lib.ml#81:44->81:57
	ADDI	%r31, %r31, $44	# lib.ml#81:44->81:57
	ADDI	%r31, %r31, $4	# lib.ml#81:44->81:57
	SIP	# lib.ml#81:44->81:57
	J	$min_caml_four.600	# lib.ml#81:44->81:57
	ADDI	%r31, %r31, $-44	# lib.ml#81:44->81:57
	MV	%r9, %r0	# lib.ml#81:44->81:57
	LDR	%r1, %r31, $36	# lib.ml#81:44->81:57
	LDR	%r0, %r31, $40	# lib.ml#81:44->81:57
	SDR	%r1, %r31, $44	# lib.ml#81:38->81:58
	SDR	%r0, %r31, $48	# lib.ml#81:38->81:58
	MV	%r0, %r9	# lib.ml#81:38->81:58
	ADDI	%r31, %r31, $52	# lib.ml#81:38->81:58
	ADDI	%r31, %r31, $4	# lib.ml#81:38->81:58
	SIP	# lib.ml#81:38->81:58
	J	$min_caml_half.602	# lib.ml#81:38->81:58
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
	ADDI	%r31, %r31, $4	# lib.ml#81:23->81:68
	SIP	# lib.ml#81:23->81:68
	J	$min_caml_print_loop.609	# lib.ml#81:23->81:68
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
	ADDI	%r31, %r31, $4	# lib.ml#81:8->81:71
	SIP	# lib.ml#81:8->81:71
	J	$min_caml_print_int_sub.606	# lib.ml#81:8->81:71
	ADDI	%r31, %r31, $-76	# lib.ml#81:8->81:71
	J	$min_caml_if_lt_cont.1417	# lib.ml#80:3->81:71
min_caml_if_lt.1416:
	SDR	%r2, %r31, $76	# lib.ml#80:46->80:63
	SDR	%r1, %r31, $80	# lib.ml#80:46->80:63
	SDR	%r0, %r31, $84	# lib.ml#80:46->80:63
	LDR	%r2, %r31, $76	# lib.ml#80:46->80:63
	LDR	%r1, %r31, $80	# lib.ml#80:46->80:63
	LDR	%r0, %r31, $84	# lib.ml#80:46->80:63
	MV	%r0, %r1	# lib.ml#80:46->80:63
	MV	%r1, %r2	# lib.ml#80:46->80:63
	ADDI	%r31, %r31, $88	# lib.ml#80:46->80:63
	ADDI	%r31, %r31, $4	# lib.ml#80:46->80:63
	SIP	# lib.ml#80:46->80:63
	J	$min_caml_print_int_sub.606	# lib.ml#80:46->80:63
	ADDI	%r31, %r31, $-88	# lib.ml#80:46->80:63
min_caml_if_lt_cont.1417:
	LDR	%r9, %r31, $0	# lib.ml#80:19->80:25
	LINK	# lib.ml#80:19->80:25
min_caml_print_int_sub.606:
	SDR	%r9, %r31, $0	# lib.ml#69:3->78:54
	CMP	%r2, %r1	# lib.ml#69:3->78:54
	JZ	$min_caml_if_lt.1418	# lib.ml#69:3->78:54
	ADD	%r9, %r2, %r2	# lib.ml#70:11->70:16
	CMP	%r9, %r1	# lib.ml#70:8->78:54
	JZ	$min_caml_if_lt.1420	# lib.ml#70:8->78:54
	ADD	%r9, %r9, %r2	# lib.ml#71:11->71:20
	CMP	%r9, %r1	# lib.ml#71:8->78:54
	JZ	$min_caml_if_lt.1422	# lib.ml#71:8->78:54
	SDR	%r1, %r31, $4	# lib.ml#72:11->72:17
	SDR	%r0, %r31, $8	# lib.ml#72:11->72:17
	MV	%r0, %r2	# lib.ml#72:11->72:17
	ADDI	%r31, %r31, $12	# lib.ml#72:11->72:17
	ADDI	%r31, %r31, $4	# lib.ml#72:11->72:17
	SIP	# lib.ml#72:11->72:17
	J	$min_caml_four.600	# lib.ml#72:11->72:17
	ADDI	%r31, %r31, $-12	# lib.ml#72:11->72:17
	MV	%r9, %r0	# lib.ml#72:11->72:17
	LDR	%r1, %r31, $4	# lib.ml#72:11->72:17
	LDR	%r0, %r31, $8	# lib.ml#72:11->72:17
	CMP	%r9, %r1	# lib.ml#72:8->78:54
	JZ	$min_caml_if_lt.1424	# lib.ml#72:8->78:54
	SDR	%r1, %r31, $12	# lib.ml#73:12->73:18
	SDR	%r0, %r31, $16	# lib.ml#73:12->73:18
	MV	%r0, %r2	# lib.ml#73:12->73:18
	ADDI	%r31, %r31, $20	# lib.ml#73:12->73:18
	ADDI	%r31, %r31, $4	# lib.ml#73:12->73:18
	SIP	# lib.ml#73:12->73:18
	J	$min_caml_four.600	# lib.ml#73:12->73:18
	ADDI	%r31, %r31, $-20	# lib.ml#73:12->73:18
	MV	%r9, %r0	# lib.ml#73:12->73:18
	LDR	%r1, %r31, $12	# lib.ml#73:12->73:18
	LDR	%r0, %r31, $16	# lib.ml#73:12->73:18
	ADD	%r9, %r9, %r2	# lib.ml#73:11->73:23
	CMP	%r9, %r1	# lib.ml#73:8->78:54
	JZ	$min_caml_if_lt.1426	# lib.ml#73:8->78:54
	SDR	%r1, %r31, $20	# lib.ml#74:12->74:18
	SDR	%r0, %r31, $24	# lib.ml#74:12->74:18
	MV	%r0, %r2	# lib.ml#74:12->74:18
	ADDI	%r31, %r31, $28	# lib.ml#74:12->74:18
	ADDI	%r31, %r31, $4	# lib.ml#74:12->74:18
	SIP	# lib.ml#74:12->74:18
	J	$min_caml_four.600	# lib.ml#74:12->74:18
	ADDI	%r31, %r31, $-28	# lib.ml#74:12->74:18
	MV	%r9, %r0	# lib.ml#74:12->74:18
	LDR	%r1, %r31, $20	# lib.ml#74:12->74:18
	LDR	%r0, %r31, $24	# lib.ml#74:12->74:18
	ADD	%r9, %r9, %r2	# lib.ml#74:11->74:23
	ADD	%r9, %r9, %r2	# lib.ml#74:11->74:27
	CMP	%r9, %r1	# lib.ml#74:8->78:54
	JZ	$min_caml_if_lt.1428	# lib.ml#74:8->78:54
	SDR	%r1, %r31, $28	# lib.ml#75:12->75:18
	SDR	%r0, %r31, $32	# lib.ml#75:12->75:18
	MV	%r0, %r2	# lib.ml#75:12->75:18
	ADDI	%r31, %r31, $36	# lib.ml#75:12->75:18
	ADDI	%r31, %r31, $4	# lib.ml#75:12->75:18
	SIP	# lib.ml#75:12->75:18
	J	$min_caml_four.600	# lib.ml#75:12->75:18
	ADDI	%r31, %r31, $-36	# lib.ml#75:12->75:18
	MV	%r9, %r0	# lib.ml#75:12->75:18
	LDR	%r1, %r31, $28	# lib.ml#75:12->75:18
	LDR	%r0, %r31, $32	# lib.ml#75:12->75:18
	ADD	%r9, %r9, %r2	# lib.ml#75:11->75:23
	ADD	%r9, %r9, %r2	# lib.ml#75:11->75:27
	ADD	%r9, %r9, %r2	# lib.ml#75:11->75:31
	CMP	%r9, %r1	# lib.ml#75:8->78:54
	JZ	$min_caml_if_lt.1430	# lib.ml#75:8->78:54
	SDR	%r1, %r31, $36	# lib.ml#76:24->76:30
	SDR	%r0, %r31, $40	# lib.ml#76:24->76:30
	MV	%r0, %r2	# lib.ml#76:24->76:30
	ADDI	%r31, %r31, $44	# lib.ml#76:24->76:30
	ADDI	%r31, %r31, $4	# lib.ml#76:24->76:30
	SIP	# lib.ml#76:24->76:30
	J	$min_caml_four.600	# lib.ml#76:24->76:30
	ADDI	%r31, %r31, $-44	# lib.ml#76:24->76:30
	MV	%r9, %r0	# lib.ml#76:24->76:30
	LDR	%r1, %r31, $36	# lib.ml#76:24->76:30
	LDR	%r0, %r31, $40	# lib.ml#76:24->76:30
	SDR	%r1, %r31, $44	# lib.ml#76:18->76:31
	SDR	%r0, %r31, $48	# lib.ml#76:18->76:31
	MV	%r0, %r9	# lib.ml#76:18->76:31
	ADDI	%r31, %r31, $52	# lib.ml#76:18->76:31
	ADDI	%r31, %r31, $4	# lib.ml#76:18->76:31
	SIP	# lib.ml#76:18->76:31
	J	$min_caml_four.600	# lib.ml#76:18->76:31
	ADDI	%r31, %r31, $-52	# lib.ml#76:18->76:31
	MV	%r9, %r0	# lib.ml#76:18->76:31
	LDR	%r1, %r31, $44	# lib.ml#76:18->76:31
	LDR	%r0, %r31, $48	# lib.ml#76:18->76:31
	SDR	%r1, %r31, $52	# lib.ml#76:12->76:32
	SDR	%r0, %r31, $56	# lib.ml#76:12->76:32
	MV	%r0, %r9	# lib.ml#76:12->76:32
	ADDI	%r31, %r31, $60	# lib.ml#76:12->76:32
	ADDI	%r31, %r31, $4	# lib.ml#76:12->76:32
	SIP	# lib.ml#76:12->76:32
	J	$min_caml_half.602	# lib.ml#76:12->76:32
	ADDI	%r31, %r31, $-60	# lib.ml#76:12->76:32
	MV	%r9, %r0	# lib.ml#76:12->76:32
	LDR	%r1, %r31, $52	# lib.ml#76:12->76:32
	LDR	%r0, %r31, $56	# lib.ml#76:12->76:32
	CMP	%r9, %r1	# lib.ml#76:8->78:54
	JZ	$min_caml_if_lt.1432	# lib.ml#76:8->78:54
	SDR	%r1, %r31, $60	# lib.ml#77:24->77:30
	SDR	%r0, %r31, $64	# lib.ml#77:24->77:30
	MV	%r0, %r2	# lib.ml#77:24->77:30
	ADDI	%r31, %r31, $68	# lib.ml#77:24->77:30
	ADDI	%r31, %r31, $4	# lib.ml#77:24->77:30
	SIP	# lib.ml#77:24->77:30
	J	$min_caml_four.600	# lib.ml#77:24->77:30
	ADDI	%r31, %r31, $-68	# lib.ml#77:24->77:30
	MV	%r9, %r0	# lib.ml#77:24->77:30
	LDR	%r1, %r31, $60	# lib.ml#77:24->77:30
	LDR	%r0, %r31, $64	# lib.ml#77:24->77:30
	SDR	%r1, %r31, $68	# lib.ml#77:18->77:31
	SDR	%r0, %r31, $72	# lib.ml#77:18->77:31
	MV	%r0, %r9	# lib.ml#77:18->77:31
	ADDI	%r31, %r31, $76	# lib.ml#77:18->77:31
	ADDI	%r31, %r31, $4	# lib.ml#77:18->77:31
	SIP	# lib.ml#77:18->77:31
	J	$min_caml_four.600	# lib.ml#77:18->77:31
	ADDI	%r31, %r31, $-76	# lib.ml#77:18->77:31
	MV	%r9, %r0	# lib.ml#77:18->77:31
	LDR	%r1, %r31, $68	# lib.ml#77:18->77:31
	LDR	%r0, %r31, $72	# lib.ml#77:18->77:31
	SDR	%r1, %r31, $76	# lib.ml#77:12->77:32
	SDR	%r0, %r31, $80	# lib.ml#77:12->77:32
	MV	%r0, %r9	# lib.ml#77:12->77:32
	ADDI	%r31, %r31, $84	# lib.ml#77:12->77:32
	ADDI	%r31, %r31, $4	# lib.ml#77:12->77:32
	SIP	# lib.ml#77:12->77:32
	J	$min_caml_half.602	# lib.ml#77:12->77:32
	ADDI	%r31, %r31, $-84	# lib.ml#77:12->77:32
	MV	%r9, %r0	# lib.ml#77:12->77:32
	LDR	%r1, %r31, $76	# lib.ml#77:12->77:32
	LDR	%r0, %r31, $80	# lib.ml#77:12->77:32
	ADD	%r9, %r9, %r2	# lib.ml#77:11->77:37
	CMP	%r9, %r1	# lib.ml#77:8->78:54
	JZ	$min_caml_if_lt.1434	# lib.ml#77:8->78:54
	SDR	%r1, %r31, $84	# lib.ml#78:40->78:46
	SDR	%r0, %r31, $88	# lib.ml#78:40->78:46
	MV	%r0, %r2	# lib.ml#78:40->78:46
	ADDI	%r31, %r31, $92	# lib.ml#78:40->78:46
	ADDI	%r31, %r31, $4	# lib.ml#78:40->78:46
	SIP	# lib.ml#78:40->78:46
	J	$min_caml_four.600	# lib.ml#78:40->78:46
	ADDI	%r31, %r31, $-92	# lib.ml#78:40->78:46
	MV	%r9, %r0	# lib.ml#78:40->78:46
	LDR	%r1, %r31, $84	# lib.ml#78:40->78:46
	LDR	%r0, %r31, $88	# lib.ml#78:40->78:46
	SDR	%r1, %r31, $92	# lib.ml#78:34->78:47
	SDR	%r0, %r31, $96	# lib.ml#78:34->78:47
	MV	%r0, %r9	# lib.ml#78:34->78:47
	ADDI	%r31, %r31, $100	# lib.ml#78:34->78:47
	ADDI	%r31, %r31, $4	# lib.ml#78:34->78:47
	SIP	# lib.ml#78:34->78:47
	J	$min_caml_four.600	# lib.ml#78:34->78:47
	ADDI	%r31, %r31, $-100	# lib.ml#78:34->78:47
	MV	%r9, %r0	# lib.ml#78:34->78:47
	LDR	%r1, %r31, $92	# lib.ml#78:34->78:47
	LDR	%r0, %r31, $96	# lib.ml#78:34->78:47
	SDR	%r1, %r31, $100	# lib.ml#78:28->78:48
	SDR	%r0, %r31, $104	# lib.ml#78:28->78:48
	MV	%r0, %r9	# lib.ml#78:28->78:48
	ADDI	%r31, %r31, $108	# lib.ml#78:28->78:48
	ADDI	%r31, %r31, $4	# lib.ml#78:28->78:48
	SIP	# lib.ml#78:28->78:48
	J	$min_caml_half.602	# lib.ml#78:28->78:48
	ADDI	%r31, %r31, $-108	# lib.ml#78:28->78:48
	MV	%r9, %r0	# lib.ml#78:28->78:48
	LDR	%r1, %r31, $100	# lib.ml#78:28->78:48
	LDR	%r0, %r31, $104	# lib.ml#78:28->78:48
	SUB	%r9, %r1, %r9	# lib.ml#78:23->78:49
	SUB	%r0, %r9, %r2	# lib.ml#78:23->78:53
	J	$min_caml_if_lt_cont.1435	# lib.ml#77:8->78:54
min_caml_if_lt.1434:
	SDR	%r1, %r31, $108	# lib.ml#77:79->77:85
	SDR	%r0, %r31, $112	# lib.ml#77:79->77:85
	MV	%r0, %r2	# lib.ml#77:79->77:85
	ADDI	%r31, %r31, $116	# lib.ml#77:79->77:85
	ADDI	%r31, %r31, $4	# lib.ml#77:79->77:85
	SIP	# lib.ml#77:79->77:85
	J	$min_caml_four.600	# lib.ml#77:79->77:85
	ADDI	%r31, %r31, $-116	# lib.ml#77:79->77:85
	MV	%r9, %r0	# lib.ml#77:79->77:85
	LDR	%r1, %r31, $108	# lib.ml#77:79->77:85
	LDR	%r0, %r31, $112	# lib.ml#77:79->77:85
	SDR	%r1, %r31, $116	# lib.ml#77:73->77:86
	SDR	%r0, %r31, $120	# lib.ml#77:73->77:86
	MV	%r0, %r9	# lib.ml#77:73->77:86
	ADDI	%r31, %r31, $124	# lib.ml#77:73->77:86
	ADDI	%r31, %r31, $4	# lib.ml#77:73->77:86
	SIP	# lib.ml#77:73->77:86
	J	$min_caml_four.600	# lib.ml#77:73->77:86
	ADDI	%r31, %r31, $-124	# lib.ml#77:73->77:86
	MV	%r9, %r0	# lib.ml#77:73->77:86
	LDR	%r1, %r31, $116	# lib.ml#77:73->77:86
	LDR	%r0, %r31, $120	# lib.ml#77:73->77:86
	SDR	%r1, %r31, $124	# lib.ml#77:67->77:87
	SDR	%r0, %r31, $128	# lib.ml#77:67->77:87
	MV	%r0, %r9	# lib.ml#77:67->77:87
	ADDI	%r31, %r31, $132	# lib.ml#77:67->77:87
	ADDI	%r31, %r31, $4	# lib.ml#77:67->77:87
	SIP	# lib.ml#77:67->77:87
	J	$min_caml_half.602	# lib.ml#77:67->77:87
	ADDI	%r31, %r31, $-132	# lib.ml#77:67->77:87
	MV	%r9, %r0	# lib.ml#77:67->77:87
	LDR	%r1, %r31, $124	# lib.ml#77:67->77:87
	LDR	%r0, %r31, $128	# lib.ml#77:67->77:87
	SUB	%r0, %r1, %r9	# lib.ml#77:62->77:88
min_caml_if_lt_cont.1435:
	J	$min_caml_if_lt_cont.1433	# lib.ml#76:8->78:54
min_caml_if_lt.1432:
	SDR	%r1, %r31, $132	# lib.ml#76:63->76:69
	SDR	%r0, %r31, $136	# lib.ml#76:63->76:69
	MV	%r0, %r2	# lib.ml#76:63->76:69
	ADDI	%r31, %r31, $140	# lib.ml#76:63->76:69
	ADDI	%r31, %r31, $4	# lib.ml#76:63->76:69
	SIP	# lib.ml#76:63->76:69
	J	$min_caml_four.600	# lib.ml#76:63->76:69
	ADDI	%r31, %r31, $-140	# lib.ml#76:63->76:69
	MV	%r9, %r0	# lib.ml#76:63->76:69
	LDR	%r1, %r31, $132	# lib.ml#76:63->76:69
	LDR	%r0, %r31, $136	# lib.ml#76:63->76:69
	SUB	%r9, %r1, %r9	# lib.ml#76:58->76:70
	SUB	%r9, %r9, %r2	# lib.ml#76:58->76:74
	SUB	%r9, %r9, %r2	# lib.ml#76:58->76:78
	SUB	%r0, %r9, %r2	# lib.ml#76:58->76:82
min_caml_if_lt_cont.1433:
	J	$min_caml_if_lt_cont.1431	# lib.ml#75:8->78:54
min_caml_if_lt.1430:
	SDR	%r1, %r31, $140	# lib.ml#75:61->75:67
	SDR	%r0, %r31, $144	# lib.ml#75:61->75:67
	MV	%r0, %r2	# lib.ml#75:61->75:67
	ADDI	%r31, %r31, $148	# lib.ml#75:61->75:67
	ADDI	%r31, %r31, $4	# lib.ml#75:61->75:67
	SIP	# lib.ml#75:61->75:67
	J	$min_caml_four.600	# lib.ml#75:61->75:67
	ADDI	%r31, %r31, $-148	# lib.ml#75:61->75:67
	MV	%r9, %r0	# lib.ml#75:61->75:67
	LDR	%r1, %r31, $140	# lib.ml#75:61->75:67
	LDR	%r0, %r31, $144	# lib.ml#75:61->75:67
	SUB	%r9, %r1, %r9	# lib.ml#75:56->75:68
	SUB	%r9, %r9, %r2	# lib.ml#75:56->75:72
	SUB	%r0, %r9, %r2	# lib.ml#75:56->75:76
min_caml_if_lt_cont.1431:
	J	$min_caml_if_lt_cont.1429	# lib.ml#74:8->78:54
min_caml_if_lt.1428:
	SDR	%r1, %r31, $148	# lib.ml#74:57->74:63
	SDR	%r0, %r31, $152	# lib.ml#74:57->74:63
	MV	%r0, %r2	# lib.ml#74:57->74:63
	ADDI	%r31, %r31, $156	# lib.ml#74:57->74:63
	ADDI	%r31, %r31, $4	# lib.ml#74:57->74:63
	SIP	# lib.ml#74:57->74:63
	J	$min_caml_four.600	# lib.ml#74:57->74:63
	ADDI	%r31, %r31, $-156	# lib.ml#74:57->74:63
	MV	%r9, %r0	# lib.ml#74:57->74:63
	LDR	%r1, %r31, $148	# lib.ml#74:57->74:63
	LDR	%r0, %r31, $152	# lib.ml#74:57->74:63
	SUB	%r9, %r1, %r9	# lib.ml#74:52->74:64
	SUB	%r0, %r9, %r2	# lib.ml#74:52->74:68
min_caml_if_lt_cont.1429:
	J	$min_caml_if_lt_cont.1427	# lib.ml#73:8->78:54
min_caml_if_lt.1426:
	SDR	%r1, %r31, $156	# lib.ml#73:53->73:59
	SDR	%r0, %r31, $160	# lib.ml#73:53->73:59
	MV	%r0, %r2	# lib.ml#73:53->73:59
	ADDI	%r31, %r31, $164	# lib.ml#73:53->73:59
	ADDI	%r31, %r31, $4	# lib.ml#73:53->73:59
	SIP	# lib.ml#73:53->73:59
	J	$min_caml_four.600	# lib.ml#73:53->73:59
	ADDI	%r31, %r31, $-164	# lib.ml#73:53->73:59
	MV	%r9, %r0	# lib.ml#73:53->73:59
	LDR	%r1, %r31, $156	# lib.ml#73:53->73:59
	LDR	%r0, %r31, $160	# lib.ml#73:53->73:59
	SUB	%r0, %r1, %r9	# lib.ml#73:48->73:60
min_caml_if_lt_cont.1427:
	J	$min_caml_if_lt_cont.1425	# lib.ml#72:8->78:54
min_caml_if_lt.1424:
	SUB	%r9, %r1, %r2	# lib.ml#72:42->72:47
	SUB	%r9, %r9, %r2	# lib.ml#72:42->72:51
	SUB	%r0, %r9, %r2	# lib.ml#72:42->72:55
min_caml_if_lt_cont.1425:
	J	$min_caml_if_lt_cont.1423	# lib.ml#71:8->78:54
min_caml_if_lt.1422:
	SUB	%r9, %r1, %r2	# lib.ml#71:45->71:50
	SUB	%r0, %r9, %r2	# lib.ml#71:45->71:54
min_caml_if_lt_cont.1423:
	J	$min_caml_if_lt_cont.1421	# lib.ml#70:8->78:54
min_caml_if_lt.1420:
	SUB	%r0, %r1, %r2	# lib.ml#70:41->70:46
min_caml_if_lt_cont.1421:
	J	$min_caml_if_lt_cont.1419	# lib.ml#69:3->78:54
min_caml_if_lt.1418:
	MV	%r0, %r1	# lib.ml#69:32->69:33
min_caml_if_lt_cont.1419:
	LDR	%r9, %r31, $0	# lib.ml#69:3->78:54
	LINK	# lib.ml#69:3->78:54
min_caml_z.604:
	LINK	# lib.ml#67:16->67:18
min_caml_half.602:
	MVI	%r0, $2	# lib.ml#66:21->66:22
	DIV	%r0, %r1, %r0	# lib.ml#66:19->66:22
	LINK	# lib.ml#66:21->66:22
min_caml_four.600:
	MVI	%r0, $4	# lib.ml#65:21->65:22
	MUL	%r0, %r1, %r0	# lib.ml#65:19->65:22
	LINK	# lib.ml#65:21->65:22
min_caml_sin:
	SDR	%r9, %r31, $0	# lib.ml#52:38->52:62
	FLDA	%fr9, $min_caml_l.1120	# lib.ml#52:38->52:62
	FDIV	%fr9, %fr0, %fr9	# lib.ml#52:32->52:63
	SDR	%r0, %r31, $4	# lib.ml#52:25->52:64
	FSDR	%fr0, %r31, $8	# lib.ml#52:25->52:64
	FMV	%fr0, %fr9	# lib.ml#52:25->52:64
	ADDI	%r31, %r31, $12	# lib.ml#52:25->52:64
	ADDI	%r31, %r31, $4	# lib.ml#52:25->52:64
	SIP	# lib.ml#52:25->52:64
	J	$min_caml_floor	# lib.ml#52:25->52:64
	ADDI	%r31, %r31, $-12	# lib.ml#52:25->52:64
	MV	%r9, %r0	# lib.ml#52:25->52:64
	LDR	%r0, %r31, $4	# lib.ml#52:25->52:64
	FLDR	%fr0, %r31, $8	# lib.ml#52:25->52:64
	SDR	%r0, %r31, $12	# lib.ml#52:11->52:65
	FSDR	%fr0, %r31, $16	# lib.ml#52:11->52:65
	MV	%r0, %r9	# lib.ml#52:11->52:65
	ADDI	%r31, %r31, $20	# lib.ml#52:11->52:65
	ADDI	%r31, %r31, $4	# lib.ml#52:11->52:65
	SIP	# lib.ml#52:11->52:65
	J	$min_caml_float_of_int	# lib.ml#52:11->52:65
	ADDI	%r31, %r31, $-20	# lib.ml#52:11->52:65
	FMV	%fr9, %fr0	# lib.ml#52:11->52:65
	LDR	%r0, %r31, $12	# lib.ml#52:11->52:65
	FLDR	%fr0, %r31, $16	# lib.ml#52:11->52:65
	FLDA	%fr8, $min_caml_l.1121	# lib.ml#53:20->53:37
	FMUL	%fr8, %fr9, %fr8	# lib.ml#53:15->53:37
	FLDA	%fr9, $min_caml_l.1122	# lib.ml#53:41->53:44
	FMUL	%fr9, %fr8, %fr9	# lib.ml#53:15->53:44
	FSUB	%fr9, %fr0, %fr9	# lib.ml#53:10->53:44
	FLDA	%fr8, $min_caml_l.1121	# lib.ml#56:9->56:26
	FCMP	%fr8, %fr9	# lib.ml#56:2->63:40
	FJLT	$min_caml_if_flt.1436	# lib.ml#56:2->63:40
	FLDA	%fr8, $min_caml_l.1123	# lib.ml#57:9->57:31
	FCMP	%fr8, %fr9	# lib.ml#57:2->63:40
	FJLT	$min_caml_if_flt.1438	# lib.ml#57:2->63:40
	FLDA	%fr8, $min_caml_l.1124	# lib.ml#58:9->58:31
	FCMP	%fr8, %fr9	# lib.ml#58:2->63:40
	FJLT	$min_caml_if_flt.1440	# lib.ml#58:2->63:40
	FLDA	%fr8, $min_caml_l.1125	# lib.ml#59:9->59:31
	FCMP	%fr8, %fr9	# lib.ml#59:2->63:40
	FJLT	$min_caml_if_flt.1442	# lib.ml#59:2->63:40
	FLDA	%fr8, $min_caml_l.1126	# lib.ml#60:9->60:31
	FCMP	%fr8, %fr9	# lib.ml#60:2->63:40
	FJLT	$min_caml_if_flt.1444	# lib.ml#60:2->63:40
	FLDA	%fr8, $min_caml_l.1127	# lib.ml#61:9->61:31
	FCMP	%fr8, %fr9	# lib.ml#61:2->63:40
	FJLT	$min_caml_if_flt.1446	# lib.ml#61:2->63:40
	FLDA	%fr8, $min_caml_l.1128	# lib.ml#62:9->62:31
	FCMP	%fr8, %fr9	# lib.ml#62:2->63:40
	FJLT	$min_caml_if_flt.1448	# lib.ml#62:2->63:40
	FLDA	%fr8, $min_caml_l.1120	# lib.ml#63:13->63:35
	FSUB	%fr9, %fr8, %fr9	# lib.ml#63:13->63:38
	SDR	%r0, %r31, $20	# lib.ml#63:5->63:39
	FSDR	%fr0, %r31, $24	# lib.ml#63:5->63:39
	FMV	%fr0, %fr9	# lib.ml#63:5->63:39
	ADDI	%r31, %r31, $28	# lib.ml#63:5->63:39
	ADDI	%r31, %r31, $4	# lib.ml#63:5->63:39
	SIP	# lib.ml#63:5->63:39
	J	$min_caml_sinsub.690	# lib.ml#63:5->63:39
	ADDI	%r31, %r31, $-28	# lib.ml#63:5->63:39
	FMV	%fr9, %fr0	# lib.ml#63:5->63:39
	LDR	%r0, %r31, $20	# lib.ml#63:5->63:39
	FLDR	%fr0, %r31, $24	# lib.ml#63:5->63:39
	FNEG2	%fr0, %fr9	# lib.ml#63:2->63:40
	J	$min_caml_if_flt_cont.1449	# lib.ml#62:2->63:40
min_caml_if_flt.1448:
	FLDA	%fr8, $min_caml_l.1127	# lib.ml#62:53->62:75
	FSUB	%fr9, %fr9, %fr8	# lib.ml#62:48->62:75
	SDR	%r0, %r31, $28	# lib.ml#62:40->62:76
	FSDR	%fr0, %r31, $32	# lib.ml#62:40->62:76
	FMV	%fr0, %fr9	# lib.ml#62:40->62:76
	ADDI	%r31, %r31, $36	# lib.ml#62:40->62:76
	ADDI	%r31, %r31, $4	# lib.ml#62:40->62:76
	SIP	# lib.ml#62:40->62:76
	J	$min_caml_cossub.692	# lib.ml#62:40->62:76
	ADDI	%r31, %r31, $-36	# lib.ml#62:40->62:76
	FMV	%fr9, %fr0	# lib.ml#62:40->62:76
	LDR	%r0, %r31, $28	# lib.ml#62:40->62:76
	FLDR	%fr0, %r31, $32	# lib.ml#62:40->62:76
	FNEG2	%fr0, %fr9	# lib.ml#62:37->62:77
min_caml_if_flt_cont.1449:
	J	$min_caml_if_flt_cont.1447	# lib.ml#61:2->63:40
min_caml_if_flt.1446:
	FLDA	%fr8, $min_caml_l.1127	# lib.ml#61:48->61:70
	FSUB	%fr9, %fr8, %fr9	# lib.ml#61:48->61:73
	SDR	%r0, %r31, $36	# lib.ml#61:40->61:74
	FSDR	%fr0, %r31, $40	# lib.ml#61:40->61:74
	FMV	%fr0, %fr9	# lib.ml#61:40->61:74
	ADDI	%r31, %r31, $44	# lib.ml#61:40->61:74
	ADDI	%r31, %r31, $4	# lib.ml#61:40->61:74
	SIP	# lib.ml#61:40->61:74
	J	$min_caml_cossub.692	# lib.ml#61:40->61:74
	ADDI	%r31, %r31, $-44	# lib.ml#61:40->61:74
	FMV	%fr9, %fr0	# lib.ml#61:40->61:74
	LDR	%r0, %r31, $36	# lib.ml#61:40->61:74
	FLDR	%fr0, %r31, $40	# lib.ml#61:40->61:74
	FNEG2	%fr0, %fr9	# lib.ml#61:37->61:75
min_caml_if_flt_cont.1447:
	J	$min_caml_if_flt_cont.1445	# lib.ml#60:2->63:40
min_caml_if_flt.1444:
	FLDA	%fr8, $min_caml_l.1125	# lib.ml#60:53->60:75
	FSUB	%fr9, %fr9, %fr8	# lib.ml#60:48->60:75
	SDR	%r0, %r31, $44	# lib.ml#60:40->60:76
	FSDR	%fr0, %r31, $48	# lib.ml#60:40->60:76
	FMV	%fr0, %fr9	# lib.ml#60:40->60:76
	ADDI	%r31, %r31, $52	# lib.ml#60:40->60:76
	ADDI	%r31, %r31, $4	# lib.ml#60:40->60:76
	SIP	# lib.ml#60:40->60:76
	J	$min_caml_sinsub.690	# lib.ml#60:40->60:76
	ADDI	%r31, %r31, $-52	# lib.ml#60:40->60:76
	FMV	%fr9, %fr0	# lib.ml#60:40->60:76
	LDR	%r0, %r31, $44	# lib.ml#60:40->60:76
	FLDR	%fr0, %r31, $48	# lib.ml#60:40->60:76
	FNEG2	%fr0, %fr9	# lib.ml#60:37->60:77
min_caml_if_flt_cont.1445:
	J	$min_caml_if_flt_cont.1443	# lib.ml#59:2->63:40
min_caml_if_flt.1442:
	FLDA	%fr8, $min_caml_l.1125	# lib.ml#59:45->59:67
	FSUB	%fr9, %fr8, %fr9	# lib.ml#59:45->59:70
	SDR	%r0, %r31, $52	# lib.ml#59:37->59:71
	FSDR	%fr0, %r31, $56	# lib.ml#59:37->59:71
	LDR	%r0, %r31, $52	# lib.ml#59:37->59:71
	FLDR	%fr0, %r31, $56	# lib.ml#59:37->59:71
	FMV	%fr0, %fr9	# lib.ml#59:37->59:71
	ADDI	%r31, %r31, $60	# lib.ml#59:37->59:71
	ADDI	%r31, %r31, $4	# lib.ml#59:37->59:71
	SIP	# lib.ml#59:37->59:71
	J	$min_caml_sinsub.690	# lib.ml#59:37->59:71
	ADDI	%r31, %r31, $-60	# lib.ml#59:37->59:71
min_caml_if_flt_cont.1443:
	J	$min_caml_if_flt_cont.1441	# lib.ml#58:2->63:40
min_caml_if_flt.1440:
	FLDA	%fr8, $min_caml_l.1123	# lib.ml#58:48->58:70
	FSUB	%fr9, %fr9, %fr8	# lib.ml#58:45->58:70
	SDR	%r0, %r31, $60	# lib.ml#58:37->58:71
	FSDR	%fr0, %r31, $64	# lib.ml#58:37->58:71
	LDR	%r0, %r31, $60	# lib.ml#58:37->58:71
	FLDR	%fr0, %r31, $64	# lib.ml#58:37->58:71
	FMV	%fr0, %fr9	# lib.ml#58:37->58:71
	ADDI	%r31, %r31, $68	# lib.ml#58:37->58:71
	ADDI	%r31, %r31, $4	# lib.ml#58:37->58:71
	SIP	# lib.ml#58:37->58:71
	J	$min_caml_cossub.692	# lib.ml#58:37->58:71
	ADDI	%r31, %r31, $-68	# lib.ml#58:37->58:71
min_caml_if_flt_cont.1441:
	J	$min_caml_if_flt_cont.1439	# lib.ml#57:2->63:40
min_caml_if_flt.1438:
	FLDA	%fr8, $min_caml_l.1123	# lib.ml#57:45->57:67
	FSUB	%fr9, %fr8, %fr9	# lib.ml#57:45->57:70
	SDR	%r0, %r31, $68	# lib.ml#57:37->57:71
	FSDR	%fr0, %r31, $72	# lib.ml#57:37->57:71
	LDR	%r0, %r31, $68	# lib.ml#57:37->57:71
	FLDR	%fr0, %r31, $72	# lib.ml#57:37->57:71
	FMV	%fr0, %fr9	# lib.ml#57:37->57:71
	ADDI	%r31, %r31, $76	# lib.ml#57:37->57:71
	ADDI	%r31, %r31, $4	# lib.ml#57:37->57:71
	SIP	# lib.ml#57:37->57:71
	J	$min_caml_cossub.692	# lib.ml#57:37->57:71
	ADDI	%r31, %r31, $-76	# lib.ml#57:37->57:71
min_caml_if_flt_cont.1439:
	J	$min_caml_if_flt_cont.1437	# lib.ml#56:2->63:40
min_caml_if_flt.1436:
	SDR	%r0, %r31, $76	# lib.ml#56:32->56:40
	FSDR	%fr0, %r31, $80	# lib.ml#56:32->56:40
	LDR	%r0, %r31, $76	# lib.ml#56:32->56:40
	FLDR	%fr0, %r31, $80	# lib.ml#56:32->56:40
	FMV	%fr0, %fr9	# lib.ml#56:32->56:40
	ADDI	%r31, %r31, $84	# lib.ml#56:32->56:40
	ADDI	%r31, %r31, $4	# lib.ml#56:32->56:40
	SIP	# lib.ml#56:32->56:40
	J	$min_caml_sinsub.690	# lib.ml#56:32->56:40
	ADDI	%r31, %r31, $-84	# lib.ml#56:32->56:40
min_caml_if_flt_cont.1437:
	LDR	%r9, %r31, $0	# lib.ml#52:38->52:62
	LINK	# lib.ml#52:38->52:62
min_caml_cossub.692:
	FMUL	%fr12, %fr0, %fr0	# lib.ml#55:22->55:26
	FMUL	%fr1, %fr12, %fr0	# lib.ml#55:22->55:29
	FMUL	%fr11, %fr1, %fr0	# lib.ml#55:22->55:32
	FMUL	%fr1, %fr11, %fr0	# lib.ml#55:22->55:35
	FMUL	%fr10, %fr1, %fr0	# lib.ml#55:22->55:38
	FLDA	%fr0, $min_caml_l.1129	# lib.ml#55:40->55:47
	FDIV	%fr1, %fr10, %fr0	# lib.ml#55:22->55:47
	FLDA	%fr0, $min_caml_l.1130	# lib.ml#55:71->55:76
	FDIV	%fr0, %fr10, %fr0	# lib.ml#55:53->55:76
	FSUB	%fr1, %fr1, %fr0	# lib.ml#55:21->55:77
	FLDA	%fr0, $min_caml_l.1131	# lib.ml#55:94->55:98
	FDIV	%fr0, %fr11, %fr0	# lib.ml#55:82->55:98
	FADD	%fr1, %fr1, %fr0	# lib.ml#55:21->55:99
	FLDA	%fr0, $min_caml_l.1118	# lib.ml#55:110->55:113
	FDIV	%fr0, %fr12, %fr0	# lib.ml#55:104->55:113
	FSUB	%fr1, %fr1, %fr0	# lib.ml#55:21->55:114
	FLDA	%fr0, $min_caml_l.1132	# lib.ml#55:118->55:121
	FADD	%fr0, %fr1, %fr0	# lib.ml#55:21->55:121
	LINK	# lib.ml#55:22->55:26
min_caml_sinsub.690:
	FMUL	%fr1, %fr0, %fr0	# lib.ml#54:22->54:26
	FMUL	%fr12, %fr1, %fr0	# lib.ml#54:22->54:29
	FMUL	%fr1, %fr12, %fr0	# lib.ml#54:22->54:32
	FMUL	%fr1, %fr1, %fr0	# lib.ml#54:22->54:35
	FLDA	%fr10, $min_caml_l.1133	# lib.ml#54:37->54:42
	FDIV	%fr11, %fr1, %fr10	# lib.ml#54:22->54:42
	FMUL	%fr1, %fr1, %fr0	# lib.ml#54:48->54:64
	FMUL	%fr10, %fr1, %fr0	# lib.ml#54:48->54:67
	FLDA	%fr1, $min_caml_l.1134	# lib.ml#54:69->54:75
	FDIV	%fr1, %fr10, %fr1	# lib.ml#54:48->54:75
	FSUB	%fr10, %fr11, %fr1	# lib.ml#54:21->54:76
	FLDA	%fr1, $min_caml_l.1135	# lib.ml#54:90->54:93
	FDIV	%fr1, %fr12, %fr1	# lib.ml#54:81->54:93
	FSUB	%fr1, %fr10, %fr1	# lib.ml#54:21->54:94
	FADD	%fr0, %fr1, %fr0	# lib.ml#54:21->54:99
	LINK	# lib.ml#54:22->54:26
min_caml_cos:
	SDR	%r9, %r31, $0	# lib.ml#39:38->39:60
	FLDA	%fr9, $min_caml_l.1120	# lib.ml#39:38->39:60
	FDIV	%fr9, %fr0, %fr9	# lib.ml#39:32->39:61
	SDR	%r0, %r31, $4	# lib.ml#39:25->39:62
	FSDR	%fr0, %r31, $8	# lib.ml#39:25->39:62
	FMV	%fr0, %fr9	# lib.ml#39:25->39:62
	ADDI	%r31, %r31, $12	# lib.ml#39:25->39:62
	ADDI	%r31, %r31, $4	# lib.ml#39:25->39:62
	SIP	# lib.ml#39:25->39:62
	J	$min_caml_floor	# lib.ml#39:25->39:62
	ADDI	%r31, %r31, $-12	# lib.ml#39:25->39:62
	MV	%r9, %r0	# lib.ml#39:25->39:62
	LDR	%r0, %r31, $4	# lib.ml#39:25->39:62
	FLDR	%fr0, %r31, $8	# lib.ml#39:25->39:62
	SDR	%r0, %r31, $12	# lib.ml#39:11->39:63
	FSDR	%fr0, %r31, $16	# lib.ml#39:11->39:63
	MV	%r0, %r9	# lib.ml#39:11->39:63
	ADDI	%r31, %r31, $20	# lib.ml#39:11->39:63
	ADDI	%r31, %r31, $4	# lib.ml#39:11->39:63
	SIP	# lib.ml#39:11->39:63
	J	$min_caml_float_of_int	# lib.ml#39:11->39:63
	ADDI	%r31, %r31, $-20	# lib.ml#39:11->39:63
	FMV	%fr9, %fr0	# lib.ml#39:11->39:63
	LDR	%r0, %r31, $12	# lib.ml#39:11->39:63
	FLDR	%fr0, %r31, $16	# lib.ml#39:11->39:63
	FLDA	%fr8, $min_caml_l.1121	# lib.ml#40:20->40:37
	FMUL	%fr8, %fr9, %fr8	# lib.ml#40:15->40:37
	FLDA	%fr9, $min_caml_l.1122	# lib.ml#40:41->40:44
	FMUL	%fr9, %fr8, %fr9	# lib.ml#40:15->40:44
	FSUB	%fr9, %fr0, %fr9	# lib.ml#40:10->40:44
	FLDA	%fr8, $min_caml_l.1121	# lib.ml#43:9->43:26
	FCMP	%fr8, %fr9	# lib.ml#43:2->50:41
	FJLT	$min_caml_if_flt.1450	# lib.ml#43:2->50:41
	FLDA	%fr8, $min_caml_l.1123	# lib.ml#44:14->44:36
	FCMP	%fr8, %fr9	# lib.ml#44:7->50:41
	FJLT	$min_caml_if_flt.1452	# lib.ml#44:7->50:41
	FLDA	%fr8, $min_caml_l.1124	# lib.ml#45:14->45:36
	FCMP	%fr8, %fr9	# lib.ml#45:7->50:41
	FJLT	$min_caml_if_flt.1454	# lib.ml#45:7->50:41
	FLDA	%fr8, $min_caml_l.1125	# lib.ml#46:14->46:36
	FCMP	%fr8, %fr9	# lib.ml#46:7->50:41
	FJLT	$min_caml_if_flt.1456	# lib.ml#46:7->50:41
	FLDA	%fr8, $min_caml_l.1126	# lib.ml#47:14->47:36
	FCMP	%fr8, %fr9	# lib.ml#47:7->50:41
	FJLT	$min_caml_if_flt.1458	# lib.ml#47:7->50:41
	FLDA	%fr8, $min_caml_l.1127	# lib.ml#48:14->48:36
	FCMP	%fr8, %fr9	# lib.ml#48:7->50:41
	FJLT	$min_caml_if_flt.1460	# lib.ml#48:7->50:41
	FLDA	%fr8, $min_caml_l.1128	# lib.ml#49:14->49:36
	FCMP	%fr8, %fr9	# lib.ml#49:7->50:41
	FJLT	$min_caml_if_flt.1462	# lib.ml#49:7->50:41
	FLDA	%fr8, $min_caml_l.1120	# lib.ml#50:15->50:37
	FSUB	%fr9, %fr8, %fr9	# lib.ml#50:15->50:40
	SDR	%r0, %r31, $20	# lib.ml#50:7->50:41
	FSDR	%fr0, %r31, $24	# lib.ml#50:7->50:41
	LDR	%r0, %r31, $20	# lib.ml#50:7->50:41
	FLDR	%fr0, %r31, $24	# lib.ml#50:7->50:41
	FMV	%fr0, %fr9	# lib.ml#50:7->50:41
	ADDI	%r31, %r31, $28	# lib.ml#50:7->50:41
	ADDI	%r31, %r31, $4	# lib.ml#50:7->50:41
	SIP	# lib.ml#50:7->50:41
	J	$min_caml_cossub.805	# lib.ml#50:7->50:41
	ADDI	%r31, %r31, $-28	# lib.ml#50:7->50:41
	J	$min_caml_if_flt_cont.1463	# lib.ml#49:7->50:41
min_caml_if_flt.1462:
	FLDA	%fr8, $min_caml_l.1127	# lib.ml#49:53->49:75
	FSUB	%fr9, %fr9, %fr8	# lib.ml#49:50->49:75
	SDR	%r0, %r31, $28	# lib.ml#49:42->49:76
	FSDR	%fr0, %r31, $32	# lib.ml#49:42->49:76
	LDR	%r0, %r31, $28	# lib.ml#49:42->49:76
	FLDR	%fr0, %r31, $32	# lib.ml#49:42->49:76
	FMV	%fr0, %fr9	# lib.ml#49:42->49:76
	ADDI	%r31, %r31, $36	# lib.ml#49:42->49:76
	ADDI	%r31, %r31, $4	# lib.ml#49:42->49:76
	SIP	# lib.ml#49:42->49:76
	J	$min_caml_sinsub.803	# lib.ml#49:42->49:76
	ADDI	%r31, %r31, $-36	# lib.ml#49:42->49:76
min_caml_if_flt_cont.1463:
	J	$min_caml_if_flt_cont.1461	# lib.ml#48:7->50:41
min_caml_if_flt.1460:
	FLDA	%fr8, $min_caml_l.1127	# lib.ml#48:53->48:75
	FSUB	%fr9, %fr8, %fr9	# lib.ml#48:53->48:78
	SDR	%r0, %r31, $36	# lib.ml#48:45->48:79
	FSDR	%fr0, %r31, $40	# lib.ml#48:45->48:79
	FMV	%fr0, %fr9	# lib.ml#48:45->48:79
	ADDI	%r31, %r31, $44	# lib.ml#48:45->48:79
	ADDI	%r31, %r31, $4	# lib.ml#48:45->48:79
	SIP	# lib.ml#48:45->48:79
	J	$min_caml_sinsub.803	# lib.ml#48:45->48:79
	ADDI	%r31, %r31, $-44	# lib.ml#48:45->48:79
	FMV	%fr9, %fr0	# lib.ml#48:45->48:79
	LDR	%r0, %r31, $36	# lib.ml#48:45->48:79
	FLDR	%fr0, %r31, $40	# lib.ml#48:45->48:79
	FNEG2	%fr0, %fr9	# lib.ml#48:42->48:80
min_caml_if_flt_cont.1461:
	J	$min_caml_if_flt_cont.1459	# lib.ml#47:7->50:41
min_caml_if_flt.1458:
	FLDA	%fr8, $min_caml_l.1125	# lib.ml#47:56->47:78
	FSUB	%fr9, %fr9, %fr8	# lib.ml#47:53->47:78
	SDR	%r0, %r31, $44	# lib.ml#47:45->47:79
	FSDR	%fr0, %r31, $48	# lib.ml#47:45->47:79
	FMV	%fr0, %fr9	# lib.ml#47:45->47:79
	ADDI	%r31, %r31, $52	# lib.ml#47:45->47:79
	ADDI	%r31, %r31, $4	# lib.ml#47:45->47:79
	SIP	# lib.ml#47:45->47:79
	J	$min_caml_cossub.805	# lib.ml#47:45->47:79
	ADDI	%r31, %r31, $-52	# lib.ml#47:45->47:79
	FMV	%fr9, %fr0	# lib.ml#47:45->47:79
	LDR	%r0, %r31, $44	# lib.ml#47:45->47:79
	FLDR	%fr0, %r31, $48	# lib.ml#47:45->47:79
	FNEG2	%fr0, %fr9	# lib.ml#47:42->47:80
min_caml_if_flt_cont.1459:
	J	$min_caml_if_flt_cont.1457	# lib.ml#46:7->50:41
min_caml_if_flt.1456:
	FLDA	%fr8, $min_caml_l.1125	# lib.ml#46:53->46:75
	FSUB	%fr9, %fr8, %fr9	# lib.ml#46:53->46:78
	SDR	%r0, %r31, $52	# lib.ml#46:45->46:79
	FSDR	%fr0, %r31, $56	# lib.ml#46:45->46:79
	FMV	%fr0, %fr9	# lib.ml#46:45->46:79
	ADDI	%r31, %r31, $60	# lib.ml#46:45->46:79
	ADDI	%r31, %r31, $4	# lib.ml#46:45->46:79
	SIP	# lib.ml#46:45->46:79
	J	$min_caml_cossub.805	# lib.ml#46:45->46:79
	ADDI	%r31, %r31, $-60	# lib.ml#46:45->46:79
	FMV	%fr9, %fr0	# lib.ml#46:45->46:79
	LDR	%r0, %r31, $52	# lib.ml#46:45->46:79
	FLDR	%fr0, %r31, $56	# lib.ml#46:45->46:79
	FNEG2	%fr0, %fr9	# lib.ml#46:42->46:80
min_caml_if_flt_cont.1457:
	J	$min_caml_if_flt_cont.1455	# lib.ml#45:7->50:41
min_caml_if_flt.1454:
	FLDA	%fr8, $min_caml_l.1123	# lib.ml#45:56->45:78
	FSUB	%fr9, %fr9, %fr8	# lib.ml#45:53->45:78
	SDR	%r0, %r31, $60	# lib.ml#45:45->45:79
	FSDR	%fr0, %r31, $64	# lib.ml#45:45->45:79
	FMV	%fr0, %fr9	# lib.ml#45:45->45:79
	ADDI	%r31, %r31, $68	# lib.ml#45:45->45:79
	ADDI	%r31, %r31, $4	# lib.ml#45:45->45:79
	SIP	# lib.ml#45:45->45:79
	J	$min_caml_sinsub.803	# lib.ml#45:45->45:79
	ADDI	%r31, %r31, $-68	# lib.ml#45:45->45:79
	FMV	%fr9, %fr0	# lib.ml#45:45->45:79
	LDR	%r0, %r31, $60	# lib.ml#45:45->45:79
	FLDR	%fr0, %r31, $64	# lib.ml#45:45->45:79
	FNEG2	%fr0, %fr9	# lib.ml#45:42->45:80
min_caml_if_flt_cont.1455:
	J	$min_caml_if_flt_cont.1453	# lib.ml#44:7->50:41
min_caml_if_flt.1452:
	FLDA	%fr8, $min_caml_l.1123	# lib.ml#44:50->44:72
	FSUB	%fr9, %fr8, %fr9	# lib.ml#44:50->44:75
	SDR	%r0, %r31, $68	# lib.ml#44:42->44:76
	FSDR	%fr0, %r31, $72	# lib.ml#44:42->44:76
	LDR	%r0, %r31, $68	# lib.ml#44:42->44:76
	FLDR	%fr0, %r31, $72	# lib.ml#44:42->44:76
	FMV	%fr0, %fr9	# lib.ml#44:42->44:76
	ADDI	%r31, %r31, $76	# lib.ml#44:42->44:76
	ADDI	%r31, %r31, $4	# lib.ml#44:42->44:76
	SIP	# lib.ml#44:42->44:76
	J	$min_caml_sinsub.803	# lib.ml#44:42->44:76
	ADDI	%r31, %r31, $-76	# lib.ml#44:42->44:76
min_caml_if_flt_cont.1453:
	J	$min_caml_if_flt_cont.1451	# lib.ml#43:2->50:41
min_caml_if_flt.1450:
	SDR	%r0, %r31, $76	# lib.ml#43:32->43:40
	FSDR	%fr0, %r31, $80	# lib.ml#43:32->43:40
	LDR	%r0, %r31, $76	# lib.ml#43:32->43:40
	FLDR	%fr0, %r31, $80	# lib.ml#43:32->43:40
	FMV	%fr0, %fr9	# lib.ml#43:32->43:40
	ADDI	%r31, %r31, $84	# lib.ml#43:32->43:40
	ADDI	%r31, %r31, $4	# lib.ml#43:32->43:40
	SIP	# lib.ml#43:32->43:40
	J	$min_caml_cossub.805	# lib.ml#43:32->43:40
	ADDI	%r31, %r31, $-84	# lib.ml#43:32->43:40
min_caml_if_flt_cont.1451:
	LDR	%r9, %r31, $0	# lib.ml#39:38->39:60
	LINK	# lib.ml#39:38->39:60
min_caml_cossub.805:
	FMUL	%fr12, %fr0, %fr0	# lib.ml#42:22->42:26
	FMUL	%fr1, %fr12, %fr0	# lib.ml#42:22->42:29
	FMUL	%fr11, %fr1, %fr0	# lib.ml#42:22->42:32
	FMUL	%fr1, %fr11, %fr0	# lib.ml#42:22->42:35
	FMUL	%fr10, %fr1, %fr0	# lib.ml#42:22->42:38
	FLDA	%fr0, $min_caml_l.1129	# lib.ml#42:40->42:47
	FDIV	%fr1, %fr10, %fr0	# lib.ml#42:22->42:47
	FLDA	%fr0, $min_caml_l.1130	# lib.ml#42:71->42:76
	FDIV	%fr0, %fr10, %fr0	# lib.ml#42:53->42:76
	FSUB	%fr1, %fr1, %fr0	# lib.ml#42:21->42:77
	FLDA	%fr0, $min_caml_l.1131	# lib.ml#42:94->42:98
	FDIV	%fr0, %fr11, %fr0	# lib.ml#42:82->42:98
	FADD	%fr1, %fr1, %fr0	# lib.ml#42:21->42:99
	FLDA	%fr0, $min_caml_l.1118	# lib.ml#42:110->42:113
	FDIV	%fr0, %fr12, %fr0	# lib.ml#42:104->42:113
	FSUB	%fr1, %fr1, %fr0	# lib.ml#42:21->42:114
	FLDA	%fr0, $min_caml_l.1132	# lib.ml#42:118->42:121
	FADD	%fr0, %fr1, %fr0	# lib.ml#42:21->42:121
	LINK	# lib.ml#42:22->42:26
min_caml_sinsub.803:
	FMUL	%fr1, %fr0, %fr0	# lib.ml#41:22->41:26
	FMUL	%fr12, %fr1, %fr0	# lib.ml#41:22->41:29
	FMUL	%fr1, %fr12, %fr0	# lib.ml#41:22->41:32
	FMUL	%fr1, %fr1, %fr0	# lib.ml#41:22->41:35
	FLDA	%fr10, $min_caml_l.1133	# lib.ml#41:37->41:42
	FDIV	%fr11, %fr1, %fr10	# lib.ml#41:22->41:42
	FMUL	%fr1, %fr1, %fr0	# lib.ml#41:48->41:64
	FMUL	%fr10, %fr1, %fr0	# lib.ml#41:48->41:67
	FLDA	%fr1, $min_caml_l.1134	# lib.ml#41:69->41:75
	FDIV	%fr1, %fr10, %fr1	# lib.ml#41:48->41:75
	FSUB	%fr10, %fr11, %fr1	# lib.ml#41:21->41:76
	FLDA	%fr1, $min_caml_l.1135	# lib.ml#41:90->41:93
	FDIV	%fr1, %fr12, %fr1	# lib.ml#41:81->41:93
	FSUB	%fr1, %fr10, %fr1	# lib.ml#41:21->41:94
	FADD	%fr0, %fr1, %fr0	# lib.ml#41:21->41:99
	LINK	# lib.ml#41:22->41:26
min_caml_atan:
	SDR	%r9, %r31, $0	# lib.ml#31:12->31:14
	FLDA	%fr9, $min_caml_l.1119	# lib.ml#31:12->31:14
	FCMP	%fr9, %fr0	# lib.ml#31:5->37:48
	FJLT	$min_caml_if_flt.1464	# lib.ml#31:5->37:48
	FLDA	%fr9, $min_caml_l.1118	# lib.ml#34:20->34:23
	SDR	%r0, %r31, $4	# lib.ml#34:15->34:23
	FSDR	%fr0, %r31, $8	# lib.ml#34:15->34:23
	FMV	%fr0, %fr9	# lib.ml#34:15->34:23
	ADDI	%r31, %r31, $12	# lib.ml#34:15->34:23
	ADDI	%r31, %r31, $4	# lib.ml#34:15->34:23
	SIP	# lib.ml#34:15->34:23
	J	$min_caml_sqrt	# lib.ml#34:15->34:23
	ADDI	%r31, %r31, $-12	# lib.ml#34:15->34:23
	FMV	%fr8, %fr0	# lib.ml#34:15->34:23
	LDR	%r0, %r31, $4	# lib.ml#34:15->34:23
	FLDR	%fr0, %r31, $8	# lib.ml#34:15->34:23
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#34:28->34:31
	FSUB	%fr9, %fr8, %fr9	# lib.ml#34:14->34:31
	FCMP	%fr0, %fr9	# lib.ml#34:5->37:48
	FJLT	$min_caml_if_flt.1466	# lib.ml#34:5->37:48
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#35:13->35:16
	FCMP	%fr0, %fr9	# lib.ml#35:5->37:48
	FJLT	$min_caml_if_flt.1468	# lib.ml#35:5->37:48
	FLDA	%fr9, $min_caml_l.1118	# lib.ml#36:20->36:23
	SDR	%r0, %r31, $12	# lib.ml#36:15->36:23
	FSDR	%fr0, %r31, $16	# lib.ml#36:15->36:23
	FMV	%fr0, %fr9	# lib.ml#36:15->36:23
	ADDI	%r31, %r31, $20	# lib.ml#36:15->36:23
	ADDI	%r31, %r31, $4	# lib.ml#36:15->36:23
	SIP	# lib.ml#36:15->36:23
	J	$min_caml_sqrt	# lib.ml#36:15->36:23
	ADDI	%r31, %r31, $-20	# lib.ml#36:15->36:23
	FMV	%fr8, %fr0	# lib.ml#36:15->36:23
	LDR	%r0, %r31, $12	# lib.ml#36:15->36:23
	FLDR	%fr0, %r31, $16	# lib.ml#36:15->36:23
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#36:28->36:31
	FADD	%fr9, %fr8, %fr9	# lib.ml#36:14->36:31
	FCMP	%fr0, %fr9	# lib.ml#36:5->37:48
	FJLT	$min_caml_if_flt.1470	# lib.ml#36:5->37:48
	FLDA	%fr8, $min_caml_l.1136	# lib.ml#37:5->37:22
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#37:36->37:39
	FDIV	%fr9, %fr9, %fr0	# lib.ml#37:36->37:42
	MVI	%r9, $100	# lib.ml#37:44->37:47
	SDR	%r0, %r31, $20	# lib.ml#37:27->37:47
	FSDR	%fr0, %r31, $24	# lib.ml#37:27->37:47
	MV	%r0, %r9	# lib.ml#37:27->37:47
	FMV	%fr0, %fr9	# lib.ml#37:27->37:47
	ADDI	%r31, %r31, $28	# lib.ml#37:27->37:47
	ADDI	%r31, %r31, $4	# lib.ml#37:27->37:47
	SIP	# lib.ml#37:27->37:47
	J	$min_caml_atansub.918	# lib.ml#37:27->37:47
	ADDI	%r31, %r31, $-28	# lib.ml#37:27->37:47
	FMV	%fr9, %fr0	# lib.ml#37:27->37:47
	LDR	%r0, %r31, $20	# lib.ml#37:27->37:47
	FLDR	%fr0, %r31, $24	# lib.ml#37:27->37:47
	FSUB	%fr0, %fr8, %fr9	# lib.ml#37:5->37:48
	J	$min_caml_if_flt_cont.1471	# lib.ml#36:5->37:48
min_caml_if_flt.1470:
	FLDA	%fr7, $min_caml_l.1121	# lib.ml#36:38->36:55
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#36:73->36:76
	FSUB	%fr8, %fr0, %fr9	# lib.ml#36:70->36:76
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#36:83->36:86
	FADD	%fr9, %fr0, %fr9	# lib.ml#36:80->36:86
	FDIV	%fr9, %fr8, %fr9	# lib.ml#36:69->36:87
	MVI	%r9, $100	# lib.ml#36:89->36:92
	SDR	%r0, %r31, $28	# lib.ml#36:60->36:92
	FSDR	%fr0, %r31, $32	# lib.ml#36:60->36:92
	MV	%r0, %r9	# lib.ml#36:60->36:92
	FMV	%fr0, %fr9	# lib.ml#36:60->36:92
	ADDI	%r31, %r31, $36	# lib.ml#36:60->36:92
	ADDI	%r31, %r31, $4	# lib.ml#36:60->36:92
	SIP	# lib.ml#36:60->36:92
	J	$min_caml_atansub.918	# lib.ml#36:60->36:92
	ADDI	%r31, %r31, $-36	# lib.ml#36:60->36:92
	FMV	%fr9, %fr0	# lib.ml#36:60->36:92
	LDR	%r0, %r31, $28	# lib.ml#36:60->36:92
	FLDR	%fr0, %r31, $32	# lib.ml#36:60->36:92
	FADD	%fr0, %fr7, %fr9	# lib.ml#36:38->36:93
min_caml_if_flt_cont.1471:
	J	$min_caml_if_flt_cont.1469	# lib.ml#35:5->37:48
min_caml_if_flt.1468:
	FLDA	%fr7, $min_caml_l.1121	# lib.ml#35:22->35:39
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#35:54->35:57
	FSUB	%fr8, %fr9, %fr0	# lib.ml#35:54->35:60
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#35:64->35:67
	FADD	%fr9, %fr9, %fr0	# lib.ml#35:64->35:70
	FDIV	%fr9, %fr8, %fr9	# lib.ml#35:53->35:71
	MVI	%r9, $100	# lib.ml#35:73->35:76
	SDR	%r0, %r31, $36	# lib.ml#35:44->35:76
	FSDR	%fr0, %r31, $40	# lib.ml#35:44->35:76
	MV	%r0, %r9	# lib.ml#35:44->35:76
	FMV	%fr0, %fr9	# lib.ml#35:44->35:76
	ADDI	%r31, %r31, $44	# lib.ml#35:44->35:76
	ADDI	%r31, %r31, $4	# lib.ml#35:44->35:76
	SIP	# lib.ml#35:44->35:76
	J	$min_caml_atansub.918	# lib.ml#35:44->35:76
	ADDI	%r31, %r31, $-44	# lib.ml#35:44->35:76
	FMV	%fr9, %fr0	# lib.ml#35:44->35:76
	LDR	%r0, %r31, $36	# lib.ml#35:44->35:76
	FLDR	%fr0, %r31, $40	# lib.ml#35:44->35:76
	FSUB	%fr0, %fr7, %fr9	# lib.ml#35:22->35:77
min_caml_if_flt_cont.1469:
	J	$min_caml_if_flt_cont.1467	# lib.ml#34:5->37:48
min_caml_if_flt.1466:
	MVI	%r9, $100	# lib.ml#34:48->34:51
	SDR	%r0, %r31, $44	# lib.ml#34:38->34:51
	FSDR	%fr0, %r31, $48	# lib.ml#34:38->34:51
	LDR	%r0, %r31, $44	# lib.ml#34:38->34:51
	FLDR	%fr0, %r31, $48	# lib.ml#34:38->34:51
	MV	%r0, %r9	# lib.ml#34:38->34:51
	ADDI	%r31, %r31, $52	# lib.ml#34:38->34:51
	ADDI	%r31, %r31, $4	# lib.ml#34:38->34:51
	SIP	# lib.ml#34:38->34:51
	J	$min_caml_atansub.918	# lib.ml#34:38->34:51
	ADDI	%r31, %r31, $-52	# lib.ml#34:38->34:51
min_caml_if_flt_cont.1467:
	J	$min_caml_if_flt_cont.1465	# lib.ml#31:5->37:48
min_caml_if_flt.1464:
	FNEG2	%fr9, %fr0	# lib.ml#31:29->31:32
	SDR	%r0, %r31, $52	# lib.ml#31:23->31:33
	FSDR	%fr0, %r31, $56	# lib.ml#31:23->31:33
	FMV	%fr0, %fr9	# lib.ml#31:23->31:33
	ADDI	%r31, %r31, $60	# lib.ml#31:23->31:33
	ADDI	%r31, %r31, $4	# lib.ml#31:23->31:33
	SIP	# lib.ml#31:23->31:33
	J	$min_caml_atan	# lib.ml#31:23->31:33
	ADDI	%r31, %r31, $-60	# lib.ml#31:23->31:33
	FMV	%fr9, %fr0	# lib.ml#31:23->31:33
	LDR	%r0, %r31, $52	# lib.ml#31:23->31:33
	FLDR	%fr0, %r31, $56	# lib.ml#31:23->31:33
	FNEG2	%fr0, %fr9	# lib.ml#31:20->31:34
min_caml_if_flt_cont.1465:
	LDR	%r9, %r31, $0	# lib.ml#31:12->31:14
	LINK	# lib.ml#31:12->31:14
min_caml_atansub.918:
	SDR	%r9, %r31, $0	# lib.ml#33:34->33:35
	SDR	%r8, %r31, $4	# lib.ml#33:34->33:35
	MVI	%r9, $0	# lib.ml#33:34->33:35
	CEQ	%r1, %r9	# lib.ml#33:27->33:122
	JZ	$min_caml_if_eq.1472	# lib.ml#33:27->33:122
	MVI	%r9, $1	# lib.ml#33:62->33:63
	SUB	%r9, %r1, %r9	# lib.ml#33:60->33:63
	SDR	%r1, %r31, $8	# lib.ml#33:49->33:64
	SDR	%r0, %r31, $12	# lib.ml#33:49->33:64
	FSDR	%fr0, %r31, $16	# lib.ml#33:49->33:64
	MV	%r0, %r9	# lib.ml#33:49->33:64
	ADDI	%r31, %r31, $20	# lib.ml#33:49->33:64
	ADDI	%r31, %r31, $4	# lib.ml#33:49->33:64
	SIP	# lib.ml#33:49->33:64
	J	$min_caml_atansub.918	# lib.ml#33:49->33:64
	ADDI	%r31, %r31, $-20	# lib.ml#33:49->33:64
	FMV	%fr7, %fr0	# lib.ml#33:49->33:64
	LDR	%r1, %r31, $8	# lib.ml#33:49->33:64
	LDR	%r0, %r31, $12	# lib.ml#33:49->33:64
	FLDR	%fr0, %r31, $16	# lib.ml#33:49->33:64
	FNEG2	%fr9, %fr0	# lib.ml#33:78->33:81
	MVI	%r9, $2	# lib.ml#33:84->33:85
	MUL	%r8, %r9, %r1	# lib.ml#33:84->33:87
	MVI	%r9, $1	# lib.ml#33:90->33:91
	ADD	%r9, %r8, %r9	# lib.ml#33:84->33:91
	SDR	%r1, %r31, $20	# lib.ml#33:71->33:92
	SDR	%r0, %r31, $24	# lib.ml#33:71->33:92
	FSDR	%fr0, %r31, $28	# lib.ml#33:71->33:92
	MV	%r0, %r9	# lib.ml#33:71->33:92
	FMV	%fr0, %fr9	# lib.ml#33:71->33:92
	ADDI	%r31, %r31, $32	# lib.ml#33:71->33:92
	ADDI	%r31, %r31, $4	# lib.ml#33:71->33:92
	SIP	# lib.ml#33:71->33:92
	J	$min_caml_power.915	# lib.ml#33:71->33:92
	ADDI	%r31, %r31, $-32	# lib.ml#33:71->33:92
	FMV	%fr8, %fr0	# lib.ml#33:71->33:92
	LDR	%r1, %r31, $20	# lib.ml#33:71->33:92
	LDR	%r0, %r31, $24	# lib.ml#33:71->33:92
	FLDR	%fr0, %r31, $28	# lib.ml#33:71->33:92
	MVI	%r9, $2	# lib.ml#33:112->33:113
	MUL	%r8, %r9, %r1	# lib.ml#33:112->33:115
	MVI	%r9, $1	# lib.ml#33:118->33:119
	ADD	%r9, %r8, %r9	# lib.ml#33:112->33:119
	SDR	%r1, %r31, $32	# lib.ml#33:98->33:120
	SDR	%r0, %r31, $36	# lib.ml#33:98->33:120
	FSDR	%fr0, %r31, $40	# lib.ml#33:98->33:120
	MV	%r0, %r9	# lib.ml#33:98->33:120
	ADDI	%r31, %r31, $44	# lib.ml#33:98->33:120
	ADDI	%r31, %r31, $4	# lib.ml#33:98->33:120
	SIP	# lib.ml#33:98->33:120
	J	$min_caml_float_of_int	# lib.ml#33:98->33:120
	ADDI	%r31, %r31, $-44	# lib.ml#33:98->33:120
	FMV	%fr9, %fr0	# lib.ml#33:98->33:120
	LDR	%r1, %r31, $32	# lib.ml#33:98->33:120
	LDR	%r0, %r31, $36	# lib.ml#33:98->33:120
	FLDR	%fr0, %r31, $40	# lib.ml#33:98->33:120
	FDIV	%fr9, %fr8, %fr9	# lib.ml#33:70->33:121
	FADD	%fr0, %fr7, %fr9	# lib.ml#33:48->33:122
	J	$min_caml_if_eq_cont.1473	# lib.ml#33:27->33:122
min_caml_if_eq.1472:
min_caml_if_eq_cont.1473:
	LDR	%r9, %r31, $0	# lib.ml#33:34->33:35
	LDR	%r8, %r31, $4	# lib.ml#33:34->33:35
	LINK	# lib.ml#33:34->33:35
min_caml_power.915:
	SDR	%r9, %r31, $0	# lib.ml#32:32->32:33
	MVI	%r9, $0	# lib.ml#32:32->32:33
	CEQ	%r1, %r9	# lib.ml#32:25->32:68
	JZ	$min_caml_if_eq.1474	# lib.ml#32:25->32:68
	MVI	%r9, $1	# lib.ml#32:65->32:66
	SUB	%r9, %r1, %r9	# lib.ml#32:63->32:66
	SDR	%r1, %r31, $4	# lib.ml#32:54->32:67
	SDR	%r0, %r31, $8	# lib.ml#32:54->32:67
	FSDR	%fr0, %r31, $12	# lib.ml#32:54->32:67
	MV	%r0, %r9	# lib.ml#32:54->32:67
	ADDI	%r31, %r31, $16	# lib.ml#32:54->32:67
	ADDI	%r31, %r31, $4	# lib.ml#32:54->32:67
	SIP	# lib.ml#32:54->32:67
	J	$min_caml_power.915	# lib.ml#32:54->32:67
	ADDI	%r31, %r31, $-16	# lib.ml#32:54->32:67
	FMV	%fr9, %fr0	# lib.ml#32:54->32:67
	LDR	%r1, %r31, $4	# lib.ml#32:54->32:67
	LDR	%r0, %r31, $8	# lib.ml#32:54->32:67
	FLDR	%fr0, %r31, $12	# lib.ml#32:54->32:67
	FMUL	%fr0, %fr0, %fr9	# lib.ml#32:48->32:68
	J	$min_caml_if_eq_cont.1475	# lib.ml#32:25->32:68
min_caml_if_eq.1474:
	FLDA	%fr0, $min_caml_l.1132	# lib.ml#32:39->32:42
min_caml_if_eq_cont.1475:
	LDR	%r9, %r31, $0	# lib.ml#32:32->32:33
	LINK	# lib.ml#32:32->32:33
min_caml_sqrt:
	SDR	%r9, %r31, $0	# lib.ml#27:2->29:13
	SDR	%r8, %r31, $4	# lib.ml#27:2->29:13
	SDR	%r7, %r31, $8	# lib.ml#27:2->29:13
	MV	%r8, %r30	# lib.ml#27:2->29:13
	ADDI	%r30, %r30, $8	# lib.ml#27:2->29:13
	MVI	%r9, $min_caml_f.975	# lib.ml#27:2->29:13
	SDR	%r9, %r8, $0	# lib.ml#27:2->29:13
	FSDR	%fr0, %r8, $4	# lib.ml#27:2->29:13
	MV	%r9, %r30	# lib.ml#28:2->29:13
	ADDI	%r30, %r30, $8	# lib.ml#28:2->29:13
	MVI	%r7, $min_caml_g.977	# lib.ml#28:2->29:13
	SDR	%r7, %r9, $0	# lib.ml#28:2->29:13
	SDR	%r8, %r9, $4	# lib.ml#28:2->29:13
	SDR	%r0, %r31, $12	# lib.ml#29:9->29:12
	FSDR	%fr0, %r31, $16	# lib.ml#29:9->29:12
	MV	%r0, %r9	# lib.ml#29:9->29:12
	ADDI	%r31, %r31, $20	# lib.ml#29:9->29:12
	ADDI	%r31, %r31, $4	# lib.ml#29:9->29:12
	SIP	# lib.ml#29:9->29:12
	JC	# lib.ml#29:9->29:12
	ADDI	%r31, %r31, $-20	# lib.ml#29:9->29:12
	LDR	%r0, %r31, $12	# lib.ml#29:9->29:12
	FLDR	%fr0, %r31, $16	# lib.ml#29:9->29:12
	LDR	%r9, %r31, $0	# lib.ml#27:2->29:13
	LDR	%r8, %r31, $4	# lib.ml#27:2->29:13
	LDR	%r7, %r31, $8	# lib.ml#27:2->29:13
	LINK	# lib.ml#27:2->29:13
min_caml_g.977:
	SDR	%r9, %r31, $0	# lib.ml#28:16->28:110
	LDA	%r9, $min_caml_g.977, $4	# lib.ml#28:16->28:110
	FLDA	%fr8, $min_caml_l.1137	# lib.ml#28:31->28:40
	SDR	%r0, %r31, $4	# lib.ml#28:21->28:24
	FSDR	%fr0, %r31, $8	# lib.ml#28:21->28:24
	MV	%r0, %r9	# lib.ml#28:21->28:24
	ADDI	%r31, %r31, $12	# lib.ml#28:21->28:24
	ADDI	%r31, %r31, $4	# lib.ml#28:21->28:24
	SIP	# lib.ml#28:21->28:24
	JC	# lib.ml#28:21->28:24
	ADDI	%r31, %r31, $-12	# lib.ml#28:21->28:24
	FMV	%fr9, %fr0	# lib.ml#28:21->28:24
	LDR	%r0, %r31, $4	# lib.ml#28:21->28:24
	FLDR	%fr0, %r31, $8	# lib.ml#28:21->28:24
	FSUB	%fr9, %fr9, %fr0	# lib.ml#28:20->28:28
	FCMP	%fr8, %fr9	# lib.ml#28:16->28:110
	FJLT	$min_caml_if_flt.1476	# lib.ml#28:16->28:110
	SDR	%r0, %r31, $12	# lib.ml#28:65->28:68
	FSDR	%fr0, %r31, $16	# lib.ml#28:65->28:68
	MV	%r0, %r9	# lib.ml#28:65->28:68
	ADDI	%r31, %r31, $20	# lib.ml#28:65->28:68
	ADDI	%r31, %r31, $4	# lib.ml#28:65->28:68
	SIP	# lib.ml#28:65->28:68
	JC	# lib.ml#28:65->28:68
	ADDI	%r31, %r31, $-20	# lib.ml#28:65->28:68
	FMV	%fr9, %fr0	# lib.ml#28:65->28:68
	LDR	%r0, %r31, $12	# lib.ml#28:65->28:68
	FLDR	%fr0, %r31, $16	# lib.ml#28:65->28:68
	FSUB	%fr8, %fr9, %fr0	# lib.ml#28:64->28:72
	FLDA	%fr9, $min_caml_l.1138	# lib.ml#28:75->28:86
	FCMP	%fr8, %fr9	# lib.ml#28:60->28:109
	FJLT	$min_caml_if_flt.1478	# lib.ml#28:60->28:109
	SDR	%r0, %r31, $20	# lib.ml#28:105->28:108
	FSDR	%fr0, %r31, $24	# lib.ml#28:105->28:108
	MV	%r0, %r9	# lib.ml#28:105->28:108
	ADDI	%r31, %r31, $28	# lib.ml#28:105->28:108
	ADDI	%r31, %r31, $4	# lib.ml#28:105->28:108
	SIP	# lib.ml#28:105->28:108
	JC	# lib.ml#28:105->28:108
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
	ADDI	%r31, %r31, $4	# lib.ml#28:102->28:109
	SIP	# lib.ml#28:102->28:109
	JC	# lib.ml#28:102->28:109
	ADDI	%r31, %r31, $-36	# lib.ml#28:102->28:109
	J	$min_caml_if_flt_cont.1479	# lib.ml#28:60->28:109
min_caml_if_flt.1478:
	SDR	%r0, %r31, $36	# lib.ml#28:93->28:96
	FSDR	%fr0, %r31, $40	# lib.ml#28:93->28:96
	LDR	%r0, %r31, $36	# lib.ml#28:93->28:96
	FLDR	%fr0, %r31, $40	# lib.ml#28:93->28:96
	MV	%r0, %r9	# lib.ml#28:93->28:96
	ADDI	%r31, %r31, $44	# lib.ml#28:93->28:96
	ADDI	%r31, %r31, $4	# lib.ml#28:93->28:96
	SIP	# lib.ml#28:93->28:96
	JC	# lib.ml#28:93->28:96
	ADDI	%r31, %r31, $-44	# lib.ml#28:93->28:96
min_caml_if_flt_cont.1479:
	J	$min_caml_if_flt_cont.1477	# lib.ml#28:16->28:110
min_caml_if_flt.1476:
	SDR	%r0, %r31, $44	# lib.ml#28:49->28:52
	FSDR	%fr0, %r31, $48	# lib.ml#28:49->28:52
	MV	%r0, %r9	# lib.ml#28:49->28:52
	ADDI	%r31, %r31, $52	# lib.ml#28:49->28:52
	ADDI	%r31, %r31, $4	# lib.ml#28:49->28:52
	SIP	# lib.ml#28:49->28:52
	JC	# lib.ml#28:49->28:52
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
	ADDI	%r31, %r31, $4	# lib.ml#28:46->28:53
	SIP	# lib.ml#28:46->28:53
	JC	# lib.ml#28:46->28:53
	ADDI	%r31, %r31, $-60	# lib.ml#28:46->28:53
min_caml_if_flt_cont.1477:
	LDR	%r9, %r31, $0	# lib.ml#28:16->28:110
	LINK	# lib.ml#28:16->28:110
min_caml_f.975:
	FLDA	%fr1, $min_caml_f.975, $4	# lib.ml#27:21->27:28
	FMUL	%fr10, %fr0, %fr0	# lib.ml#27:21->27:25
	FSUB	%fr10, %fr10, %fr1	# lib.ml#27:21->27:28
	FLDA	%fr1, $min_caml_l.1118	# lib.ml#27:32->27:35
	FMUL	%fr1, %fr1, %fr0	# lib.ml#27:32->27:38
	FDIV	%fr1, %fr10, %fr1	# lib.ml#27:20->27:39
	FSUB	%fr0, %fr0, %fr1	# lib.ml#27:16->27:40
	LINK	# lib.ml#27:21->27:28
min_caml_floor:
	SDR	%r9, %r31, $0	# lib.ml#19:2->25:16
	SDR	%r8, %r31, $4	# lib.ml#19:2->25:16
	SDR	%r7, %r31, $8	# lib.ml#19:2->25:16
	MV	%r9, %r30	# lib.ml#19:2->25:16
	ADDI	%r30, %r30, $8	# lib.ml#19:2->25:16
	MVI	%r8, $min_caml_searchsub.993	# lib.ml#19:2->25:16
	SDR	%r8, %r9, $0	# lib.ml#19:2->25:16
	FSDR	%fr0, %r9, $4	# lib.ml#19:2->25:16
	MV	%r8, %r30	# lib.ml#21:2->25:16
	ADDI	%r30, %r30, $8	# lib.ml#21:2->25:16
	MVI	%r7, $min_caml_search.995	# lib.ml#21:2->25:16
	SDR	%r7, %r8, $0	# lib.ml#21:2->25:16
	FSDR	%fr0, %r8, $4	# lib.ml#21:2->25:16
	MVI	%r7, $1	# lib.ml#24:20->24:21
	SDR	%r0, %r31, $12	# lib.ml#24:10->24:21
	FSDR	%fr0, %r31, $16	# lib.ml#24:10->24:21
	MV	%r1, %r7	# lib.ml#24:10->24:21
	MV	%r0, %r9	# lib.ml#24:10->24:21
	ADDI	%r31, %r31, $20	# lib.ml#24:10->24:21
	ADDI	%r31, %r31, $4	# lib.ml#24:10->24:21
	SIP	# lib.ml#24:10->24:21
	JC	# lib.ml#24:10->24:21
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
	ADDI	%r31, %r31, $4	# lib.ml#25:2->25:16
	SIP	# lib.ml#25:2->25:16
	JC	# lib.ml#25:2->25:16
	ADDI	%r31, %r31, $-28	# lib.ml#25:2->25:16
	LDR	%r0, %r31, $20	# lib.ml#25:2->25:16
	FLDR	%fr0, %r31, $24	# lib.ml#25:2->25:16
	LDR	%r9, %r31, $0	# lib.ml#19:2->25:16
	LDR	%r8, %r31, $4	# lib.ml#19:2->25:16
	LDR	%r7, %r31, $8	# lib.ml#19:2->25:16
	LINK	# lib.ml#19:2->25:16
min_caml_search.995:
	SDR	%r9, %r31, $0	# lib.ml#22:4->23:94
	SDR	%r8, %r31, $4	# lib.ml#22:4->23:94
	FLDA	%fr9, $min_caml_search.995, $4	# lib.ml#22:4->23:94
	SUB	%r8, %r2, %r1	# lib.ml#22:8->22:11
	MVI	%r9, $1	# lib.ml#22:14->22:15
	CEQ	%r8, %r9	# lib.ml#22:4->23:94
	JZ	$min_caml_if_eq.1480	# lib.ml#22:4->23:94
	ADD	%r8, %r1, %r2	# lib.ml#23:32->23:35
	MVI	%r9, $2	# lib.ml#23:37->23:38
	DIV	%r9, %r8, %r9	# lib.ml#23:31->23:38
	SDR	%r2, %r31, $8	# lib.ml#23:17->23:39
	SDR	%r1, %r31, $12	# lib.ml#23:17->23:39
	SDR	%r0, %r31, $16	# lib.ml#23:17->23:39
	MV	%r0, %r9	# lib.ml#23:17->23:39
	ADDI	%r31, %r31, $20	# lib.ml#23:17->23:39
	ADDI	%r31, %r31, $4	# lib.ml#23:17->23:39
	SIP	# lib.ml#23:17->23:39
	J	$min_caml_float_of_int	# lib.ml#23:17->23:39
	ADDI	%r31, %r31, $-20	# lib.ml#23:17->23:39
	FMV	%fr8, %fr0	# lib.ml#23:17->23:39
	LDR	%r2, %r31, $8	# lib.ml#23:17->23:39
	LDR	%r1, %r31, $12	# lib.ml#23:17->23:39
	LDR	%r0, %r31, $16	# lib.ml#23:17->23:39
	FCMP	%fr8, %fr9	# lib.ml#23:13->23:93
	FJLT	$min_caml_if_flt.1482	# lib.ml#23:13->23:93
	MVI	%r9, $2	# lib.ml#23:91->23:92
	DIV	%r9, %r8, %r9	# lib.ml#23:85->23:92
	SDR	%r2, %r31, $20	# lib.ml#23:75->23:93
	SDR	%r1, %r31, $24	# lib.ml#23:75->23:93
	SDR	%r0, %r31, $28	# lib.ml#23:75->23:93
	LDR	%r2, %r31, $20	# lib.ml#23:75->23:93
	LDR	%r1, %r31, $24	# lib.ml#23:75->23:93
	LDR	%r0, %r31, $28	# lib.ml#23:75->23:93
	MV	%r2, %r9	# lib.ml#23:75->23:93
	ADDI	%r31, %r31, $32	# lib.ml#23:75->23:93
	ADDI	%r31, %r31, $4	# lib.ml#23:75->23:93
	SIP	# lib.ml#23:75->23:93
	JC	# lib.ml#23:75->23:93
	ADDI	%r31, %r31, $-32	# lib.ml#23:75->23:93
	J	$min_caml_if_flt_cont.1483	# lib.ml#23:13->23:93
min_caml_if_flt.1482:
	MVI	%r9, $2	# lib.ml#23:65->23:66
	DIV	%r9, %r8, %r9	# lib.ml#23:59->23:66
	SDR	%r2, %r31, $32	# lib.ml#23:51->23:69
	SDR	%r1, %r31, $36	# lib.ml#23:51->23:69
	SDR	%r0, %r31, $40	# lib.ml#23:51->23:69
	LDR	%r2, %r31, $32	# lib.ml#23:51->23:69
	LDR	%r1, %r31, $36	# lib.ml#23:51->23:69
	LDR	%r0, %r31, $40	# lib.ml#23:51->23:69
	MV	%r1, %r9	# lib.ml#23:51->23:69
	ADDI	%r31, %r31, $44	# lib.ml#23:51->23:69
	ADDI	%r31, %r31, $4	# lib.ml#23:51->23:69
	SIP	# lib.ml#23:51->23:69
	JC	# lib.ml#23:51->23:69
	ADDI	%r31, %r31, $-44	# lib.ml#23:51->23:69
min_caml_if_flt_cont.1483:
	J	$min_caml_if_eq_cont.1481	# lib.ml#22:4->23:94
min_caml_if_eq.1480:
	MV	%r0, %r1	# lib.ml#23:3->23:4
min_caml_if_eq_cont.1481:
	LDR	%r9, %r31, $0	# lib.ml#22:4->23:94
	LDR	%r8, %r31, $4	# lib.ml#22:4->23:94
	LINK	# lib.ml#22:4->23:94
min_caml_searchsub.993:
	SDR	%r9, %r31, $0	# lib.ml#20:3->20:60
	SDR	%r8, %r31, $4	# lib.ml#20:3->20:60
	FLDA	%fr9, $min_caml_searchsub.993, $4	# lib.ml#20:3->20:60
	SDR	%r1, %r31, $8	# lib.ml#20:8->20:22
	SDR	%r0, %r31, $12	# lib.ml#20:8->20:22
	MV	%r0, %r1	# lib.ml#20:8->20:22
	ADDI	%r31, %r31, $16	# lib.ml#20:8->20:22
	ADDI	%r31, %r31, $4	# lib.ml#20:8->20:22
	SIP	# lib.ml#20:8->20:22
	J	$min_caml_float_of_int	# lib.ml#20:8->20:22
	ADDI	%r31, %r31, $-16	# lib.ml#20:8->20:22
	FMV	%fr8, %fr0	# lib.ml#20:8->20:22
	LDR	%r1, %r31, $8	# lib.ml#20:8->20:22
	LDR	%r0, %r31, $12	# lib.ml#20:8->20:22
	FCMP	%fr9, %fr8	# lib.ml#20:3->20:60
	FJLT	$min_caml_if_flt.1484	# lib.ml#20:3->20:60
	MV	%r0, %r1	# lib.ml#20:59->20:60
	J	$min_caml_if_flt_cont.1485	# lib.ml#20:3->20:60
min_caml_if_flt.1484:
	MVI	%r9, $4	# lib.ml#20:48->20:49
	MUL	%r8, %r1, %r9	# lib.ml#20:46->20:49
	MVI	%r9, $2	# lib.ml#20:50->20:51
	DIV	%r9, %r8, %r9	# lib.ml#20:46->20:51
	SDR	%r1, %r31, $16	# lib.ml#20:35->20:52
	SDR	%r0, %r31, $20	# lib.ml#20:35->20:52
	LDR	%r1, %r31, $16	# lib.ml#20:35->20:52
	LDR	%r0, %r31, $20	# lib.ml#20:35->20:52
	MV	%r1, %r9	# lib.ml#20:35->20:52
	ADDI	%r31, %r31, $24	# lib.ml#20:35->20:52
	ADDI	%r31, %r31, $4	# lib.ml#20:35->20:52
	SIP	# lib.ml#20:35->20:52
	JC	# lib.ml#20:35->20:52
	ADDI	%r31, %r31, $-24	# lib.ml#20:35->20:52
min_caml_if_flt_cont.1485:
	LDR	%r9, %r31, $0	# lib.ml#20:3->20:60
	LDR	%r8, %r31, $4	# lib.ml#20:3->20:60
	LINK	# lib.ml#20:3->20:60
min_caml_int_of_float:
	SDR	%r9, %r31, $0	# lib.ml#11:2->17:16
	SDR	%r8, %r31, $4	# lib.ml#11:2->17:16
	SDR	%r7, %r31, $8	# lib.ml#11:2->17:16
	MV	%r9, %r30	# lib.ml#11:2->17:16
	ADDI	%r30, %r30, $8	# lib.ml#11:2->17:16
	MVI	%r8, $min_caml_searchsub.1020	# lib.ml#11:2->17:16
	SDR	%r8, %r9, $0	# lib.ml#11:2->17:16
	FSDR	%fr0, %r9, $4	# lib.ml#11:2->17:16
	MV	%r8, %r30	# lib.ml#13:2->17:16
	ADDI	%r30, %r30, $8	# lib.ml#13:2->17:16
	MVI	%r7, $min_caml_search.1022	# lib.ml#13:2->17:16
	SDR	%r7, %r8, $0	# lib.ml#13:2->17:16
	FSDR	%fr0, %r8, $4	# lib.ml#13:2->17:16
	MVI	%r7, $1	# lib.ml#16:20->16:21
	SDR	%r0, %r31, $12	# lib.ml#16:10->16:21
	FSDR	%fr0, %r31, $16	# lib.ml#16:10->16:21
	MV	%r1, %r7	# lib.ml#16:10->16:21
	MV	%r0, %r9	# lib.ml#16:10->16:21
	ADDI	%r31, %r31, $20	# lib.ml#16:10->16:21
	ADDI	%r31, %r31, $4	# lib.ml#16:10->16:21
	SIP	# lib.ml#16:10->16:21
	JC	# lib.ml#16:10->16:21
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
	ADDI	%r31, %r31, $4	# lib.ml#17:2->17:16
	SIP	# lib.ml#17:2->17:16
	JC	# lib.ml#17:2->17:16
	ADDI	%r31, %r31, $-28	# lib.ml#17:2->17:16
	LDR	%r0, %r31, $20	# lib.ml#17:2->17:16
	FLDR	%fr0, %r31, $24	# lib.ml#17:2->17:16
	LDR	%r9, %r31, $0	# lib.ml#11:2->17:16
	LDR	%r8, %r31, $4	# lib.ml#11:2->17:16
	LDR	%r7, %r31, $8	# lib.ml#11:2->17:16
	LINK	# lib.ml#11:2->17:16
min_caml_search.1022:
	SDR	%r9, %r31, $0	# lib.ml#14:4->15:155
	SDR	%r8, %r31, $4	# lib.ml#14:4->15:155
	FLDA	%fr9, $min_caml_search.1022, $4	# lib.ml#14:4->15:155
	SUB	%r8, %r2, %r1	# lib.ml#14:8->14:11
	MVI	%r9, $1	# lib.ml#14:14->14:15
	CEQ	%r8, %r9	# lib.ml#14:4->15:155
	JZ	$min_caml_if_eq.1486	# lib.ml#14:4->15:155
	ADD	%r8, %r1, %r2	# lib.ml#15:94->15:97
	MVI	%r9, $2	# lib.ml#15:99->15:100
	DIV	%r9, %r8, %r9	# lib.ml#15:93->15:100
	SDR	%r2, %r31, $8	# lib.ml#15:79->15:101
	SDR	%r1, %r31, $12	# lib.ml#15:79->15:101
	SDR	%r0, %r31, $16	# lib.ml#15:79->15:101
	MV	%r0, %r9	# lib.ml#15:79->15:101
	ADDI	%r31, %r31, $20	# lib.ml#15:79->15:101
	ADDI	%r31, %r31, $4	# lib.ml#15:79->15:101
	SIP	# lib.ml#15:79->15:101
	J	$min_caml_float_of_int	# lib.ml#15:79->15:101
	ADDI	%r31, %r31, $-20	# lib.ml#15:79->15:101
	FMV	%fr8, %fr0	# lib.ml#15:79->15:101
	LDR	%r2, %r31, $8	# lib.ml#15:79->15:101
	LDR	%r1, %r31, $12	# lib.ml#15:79->15:101
	LDR	%r0, %r31, $16	# lib.ml#15:79->15:101
	FCMP	%fr9, %fr8	# lib.ml#15:75->15:154
	FJLT	$min_caml_if_flt.1488	# lib.ml#15:75->15:154
	MVI	%r9, $2	# lib.ml#15:152->15:153
	DIV	%r9, %r8, %r9	# lib.ml#15:146->15:153
	SDR	%r2, %r31, $20	# lib.ml#15:136->15:154
	SDR	%r1, %r31, $24	# lib.ml#15:136->15:154
	SDR	%r0, %r31, $28	# lib.ml#15:136->15:154
	LDR	%r2, %r31, $20	# lib.ml#15:136->15:154
	LDR	%r1, %r31, $24	# lib.ml#15:136->15:154
	LDR	%r0, %r31, $28	# lib.ml#15:136->15:154
	MV	%r2, %r9	# lib.ml#15:136->15:154
	ADDI	%r31, %r31, $32	# lib.ml#15:136->15:154
	ADDI	%r31, %r31, $4	# lib.ml#15:136->15:154
	SIP	# lib.ml#15:136->15:154
	JC	# lib.ml#15:136->15:154
	ADDI	%r31, %r31, $-32	# lib.ml#15:136->15:154
	J	$min_caml_if_flt_cont.1489	# lib.ml#15:75->15:154
min_caml_if_flt.1488:
	MVI	%r9, $2	# lib.ml#15:126->15:127
	DIV	%r9, %r8, %r9	# lib.ml#15:120->15:127
	SDR	%r2, %r31, $32	# lib.ml#15:112->15:130
	SDR	%r1, %r31, $36	# lib.ml#15:112->15:130
	SDR	%r0, %r31, $40	# lib.ml#15:112->15:130
	LDR	%r2, %r31, $32	# lib.ml#15:112->15:130
	LDR	%r1, %r31, $36	# lib.ml#15:112->15:130
	LDR	%r0, %r31, $40	# lib.ml#15:112->15:130
	MV	%r1, %r9	# lib.ml#15:112->15:130
	ADDI	%r31, %r31, $44	# lib.ml#15:112->15:130
	ADDI	%r31, %r31, $4	# lib.ml#15:112->15:130
	SIP	# lib.ml#15:112->15:130
	JC	# lib.ml#15:112->15:130
	ADDI	%r31, %r31, $-44	# lib.ml#15:112->15:130
min_caml_if_flt_cont.1489:
	J	$min_caml_if_eq_cont.1487	# lib.ml#14:4->15:155
min_caml_if_eq.1486:
	SDR	%r2, %r31, $44	# lib.ml#15:9->15:23
	SDR	%r1, %r31, $48	# lib.ml#15:9->15:23
	SDR	%r0, %r31, $52	# lib.ml#15:9->15:23
	MV	%r0, %r2	# lib.ml#15:9->15:23
	ADDI	%r31, %r31, $56	# lib.ml#15:9->15:23
	ADDI	%r31, %r31, $4	# lib.ml#15:9->15:23
	SIP	# lib.ml#15:9->15:23
	J	$min_caml_float_of_int	# lib.ml#15:9->15:23
	ADDI	%r31, %r31, $-56	# lib.ml#15:9->15:23
	FMV	%fr8, %fr0	# lib.ml#15:9->15:23
	LDR	%r2, %r31, $44	# lib.ml#15:9->15:23
	LDR	%r1, %r31, $48	# lib.ml#15:9->15:23
	LDR	%r0, %r31, $52	# lib.ml#15:9->15:23
	FSUB	%fr7, %fr8, %fr9	# lib.ml#15:8->15:27
	SDR	%r2, %r31, $56	# lib.ml#15:34->15:48
	SDR	%r1, %r31, $60	# lib.ml#15:34->15:48
	SDR	%r0, %r31, $64	# lib.ml#15:34->15:48
	MV	%r0, %r1	# lib.ml#15:34->15:48
	ADDI	%r31, %r31, $68	# lib.ml#15:34->15:48
	ADDI	%r31, %r31, $4	# lib.ml#15:34->15:48
	SIP	# lib.ml#15:34->15:48
	J	$min_caml_float_of_int	# lib.ml#15:34->15:48
	ADDI	%r31, %r31, $-68	# lib.ml#15:34->15:48
	FMV	%fr8, %fr0	# lib.ml#15:34->15:48
	LDR	%r2, %r31, $56	# lib.ml#15:34->15:48
	LDR	%r1, %r31, $60	# lib.ml#15:34->15:48
	LDR	%r0, %r31, $64	# lib.ml#15:34->15:48
	FSUB	%fr9, %fr9, %fr8	# lib.ml#15:30->15:49
	FCMP	%fr7, %fr9	# lib.ml#15:4->15:64
	FJLT	$min_caml_if_flt.1490	# lib.ml#15:4->15:64
	MV	%r0, %r2	# lib.ml#15:63->15:64
	J	$min_caml_if_flt_cont.1491	# lib.ml#15:4->15:64
min_caml_if_flt.1490:
	MV	%r0, %r1	# lib.ml#15:56->15:57
min_caml_if_flt_cont.1491:
min_caml_if_eq_cont.1487:
	LDR	%r9, %r31, $0	# lib.ml#14:4->15:155
	LDR	%r8, %r31, $4	# lib.ml#14:4->15:155
	LINK	# lib.ml#14:4->15:155
min_caml_searchsub.1020:
	SDR	%r9, %r31, $0	# lib.ml#12:3->12:60
	SDR	%r8, %r31, $4	# lib.ml#12:3->12:60
	FLDA	%fr9, $min_caml_searchsub.1020, $4	# lib.ml#12:3->12:60
	SDR	%r1, %r31, $8	# lib.ml#12:8->12:22
	SDR	%r0, %r31, $12	# lib.ml#12:8->12:22
	MV	%r0, %r1	# lib.ml#12:8->12:22
	ADDI	%r31, %r31, $16	# lib.ml#12:8->12:22
	ADDI	%r31, %r31, $4	# lib.ml#12:8->12:22
	SIP	# lib.ml#12:8->12:22
	J	$min_caml_float_of_int	# lib.ml#12:8->12:22
	ADDI	%r31, %r31, $-16	# lib.ml#12:8->12:22
	FMV	%fr8, %fr0	# lib.ml#12:8->12:22
	LDR	%r1, %r31, $8	# lib.ml#12:8->12:22
	LDR	%r0, %r31, $12	# lib.ml#12:8->12:22
	FCMP	%fr9, %fr8	# lib.ml#12:3->12:60
	FJLT	$min_caml_if_flt.1492	# lib.ml#12:3->12:60
	MV	%r0, %r1	# lib.ml#12:59->12:60
	J	$min_caml_if_flt_cont.1493	# lib.ml#12:3->12:60
min_caml_if_flt.1492:
	MVI	%r9, $4	# lib.ml#12:48->12:49
	MUL	%r8, %r1, %r9	# lib.ml#12:46->12:49
	MVI	%r9, $2	# lib.ml#12:50->12:51
	DIV	%r9, %r8, %r9	# lib.ml#12:46->12:51
	SDR	%r1, %r31, $16	# lib.ml#12:35->12:52
	SDR	%r0, %r31, $20	# lib.ml#12:35->12:52
	LDR	%r1, %r31, $16	# lib.ml#12:35->12:52
	LDR	%r0, %r31, $20	# lib.ml#12:35->12:52
	MV	%r1, %r9	# lib.ml#12:35->12:52
	ADDI	%r31, %r31, $24	# lib.ml#12:35->12:52
	ADDI	%r31, %r31, $4	# lib.ml#12:35->12:52
	SIP	# lib.ml#12:35->12:52
	JC	# lib.ml#12:35->12:52
	ADDI	%r31, %r31, $-24	# lib.ml#12:35->12:52
min_caml_if_flt_cont.1493:
	LDR	%r9, %r31, $0	# lib.ml#12:3->12:60
	LDR	%r8, %r31, $4	# lib.ml#12:3->12:60
	LINK	# lib.ml#12:3->12:60
min_caml_float_of_int:
	SDR	%r9, %r31, $0	# lib.ml#1:33->1:34
	MVI	%r9, $0	# lib.ml#1:33->1:34
	CMP	%r9, %r1	# lib.ml#1:26->9:46
	JZ	$min_caml_if_lt.1494	# lib.ml#1:26->9:46
	FLDA	%fr9, $min_caml_l.1132	# lib.ml#9:29->9:31
	MVI	%r9, $1	# lib.ml#9:32->9:33
	SDR	%r1, %r31, $4	# lib.ml#9:21->9:33
	SDR	%r0, %r31, $8	# lib.ml#9:21->9:33
	MV	%r0, %r1	# lib.ml#9:21->9:33
	MV	%r1, %r9	# lib.ml#9:21->9:33
	FMV	%fr0, %fr9	# lib.ml#9:21->9:33
	ADDI	%r31, %r31, $12	# lib.ml#9:21->9:33
	ADDI	%r31, %r31, $4	# lib.ml#9:21->9:33
	SIP	# lib.ml#9:21->9:33
	J	$min_caml_loopa.1052	# lib.ml#9:21->9:33
	ADDI	%r31, %r31, $-12	# lib.ml#9:21->9:33
	FMV	%fr9, %fr0	# lib.ml#9:21->9:33
	LDR	%r1, %r31, $4	# lib.ml#9:21->9:33
	LDR	%r0, %r31, $8	# lib.ml#9:21->9:33
	MVI	%r9, $1	# lib.ml#9:44->9:45
	SDR	%r1, %r31, $12	# lib.ml#9:36->9:45
	SDR	%r0, %r31, $16	# lib.ml#9:36->9:45
	MV	%r0, %r1	# lib.ml#9:36->9:45
	MV	%r1, %r9	# lib.ml#9:36->9:45
	ADDI	%r31, %r31, $20	# lib.ml#9:36->9:45
	ADDI	%r31, %r31, $4	# lib.ml#9:36->9:45
	SIP	# lib.ml#9:36->9:45
	J	$min_caml_loopb.1056	# lib.ml#9:36->9:45
	ADDI	%r31, %r31, $-20	# lib.ml#9:36->9:45
	MV	%r9, %r0	# lib.ml#9:36->9:45
	LDR	%r1, %r31, $12	# lib.ml#9:36->9:45
	LDR	%r0, %r31, $16	# lib.ml#9:36->9:45
	SDR	%r1, %r31, $20	# lib.ml#9:2->9:46
	SDR	%r0, %r31, $24	# lib.ml#9:2->9:46
	LDR	%r1, %r31, $20	# lib.ml#9:2->9:46
	LDR	%r0, %r31, $24	# lib.ml#9:2->9:46
	MV	%r0, %r1	# lib.ml#9:2->9:46
	MV	%r1, %r9	# lib.ml#9:2->9:46
	FMV	%fr0, %fr9	# lib.ml#9:2->9:46
	ADDI	%r31, %r31, $28	# lib.ml#9:2->9:46
	ADDI	%r31, %r31, $4	# lib.ml#9:2->9:46
	SIP	# lib.ml#9:2->9:46
	J	$min_caml_float_of_intsub.1059	# lib.ml#9:2->9:46
	ADDI	%r31, %r31, $-28	# lib.ml#9:2->9:46
	J	$min_caml_if_lt_cont.1495	# lib.ml#1:26->9:46
min_caml_if_lt.1494:
	NEG2	%r9, %r1	# lib.ml#1:57->1:59
	SDR	%r1, %r31, $28	# lib.ml#1:43->1:60
	SDR	%r0, %r31, $32	# lib.ml#1:43->1:60
	MV	%r0, %r9	# lib.ml#1:43->1:60
	ADDI	%r31, %r31, $36	# lib.ml#1:43->1:60
	ADDI	%r31, %r31, $4	# lib.ml#1:43->1:60
	SIP	# lib.ml#1:43->1:60
	J	$min_caml_float_of_int	# lib.ml#1:43->1:60
	ADDI	%r31, %r31, $-36	# lib.ml#1:43->1:60
	FMV	%fr9, %fr0	# lib.ml#1:43->1:60
	LDR	%r1, %r31, $28	# lib.ml#1:43->1:60
	LDR	%r0, %r31, $32	# lib.ml#1:43->1:60
	FNEG2	%fr0, %fr9	# lib.ml#1:40->1:61
min_caml_if_lt_cont.1495:
	LDR	%r9, %r31, $0	# lib.ml#1:33->1:34
	LINK	# lib.ml#1:33->1:34
min_caml_float_of_intsub.1059:
	SDR	%r9, %r31, $0	# lib.ml#7:3->8:66
	SDR	%r8, %r31, $4	# lib.ml#7:3->8:66
	CMP	%r2, %r1	# lib.ml#7:3->8:66
	JZ	$min_caml_if_lt.1496	# lib.ml#7:3->8:66
	MVI	%r9, $1	# lib.ml#8:16->8:17
	CEQ	%r2, %r9	# lib.ml#8:9->8:65
	JZ	$min_caml_if_eq.1498	# lib.ml#8:9->8:65
	FLDA	%fr9, $min_caml_l.1118	# lib.ml#8:55->8:57
	FDIV	%fr9, %fr0, %fr9	# lib.ml#8:52->8:57
	MVI	%r9, $2	# lib.ml#8:62->8:63
	DIV	%r9, %r2, %r9	# lib.ml#8:60->8:63
	SDR	%r2, %r31, $8	# lib.ml#8:33->8:64
	SDR	%r1, %r31, $12	# lib.ml#8:33->8:64
	SDR	%r0, %r31, $16	# lib.ml#8:33->8:64
	FSDR	%fr0, %r31, $20	# lib.ml#8:33->8:64
	LDR	%r2, %r31, $8	# lib.ml#8:33->8:64
	LDR	%r1, %r31, $12	# lib.ml#8:33->8:64
	LDR	%r0, %r31, $16	# lib.ml#8:33->8:64
	FLDR	%fr0, %r31, $20	# lib.ml#8:33->8:64
	MV	%r0, %r1	# lib.ml#8:33->8:64
	MV	%r1, %r9	# lib.ml#8:33->8:64
	FMV	%fr0, %fr9	# lib.ml#8:33->8:64
	ADDI	%r31, %r31, $24	# lib.ml#8:33->8:64
	ADDI	%r31, %r31, $4	# lib.ml#8:33->8:64
	SIP	# lib.ml#8:33->8:64
	J	$min_caml_float_of_intsub.1059	# lib.ml#8:33->8:64
	ADDI	%r31, %r31, $-24	# lib.ml#8:33->8:64
	J	$min_caml_if_eq_cont.1499	# lib.ml#8:9->8:65
min_caml_if_eq.1498:
	FLDA	%fr0, $min_caml_l.1119	# lib.ml#8:23->8:26
min_caml_if_eq_cont.1499:
	J	$min_caml_if_lt_cont.1497	# lib.ml#7:3->8:66
min_caml_if_lt.1496:
	MVI	%r9, $1	# lib.ml#7:31->7:32
	CEQ	%r2, %r9	# lib.ml#7:24->7:84
	JZ	$min_caml_if_eq.1500	# lib.ml#7:24->7:84
	SUB	%r8, %r1, %r2	# lib.ml#7:65->7:68
	FLDA	%fr9, $min_caml_l.1118	# lib.ml#7:74->7:76
	FDIV	%fr9, %fr0, %fr9	# lib.ml#7:71->7:76
	MVI	%r9, $2	# lib.ml#7:81->7:82
	DIV	%r9, %r2, %r9	# lib.ml#7:79->7:82
	SDR	%r2, %r31, $24	# lib.ml#7:48->7:83
	SDR	%r1, %r31, $28	# lib.ml#7:48->7:83
	SDR	%r0, %r31, $32	# lib.ml#7:48->7:83
	FSDR	%fr0, %r31, $36	# lib.ml#7:48->7:83
	LDR	%r2, %r31, $24	# lib.ml#7:48->7:83
	LDR	%r1, %r31, $28	# lib.ml#7:48->7:83
	LDR	%r0, %r31, $32	# lib.ml#7:48->7:83
	FLDR	%fr0, %r31, $36	# lib.ml#7:48->7:83
	MV	%r1, %r9	# lib.ml#7:48->7:83
	MV	%r0, %r8	# lib.ml#7:48->7:83
	FMV	%fr0, %fr9	# lib.ml#7:48->7:83
	ADDI	%r31, %r31, $40	# lib.ml#7:48->7:83
	ADDI	%r31, %r31, $4	# lib.ml#7:48->7:83
	SIP	# lib.ml#7:48->7:83
	J	$min_caml_float_of_intsub.1059	# lib.ml#7:48->7:83
	ADDI	%r31, %r31, $-40	# lib.ml#7:48->7:83
	FMV	%fr9, %fr0	# lib.ml#7:48->7:83
	J	$min_caml_if_eq_cont.1501	# lib.ml#7:24->7:84
min_caml_if_eq.1500:
	FLDA	%fr9, $min_caml_l.1119	# lib.ml#7:38->7:41
min_caml_if_eq_cont.1501:
	FADD	%fr0, %fr0, %fr9	# lib.ml#7:18->7:85
min_caml_if_lt_cont.1497:
	LDR	%r9, %r31, $0	# lib.ml#7:3->8:66
	LDR	%r8, %r31, $4	# lib.ml#7:3->8:66
	LINK	# lib.ml#7:3->8:66
min_caml_loopb.1056:
	SDR	%r9, %r31, $0	# lib.ml#5:8->5:9
	SDR	%r8, %r31, $4	# lib.ml#5:8->5:9
	MVI	%r9, $4	# lib.ml#5:8->5:9
	MUL	%r8, %r2, %r9	# lib.ml#5:6->5:9
	MVI	%r9, $2	# lib.ml#5:10->5:11
	DIV	%r9, %r8, %r9	# lib.ml#5:6->5:11
	CMP	%r9, %r1	# lib.ml#5:3->5:43
	JZ	$min_caml_if_lt.1502	# lib.ml#5:3->5:43
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
	ADDI	%r31, %r31, $4	# lib.ml#5:28->5:43
	SIP	# lib.ml#5:28->5:43
	J	$min_caml_loopb.1056	# lib.ml#5:28->5:43
	ADDI	%r31, %r31, $-20	# lib.ml#5:28->5:43
	J	$min_caml_if_lt_cont.1503	# lib.ml#5:3->5:43
min_caml_if_lt.1502:
	MV	%r0, %r2	# lib.ml#5:21->5:22
min_caml_if_lt_cont.1503:
	LDR	%r9, %r31, $0	# lib.ml#5:8->5:9
	LDR	%r8, %r31, $4	# lib.ml#5:8->5:9
	LINK	# lib.ml#5:8->5:9
min_caml_loopa.1052:
	SDR	%r9, %r31, $0	# lib.ml#3:8->3:9
	SDR	%r8, %r31, $4	# lib.ml#3:8->3:9
	MVI	%r9, $4	# lib.ml#3:8->3:9
	MUL	%r8, %r2, %r9	# lib.ml#3:6->3:9
	MVI	%r9, $2	# lib.ml#3:10->3:11
	DIV	%r9, %r8, %r9	# lib.ml#3:6->3:11
	CMP	%r9, %r1	# lib.ml#3:3->3:50
	JZ	$min_caml_if_lt.1504	# lib.ml#3:3->3:50
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
	ADDI	%r31, %r31, $4	# lib.ml#3:28->3:50
	SIP	# lib.ml#3:28->3:50
	J	$min_caml_loopa.1052	# lib.ml#3:28->3:50
	ADDI	%r31, %r31, $-24	# lib.ml#3:28->3:50
	J	$min_caml_if_lt_cont.1505	# lib.ml#3:3->3:50
min_caml_if_lt.1504:
min_caml_if_lt_cont.1505:
	LDR	%r9, %r31, $0	# lib.ml#3:8->3:9
	LDR	%r8, %r31, $4	# lib.ml#3:8->3:9
	LINK	# lib.ml#3:8->3:9
.data
min_caml_objects:
	.SPACE 240
min_caml_size:
	.SPACE 8
min_caml_dbg:
	.SPACE 4
min_caml_screen:
	.SPACE 24
min_caml_vp:
	.SPACE 24
min_caml_view:
	.SPACE 24
min_caml_light:
	.SPACE 24
min_caml_cos_v:
	.SPACE 16
min_caml_sin_v:
	.SPACE 16
min_caml_beam:
	.SPACE 8
min_caml_and_net:
	.SPACE 200
min_caml_or_net:
	.SPACE 4
min_caml_temp:
	.SPACE 112
min_caml_cs_temp:
	.SPACE 128
min_caml_solver_dist:
	.SPACE 8
min_caml_vscan:
	.SPACE 24
min_caml_intsec_rectside:
	.SPACE 4
min_caml_tmin:
	.SPACE 8
min_caml_crashed_point:
	.SPACE 24
min_caml_crashed_object:
	.SPACE 4
min_caml_end_flag:
	.SPACE 4
min_caml_viewpoint:
	.SPACE 24
min_caml_nvector:
	.SPACE 24
min_caml_rgb:
	.SPACE 24
min_caml_texture_color:
	.SPACE 24
min_caml_solver_w_vec:
	.SPACE 24
min_caml_chkinside_p:
	.SPACE 24
min_caml_isoutside_q:
	.SPACE 24
min_caml_nvector_w:
	.SPACE 24
min_caml_scan_d:
	.SPACE 8
min_caml_scan_offset:
	.SPACE 8
min_caml_scan_sscany:
	.SPACE 8
min_caml_scan_met1:
	.SPACE 8
min_caml_wscan:
	.SPACE 24
min_caml_image_size:
	.SPACE 16
min_caml_screenz_dir:
	.SPACE 24
min_caml_screenx_dir:
	.SPACE 24
min_caml_screeny_dir:
	.SPACE 24
min_caml_n_objects:
	.SPACE 4
min_caml_startp_fast:
	.SPACE 24
min_caml_intersection_point:
	.SPACE 24
min_caml_startp:
	.SPACE 24
min_caml_intersected_object_id:
min_caml_reflections:
	.SPACE 4
min_caml_n_reflections:
	.SPACE 4
min_caml_diffuse_ray:
	.SPACE 24
min_caml_dirvecs:
	.SPACE 20
min_caml_scan_pitch:
	.SPACE 4
min_caml_image_center:
	.SPACE 8
min_caml_ptrace_dirvec:
	.SPACE 24
min_caml_light_dirvec:
	.SPACE 8
