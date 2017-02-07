#include<stdio.h>
int main(void){
    char s[1000];
    while(gets(s) != NULL){
        int i;
        char *t = s;
        while(*t){
            if(*t == '#'){
                t++;
                printf("%s\n",t);
                break;
            }
            t++;
        }
    }
    return 0;
}