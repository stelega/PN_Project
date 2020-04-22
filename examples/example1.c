#include <stdio.h>


int main(void){
        
    int src = 100;
    int dest = 0;


    asm (   "movl %1, %0;"
            : "=r"(dest)    // output operands
            : "r"(src)      // input operands
        );
        
    
    printf("%d  %d\n", src, dest);
    
    return 0;

}
