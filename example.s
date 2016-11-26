.start  min_caml_start
.data
.align  4
.align  4
.text
fib.11:
    MVI %r1, $1 # example.ml#2:12->2:13
    XOR %rd, %r0, %r1   # example.ml#2:5->5:43
    JZ  $if_eq.24   # example.ml#2:5->5:43
    MVI %r1, $2 # example.ml#4:16->4:17
    XOR %rd, %r0, %r1   # example.ml#4:9->5:43
    JZ  $if_eq.25   # example.ml#4:9->5:43
    ADDI    %r1, %r0, $-1   # example.ml#5:20->5:25
    SDR %r0, %rsp, $0   # example.ml#5:15->5:26
    MV  %r1, %r0    # example.ml#5:15->5:26
    ADDI    %rsp, %rsp, $8  # example.ml#5:15->5:26
    JLINK   $fib.11 # example.ml#5:15->5:26
    ADDI    %rsp, %rsp, $-8 # example.ml#5:15->5:26
    LDR %r1, %rsp, $0   # example.ml#5:36->5:41
    ADDI    %r1, %r1, $-2   # example.ml#5:36->5:41
    SDR %r0, %rsp, $4   # example.ml#5:31->5:42
    MV  %r1, %r0    # example.ml#5:31->5:42
    ADDI    %rsp, %rsp, $8  # example.ml#5:31->5:42
    JLINK   $fib.11 # example.ml#5:31->5:42
    ADDI    %rsp, %rsp, $-8 # example.ml#5:31->5:42
    LDR %r1, %rsp, $4   # example.ml#5:14->5:43
    ADD %rd, %r1, %r0   # example.ml#5:14->5:43
    LINK    # example.ml#5:14->5:43
if_eq.25:
    MVI %rd, $1 # example.ml#4:23->4:24
    LINK    # example.ml#4:23->4:24
if_eq.24:
    MVI %rd, $1 # example.ml#2:19->2:20
    LINK    # example.ml#2:19->2:20
min_caml_start:
    MVI %r0, $1 # example.ml#7:21->7:22
    JLINK   $fib.11 # example.ml#7:17->7:22
    PRINT   %r0 # example.ml#7:5->7:23
    LINK
