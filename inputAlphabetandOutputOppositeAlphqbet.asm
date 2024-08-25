.model small
.stack 100h
.data 
msg1 db 'Enter First alphabet : $'
msg2 db 10,13,'The output is : $'
msg3 db 10,13,'THANK YOU $'

.code 
main proc 

mov ax, @data 
mov ds, ax 
mov ah, 09 


lea dx, msg1 ; Load Effective Address 
int 21h   
mov ah,01 
int 21h



mov bl,122 ; ASCII code of small z 
sub al,65	; To calculate the difference 
sub bl,al
mov ah, 09 


lea dx, msg2 ; Load Effective Address 
int 21h
mov dl,bl

mov ah,02 
int 21h 

mov ah, 09 


lea dx, msg3 ; Load Effective Address 
int 21h
 

mov ah,4ch 
int 21h

main endp 
end main
