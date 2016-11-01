#include <stdio.h>
#include <string.h>
#include <stdlib.h>
//エラー処理
long data[1024];
char name[1024][100];
long place;
void pcause(int status, int line) {
  printf("error at line:%d",line);
  if(status == INVALID_REGISTER) {
    printf("invalid register");
  }
  else if(status == SYNTAX_ERROR) {
    printf("syntax error\n");
  }
  return;
}
int read_data(char *s){
   char *t;
   char *as;
   int state = 0;
   t = s;
   while(*t){
      if(state == 0 && (*t == ' ' || *t == '\t')){
         as = t;
         state = 1;
      }
      if(state == 1 && *t == ':'){
         *as = 0;
         state = 2;
      }
      if(state == 2 && *t != ' ' && *t != '\n' && *t != '\t'){
         as = t;
         state = 3;
      }
      if(state == 3 && (*t == ' ' || *t == '\n' || *t == '\t')){
	 *t = 0;
         break;
      }
      t++;
   }
   if(state == 3){
      return 1;
   }
   else{
      return 0;
   }
}
void change_from_data(*s){

}
void print_bin(int i,int d){
    int j = 1 << (d-1);
    for(;j>=1;j/=2){
        printf("%d",i/j);
        i%=j;
    }
}
//"2" "r10" "fr5"などの文字列からレジスタ番号を読みとる
void read_reg(char *s) {
  while(s[0] == 'r' || s[0] == 'R' || s[0] == 'f' || s[0] == 'F') {
    s++;
  }
  int i = atoi(s);
  print_bin(i,4);
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
  sscanf(s,"%s %[^, \t\n] , %[^, \t\n] , %[^, \t\n] ",opc,opr1,opr2,opr3);

  int ra = read_reg(opr1);
  int rb = read_reg(opr2);
  int rc = read_reg(opr3);

  int nojump = 1;
  
  //printf("->OPECODE:%s OPERAND1:%s OPERAND2:%s OPERAND3:%s\n",opc,opr1,opr2,opr3);
  if(opc[0] == '\0' || opc[0] == '\n') {
  }
  else if(strcmp(opc,"add") * strcmp(opc,"ADD") == 0) {
    //1 : ADD Rd,Rs,Rt : Rd=Rs+Rt
    print_bin(1,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"addi") * strcmp(opc,"ADDI") == 0) {
    //2 : ADDI Rd,Rs,imm : Rd=Rs+imm
    print_bin(2,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),16);
    print_bin(0,2);
  }
  else if(strcmp(opc,"shiftl") * strcmp(opc,"SHIFTL") == 0) {
    //3 : SHIFTL Rd, Rs, BITS5
    print_bin(3,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),5);
    print_bin(0,13);
  }
  else if(strcmp(opc,"shiftr") * strcmp(opc,"SHIFTR") == 0) {
    //4 : SHIFTR Rd, Rs, BITS5
    print_bin(4,6);
    read_reg(opr1);
    read_reg(opr2);
    rprint_bin(atoi(opr3),5);
    print_bin(0,13);
  }
  else if(strcmp(opc,"and") * strcmp(opc,"AND") == 0) {
    //5 : AND Rd,Rs,Rt
    print_bin(5,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"NOP") == 0) {
    //6 : NOP
    print_bin(6,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"not") * strcmp(opc,"NOT") == 0) {
    //7 : NOT Rd,Rs
    print_bin(7,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,18);
  }
  else if(strcmp(opc,"or") * strcmp(opc,"OR") == 0) {
    //8 : OR Rd,Rs,Rt
    print_bin(8,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"xor") * strcmp(opc,"XOR") == 0) {
    //9 : XOR Rd,Rs,Rt
    print_bin(9,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"b") * strcmp(opc,"B")==0) {
    //10 : B off26
    print_bin(10,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"beq") * strcmp(opc,"BEQ") == 0) {
    //11 : BEQ off26
    print_bin(11,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"j") * strcmp(opc,"J") == 0) {
    //12 : J off26
    print_bin(12,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"jeq") * strcmp(opc,"JEQ") == 0) {
    //13 : JEQ off26
    print_bin(13,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"lb") * strcmp(opc,"LB") == 0) {
    //14 : LB RD, off16, RS
    print_bin(14,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"lw") * strcmp(opc,"LW") == 0) {
    //15 : LW RD, off16, RS
    print_bin(15,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"lwl") * strcmp(opc,"LWL") == 0) {
    //16 : LWL RD, off16, RS
    print_bin(16,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"lwr") * strcmp(opc,"LWR") == 0) {
    //17 : LWR RD, off16, RS
    print_bin(17,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"sb") * strcmp(opc,"SB") == 0) {
    //18 : SB RS, off16, RR
    print_bin(18,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"sh") * strcmp(opc,"SH") == 0) {
    //19 : SH RS, off16, RR
    print_bin(19,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"sw") * strcmp(opc,"SW") == 0) {
    //20 : SW RS, off16, RR
    print_bin(20,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"swl") * strcmp(opc,"SWL") == 0) {
    //21 : SWL RD, off16, RS
    print_bin(21,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"swr") * strcmp(opc,"SWR") == 0) {
    //22 : SWR RD, off16, RS
    print_bin(22,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"fadd") * strcmp(opc,"FADD") == 0) {
    //23 : FADD Rd,Rs,Rt : Rd=Rs+Rt
    print_bin(23,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"fsub") * strcmp(opc,"FSUB") == 0) {
    //24 : FSUB Rd,Rs,Rt
    print_bin(24,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"fmul") * strcmp(opc,"FMUL") == 0) {
    //25 : FMUL Rd,Rs,Rt
    print_bin(25,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"fdiv") * strcmp(opc,"FDIV") == 0) {
    //26 : FDIV Rd,Rs,Rt
    print_bin(26,6);
    read_reg(opr1);
    read_reg(opr2);
    read_reg(opr3);
    print_bin(0,14);
  }
  else if(strcmp(opc,"fzero") * strcmp(opc,"FZERO") == 0) {
    //27 : FZERO Ra
    print_bin(27,6);
    read_reg(opr1);
    print_bin(0,22);
  }
  else if(strcmp(opc,"fabs") * strcmp(opc,"fabs") == 0) {
    //28 : FABS Ra,Rb
    print_bin(28,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,18);
  }
  else if(strcmp(opc,"fneg") * strcmp(opc,"FNEG") == 0) {
    //29 : FNEG Ra,Rb
    print_bin(29,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(0,18);
  }
  else if(strcmp(opc,"fcmp") * strcmp(opc,"FCMP") == 0) {
    //30 : FCMP Ra,Rb,const3
    print_bin(30,6);
    read_reg(opr1);
    read_reg(opr2);
    print_bin(atoi(opr3),2);
    print_bin(0,16);
  }
  else if(strcmp(opc,"beqf") * strcmp(opc,"BEQF") == 0) {
  }
  else if(strcmp(opc,"jeqf") * strcmp(opc,"JEQF") == 0) {
  }
  else if(strcmp(opc,"jlink") * strcmp(opc,"JLINK") == 0) {
    //33 : JLINK addr26
    print_bin(33,6);
    print_bin(atoi(opr1),26);
  }
  else if(strcmp(opc,"link") * strcmp(opc,"LINK") == 0) {
    //34 : LINK
    print_bin(34,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"push") * strcmp(opc,"PUSH") == 0) {
    //35 : PUSH ra
    print_bin(35,6);
    read_reg(opr1);
    print_bin(0,22);
  }
  else if(strcmp(opc,"pop") * strcmp(opc,"POP") == 0) {
    //36 : POP ra
    print_bin(36,6);
    read_reg(opr1);
    print_bin(0,22);
  }
  else if(strcmp(opc,"save") * strcmp(opc,"SAVE") == 0) {
    //37 : LINK
    print_bin(37,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"restore") * strcmp(opc,"RESTORE") == 0) {
    //38 : RESTORE
    print_bin(38,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"saveh") * strcmp(opc,"SAVEH") == 0) {
    //39 : SAVEH
    print_bin(39,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"restoreh") * strcmp(opc,"RESTOREH") == 0) {
    //40 : RESTOREH
    print_bin(40,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"out") * strcmp(opc,"OUT") == 0) {
    //41 : OUT
    print_bin(41,6);
    print_bin(0,26);
  }
  else if(strcmp(opc,"flw") * strcmp(opc,"FLW") == 0) {
    //42 : FLW FRd off16(Rs)
    print_bin(42,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else if(strcmp(opc,"fsw") * strcmp(opc,"FSW") == 0) {
    //43 : FSW FRd off16(Rs)
    print_bin(43,6);
    read_reg(opr1);
    read_base_rel(opr2);
    print_bin(0,2);
  }
  else {//ラベルへの対応
    
  }
  return 0;
}

int main(int argc,char *argv[])
{
  char s[100];
  while(gets(s) != NULL){
    execute(s);
  }
  return 0;
}
