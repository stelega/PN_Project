ENTRY(main);
SECTIONS
{
    . = 0x7C00;
    .text : AT(0x7C00){
        *(.text);
    }
} 
