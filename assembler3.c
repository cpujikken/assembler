#include <stddef.h>
void execute(char* s){
	int i,j;
	for(i=0;i<4;i++){
		int count = 0;
		for(j=0;j<8;j++){
			if(s[i*8+j] == '1'){
				count |= 1 << (7-j);
			}
		}
		putchar(count);
	}
}
int main(int argc,char *argv[]){
	char s[32];
	while(gets(s) != NULL){
		execute(s);
	}
	return 0;
}
