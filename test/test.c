#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(void){
    char s[10] = "aaa\n";
    char sss[10];
    char *ss = s;
    if(*s == 'a')
ss++;
    printf("%s",ss);
    strcpy(sss,ss);
    gets(s);
    printf("%s",sss);
} 
