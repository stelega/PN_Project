__asm__ ("jmpl  $0, $main\n");
 
void print(const char   *s){
    while(*s){
        __asm__ __volatile__ ("int  $0x10" : : "a"(0x0E00 | *s), "b"(7));
        s++;
    }
}
 
int main(void){
    print("Hi!");
    while(1);
}
