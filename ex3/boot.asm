bits 16						;16-bit real mode
org 0x7c00					;load to memory at 0x7c00

;stage 1
boot:

	;enable A20 bit

	;enable video mode


	;read sector from a drive to a target location, allows to write code beyond 512 bytes
		;read sectors
		;sectors to read
		;cylinder idx
		;sector idx
		;head idx
		;disk idx
		;target pointer
		;interruption
	
	;disable interrupts
	
	;load gdt table
	
	;set protection enable in control register
	
	jmp CODE_SEG:boot2		;long jump to boot2

;gdt table
gdt_start:
	dq 0x0
gdt_code:
	dw 0xFFFF		;limit
	;base
	;base
	;acces byte 
	;limit and flags
	;base
gdt_data:
	dw 0xFFFF		;limit
	;base
	;base
	;acces byte 
	;limit and flags
	;base
gdt_end:

gdt_pointer:
	dw gdt_end - gdt_start
	dd gdt_start
disk:
	db 0x0

CODE_SEG equ gdt_code - gdt_start
DATA_SEG equ gdt_data - gdt_start

times 512 - ($-$$) db 0		;fill with zeros


copy_target:
;32-bit protected mode
bits 32

;message to print
hello:
	db "Hello from 2nd stage bootloader",0

;stage 2
boot2:
	;reload data segment registers
	
	mov esi,hello 
	mov ebx,0xb8000		;print hello 

;endless loop
.loop:
	lodsb
	or al,al
	jz halt
	or eax,0x0F00
	mov word [ebx], ax
	add ebx,2
	jmp .loop
halt:
	hlt

