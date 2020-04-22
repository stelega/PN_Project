asm( "jmpl $0x0000, $main\n" );


// function definitions


int main(void){
      printString( "Hello World" );
      printExclamationMark();
      while(1);
}
