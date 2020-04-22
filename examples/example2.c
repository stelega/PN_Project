#include <stdio.h>


int main(void){

    int arg1 = 2;
    int arg2 = 1;
    int res = 0 ;
 
    asm (   "addw %%bx, %%ax;"
            : "=a" (res)                // output operands
            : "a" (arg1), "b" (arg2)    // input operands
        );
    
    printf("%d + %d = %d\n", arg1, arg2, res);

    return 0;

}