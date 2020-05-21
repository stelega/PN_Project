/* Napisz funkcje:
      - printString(...) - odpowiedzialną za wypisanie stringa w bootloaderze
            (rozszerzona wersja asm)
      - printExclamationMark() - odpowiedzialną za wypisanie wykrzyknika w bootloaderze
            (podstawowa wersja asm)
*/

asm( "jmpl $0x0000, $main\n" );


// function definitions


int main(void){
      printString( "Hello World" );
      printExclamationMark();
      while(1);
}
