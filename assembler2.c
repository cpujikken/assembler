#include <stdio.h>
#include <string.h>
#include <stdlib.h>
long data[1024];
char name[1024][100];
long memory;
int datasize;
int line;
long place;
void print(char *s){
   printf("%s",s);
}
void print_long(long i){
   printf("%ld",i);
}
void print_line(char *s){
   printf("%s\n",s);
}

int read_data(char *s){
   char *t;
   char *as = s;
   int state = 0;
   t = s;
   while(*t){
      if(*t == '#'){
          break;
      }
      if(state == 0 && (*t != ' ' && *t != '\t')){
         as = t;
         state = 1;
      }
      if((state == 0 || state == 1) && *t == ':'){
         *t = 0;
         state = 2;
      }
      t++;
   }
   if(state == 2){
      data[datasize] = memory;
      strcpy(name[datasize],as);
      datasize++;
      return 1;
   }
   else{
      return 0;
   }
}
int has_data(char *s){
   char *t;
   int state = 0;
   t = s;
   while(*t){
      if(state == 0 && (*t != ' ' && *t != '\t')){
         state = 1;
      }
      if(*t == '#'){
          break;
      }
      if((state == 0 || state == 1) && *t == ':'){
         state = 2;
	     break;
      }
      t++;
   }
   if(state == 2){
      return 1;
   }
   else{
      return 0;
   }
}
int print_data(char *s){
   int i;
   for(i=0;i<datasize;i++){
      if(strcmp(s,name[i]) == 0){
         print_long(data[i]);
         return 0;
      }
   }
   return 1;
}
void write_line(char *s){
    char n[100];
    char *b;
    char *e;
    int state = 0;
    b = s;
    e = s;
    while(*e){
        if(*e == '#'){
            *e = '\n';
            *(e+1) = 0;
            break;
        }
        if(state == 0 && *e == '$'){
	    *e = 0;
	    print(b);
            b = e+1;
	    state = 1;
        }
	else if(state == 0 && *e == '%'){
	    *e = 0;
	    print(b);
	    state = 2;
	}
        else if(state == 1 && (*e == '(' || *e == '\t' || *e == ' ')){
	    strcpy(n,b);
            n[e-b] = 0;
            if(print_data(n) == 1){
                if(!('0' <= n[0] && n[0] <= '9') && n[0] != '-'){
                    fprintf(stderr,"%d: error: no such label%s\n",line,n);
                }
            }
            else{
                b = e;
            }
            state = 0;
        }
	else if(state == 2 && !(*e == 'r' || *e == 'R' || *e == 'f' || *e == 'F' || *e == '0')){
	    if(!('0' <= *e && *e <= '9') && *(e-1) == '0'){
		b = e-1;
	    }
            else if(*e == 's' && *(e+1) == 'p'){
		print("30");
                b = e+2;
	    }
	    else if(*e == 'd'){
		print("31");
		b = e+1;
	    }
	    else if(*e == 'h' && *(e+1) == 'p'){
		print("29");
                b = e+2;
	    }
	    else if(*e == 'c' && *(e+1) == 'l'){
		print("28");
                b = e+2;
	    }
	    else{
	        b = e;
	    }
	    state = 0;
	}
        e++;
    }
    print(b);
}
int main(int argc,char *argv[]){
    char s[100];
    int state = 0;
    FILE *rd;
    line = 0;
    if(argc <= 1){
        fprintf(stderr,"error: no input files\n");
        return 1;
    }
    {
        char ss[100];
        strcpy(ss,argv[1]);
        strcat(ss,".s");
        if((rd = fopen(ss,"r")) == NULL){
            fprintf(stderr,"error: no such file or directory: '%s'\n",ss);
            return 1;
        }
    }
    datasize = 0;
    memory = 4;
    while(fgets(s,100,rd) != NULL){
	if(state == 0){
 		char ss[100];
		char sss[100];
		sscanf(s,"%s %[^, \t\n] ",ss,sss);
		if(strcmp(ss,".align") == 0){
		    int align = atoi(sss);
		    memory = (memory+align-1)/align*align;
		}
		else if(strcmp(ss,".text") == 0){
		    state = 1;
		}
	}
        else if(state == 1 && read_data(s) == 0){
            memory += 4;
        }
    }
    state = 0;
    fseek(rd,0,SEEK_SET);
    while(fgets(s,100,rd) != NULL){
        line++;
	if(state == 0){
		char ss[100];
		char sss[100];
		sscanf(s,"%s %[^, \t\n] ",ss,sss);
		if(strcmp(ss,".start") == 0){
		    print_data(sss);
		    printf("\n");
		}
		else if(strcmp(ss,".text") == 0){
		    state = 1;
		}
	}
        else if(state == 1 && has_data(s) == 0){
            write_line(s);
        }
    }
    fclose(rd);
    return 0;
}
