#include<stdio.h>
#include<stdlib.h>
int main(void){
    char s[1000];
    long count = 0;
    while(gets(s) != NULL){
        if(s[0] == 9 && s[1] == 70 && s[2] == 73 && s[3] == 78){
            count += 4; 
            printf("\n");
        }
        else if(s[0] == 46 && s[1] == 97 && s[2] == 108 && s[3] == 105){
            char opc[32] = "";
            char num[32] = "";
            int i;
            sscanf(s,"%s %[^, \t\n]",opc,num);
            int align = atoi(num);
		    int diff = (count+align-1)/align*align - count;
		    for(i = 0;i < diff/4;i++){
			    printf("\n");
		    }
		    count = (count+align-1)/align*align;
        }
        else if(s[0] == 9 && s[1] == 46 && s[2] == 83 && s[3] == 80){
            char opc[32] = "";
            char num[32] = "";
            int i;
            sscanf(s,"%s %[^, \t\n]",opc,num);
            for(i = 0;i < atoi(num)/4;i++){
			    printf("\n");
		    }
		    count += atoi(num);
        }
        else{
            int i;
            char *t = s;
            while(*t){
                if(*t == '#'){
                    t++;
                    printf("%s\n",t);
                    count += 4;
                    break;
                }
                t++;
            }
        }
    }
    return 0;
}