%{
#include<stdio.h>
int n, m, t, c;
%}
%%
\n n++;
\t m++;
[ ] t++;
. c++;
%%
int yywrap(){ return 1;}
int main(){
yylex();
printf("Total number of \nlines=%d  \ntabs=%d \nspaces=%d \nchars=%d \n",n,m,t,c);
return 0;
}
