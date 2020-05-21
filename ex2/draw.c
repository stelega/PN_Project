/* Napisz funkcje: 
     setVideMode() - odpowiedzialną za ustawienie trybu video
     draw() - funkcję która wyrysuje na ekran bootloadera prosty rysunek 
*/

#define MAX_COLS 310
#define MAX_ROWS 190


asm( "jmpl $0x0000, $main\n" );


// function definitions


int main(void){
     setVideoMode();
     draw();

     while(1);
}
