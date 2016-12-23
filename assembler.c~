#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void print_bin(int i,int d){
    unsigned long j = 1 << (d-1);
    unsigned long k;
    if(i >= 0){
	k = i;
	for(;j>=1;j/=2){
	    printf("%ld",k/j);
	    k%=j;
	}
    }
    else{
	k = j+i+j;
	for(;j>=1;j/=2){
	    printf("%ld",k/j);
	    k%=j;
	}
    }
}
//"2" "r10" "fr5"などの文字列からレジスタ番号を読みとる
void read_reg(char *s) {
  int i = atoi(s);
  print_bin(i,5);
}
//ベース相対 offset(Ra)の解読
void read_base_rel(char *s) {
  int i;
  char r[10];
  sscanf(s,"%d ( %[^)] )",&i,r);
  print_bin(i,16);
  read_reg(r);
}
int execute(char *s) {
  int status;
  char opc[32] = "";
  char opr1[32] = "";
  char opr2[32] = "";
  char opr3[32] = "";
  char opr4[32] = "";
  sscanf(s,"%s %[^, \t\n] , %[^, \t\n] , %[^, \t\n] , %[^, \t\n] ",opc,opr1,opr2,opr3,opr4);

  if(opc[0] == '\0' || opc[0] == '\n') {
    return 0;
  }
  else if(strcmp(opc,"cat") == 0){
    printf("%s",opr1);
  }
  else if(strcmp(opc,"add") * strcmp(opc,"ADD") == 0) {
    //1 : ADD Rd,Rs,Rt : Rd=Rs+Rt
    print_bin(1,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"sub") * strcmp(opc,"SUB") == 0) {
    //2 : SUB Rd,Rs,Rt : Rd=Rs-Rt
    print_bin(2,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"addi") * strcmp(opc,"ADDI") == 0) {
    //3 : ADDI Rd,Rs,imm : Rd=Rs+imm
    print_bin(3,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),16);
  }
  else if(strcmp(opc,"half") * strcmp(opc,"HALF") == 0) {
    //4 : HALF Rd,Rs
    print_bin(4,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"four") * strcmp(opc,"FOUR") == 0) {
    //5 : FOUR Rd,Rs
    print_bin(5,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"j") * strcmp(opc,"J") == 0) {
    //6 : J off26
    print_bin(6,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"jz") * strcmp(opc,"JZ") == 0) {
    //7 : J off26
    print_bin(7,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"fjlt") * strcmp(opc,"FJLT") == 0) {
    //8 : FJLT off26
    print_bin(8,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"fadd") * strcmp(opc,"FADD") == 0) {
    //9 : FADD Rd,Rs,Rt : Rd=Rs+Rt
    print_bin(9,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"fsub") * strcmp(opc,"FSUB") == 0) {
    //10 : FSUB Rd,Rs,Rt
    print_bin(10,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"fmul") * strcmp(opc,"FMUL") == 0) {
    //11 : FMUL Rd,Rs,Rt
    print_bin(11,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"fdiv") * strcmp(opc,"FDIV") == 0) {
    //12 : FDIV Rd,Rs,Rt
    print_bin(12,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"fcmp") * strcmp(opc,"FCMP") == 0) {
    //13 : FCMP Ra,Rb
    print_bin(13,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"fjeq") * strcmp(opc,"FJEQ") == 0) {
    //14 : FJEQ off26
    print_bin(14,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"cmp") * strcmp(opc,"CMP") == 0) {
    //15 : CMP Ra,Rb
    print_bin(15,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"jlink") * strcmp(opc,"JLINK") == 0) {
    //16 : JLINK addr26
    print_bin(16,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"link") * strcmp(opc,"LINK") == 0) {
    //17 : LINK
    print_bin(17,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"jc") * strcmp(opc,"JC") == 0) {
    //19 : JC
    print_bin(19,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"jlinkc") * strcmp(opc,"JLINKC") == 0) {
    //20 : JC
    print_bin(20,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"mv") * strcmp(opc,"MV") == 0) {
    //21 : MV Rd,Rs
    print_bin(21,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"NEG1") * strcmp(opc,"neg1") == 0) {
    //22 : NEG1 Ra
    print_bin(22,6);
    read_reg(opr1);
    print_bin(0,21);
  }
  else if(strcmp(opc,"FNEG1") * strcmp(opc,"fneg1") == 0) {
    //23 : FNEG1 Ra
    print_bin(23,6);
    read_reg(opr1);
    print_bin(0,21);
  }
  else if(strcmp(opc,"NEG2") * strcmp(opc,"neg2") == 0) {
    //24 : NEG2 Rd,Rs
    print_bin(24,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"FNEG2") * strcmp(opc,"fneg2") == 0) {
    //25 : FNEG2 Rd,Rs
    print_bin(25,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"INC") * strcmp(opc,"inc") == 0) {
    //26 : INC Ra
    print_bin(26,6);
    read_reg(opr1);
    print_bin(0,21);
  }
  else if(strcmp(opc,"DEC") * strcmp(opc,"dec") == 0) {
    //27 : DEC Ra
    print_bin(27,6);
    read_reg(opr1);
    print_bin(0,21);
  }
  else if(strcmp(opc,"INC1") * strcmp(opc,"inc1") == 0) {
    //28 : INC1 Rd,Rs
    print_bin(28,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"DEC1") * strcmp(opc,"dec1") == 0) {
    //29 : DEC1 Rd,Rs
    print_bin(28,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"mvi") * strcmp(opc,"MVI") == 0) {
    //30 : MVI Rd,imm21
    print_bin(30,6);
    read_reg(opr1);
    print_bin(atoi(opr2),21);
  }
  else if(strcmp(opc,"ldr") * strcmp(opc,"LDR") == 0) {
    //31 : LDR Rd off16(Rs)
    print_bin(31,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),16);
  }
  else if(strcmp(opc,"ldd") * strcmp(opc,"LDD") == 0){
    //32 : LDD Rd, Ro, size4, Rs
    print_bin(32,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),4);
    read_reg(opr4);
    print_bin(0,7);
  }
  else if(strcmp(opc,"lda") * strcmp(opc,"LDA") == 0) {
    //33 : LDA Rd,addr21
    print_bin(33,6);
    read_reg(opr1);
    print_bin(atoi(opr2),21);
  }
  else if(strcmp(opc,"sdr") * strcmp(opc,"SDR") == 0) {
    //34 : SDR Rd off16(Rs)
    print_bin(34,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),16);
  }
  else if(strcmp(opc,"sdd") * strcmp(opc,"SDD") == 0){
    //35 : SDD Rd, Ro, size4, Rs
    print_bin(35,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),4);
    read_reg(opr4);
    print_bin(0,7);
  }
  else if(strcmp(opc,"sda") * strcmp(opc,"SDA") == 0) {
    //36 : SDA Rd,addr21
    print_bin(36,6);
    read_reg(opr1);
    print_bin(atoi(opr1),21);
  }
  else if(strcmp(opc,"fldr") * strcmp(opc,"FLDR") == 0) {
    //37 : FLDR Rd off16(Rs)
    print_bin(37,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),16);
  }
  else if(strcmp(opc,"fldd") * strcmp(opc,"FLDD") == 0){
    //38 : FLDD Rd, Ro, size4, Rs
    print_bin(38,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),4);
    read_reg(opr4);
    print_bin(0,7);
  }
  else if(strcmp(opc,"FLDA") * strcmp(opc,"flda") == 0) {
    //39 : FLDA Rd,addr21
    print_bin(39,6);
    read_reg(opr1);
    print_bin(atoi(opr2),21);
  }
  else if(strcmp(opc,"fsdr") * strcmp(opc,"FSDR") == 0) {
    //40 : FSDR Rd off16(Rs)
    print_bin(40,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),16);
  }
  else if(strcmp(opc,"fsdd") * strcmp(opc,"FSDD") == 0){
    //41 : FSDD Rd, Ro, size4, Rs
    print_bin(41,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),4);
    read_reg(opr4);
    print_bin(0,7);
  }
  else if(strcmp(opc,"FSDA") * strcmp(opc,"fsda") == 0) {
    //42 : FSDA Rd,addr21
    print_bin(42,6);
    read_reg(opr1);
    print_bin(atoi(opr2),21);
  }
  else if(strcmp(opc,"xor") * strcmp(opc,"XOR") == 0) {
    //43 : XOR Rd,Rs,Rt
    print_bin(43,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"fmv") * strcmp(opc,"FMV") == 0) {
    //44 : FMV Rd,Rs
    print_bin(44,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"sl") * strcmp(opc,"SL") == 0) {
    //45 : SL Rd,Rs,Rt
    print_bin(45,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"sr") * strcmp(opc,"SR") == 0) {
    //46 : SR Rd,Rs,Rt
    print_bin(46,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"rf") * strcmp(opc,"RF") == 0) {
    //47 : RF Rd
    print_bin(47,6);
    read_reg(opr1);
    print_bin(0,21);
  }
  else if(strcmp(opc,"ri") * strcmp(opc,"RI") == 0) {
    //48 : RI Rd
    print_bin(48,6);
    read_reg(opr1);
    print_bin(0,21);
  }
  else if(strcmp(opc,"print") * strcmp(opc,"PRINT") == 0) {
    //49 : PRINT Rs
    print_bin(49,6);
    read_reg(opr1);
    print_bin(0,21);
  }
  else if(strcmp(opc,"fabs") * strcmp(opc,"FABS") == 0) {
    //50 : FABS Rd,Rs
    print_bin(50,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"mul") * strcmp(opc,"MUL") == 0) {
    //51 : MUL Rd,Ra,Rb
    print_bin(51,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"div") * strcmp(opc,"DIV") == 0) {
    //52 : DIV Rd,Ra,Rb
    print_bin(52,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,11);
  }
  else if(strcmp(opc,"sip") * strcmp(opc,"SIP") == 0) {
    //53 : SIP 
    print_bin(53,6);
    print_bin(0,26);
  }
  else{
    fprintf(stderr,"Unkown Operand %s",opc);
  }
  printf("\n");
  return 0;
}

int main(int argc,char *argv[])
{
  char s[100];
  gets(s);
  print_bin(0,1);
  print_bin(atoi(s),31);
  printf("\n");
  while(gets(s) != NULL){
    execute(s);
  }
  return 0;
}
