

.model small
.stack 100h
.data
msg1 db  'Enter First Number  : $' 
msg2 db 10,13, 'Enter Second Number : $'
msg3 db 10,13, 'Enter Third Number : $' 
msg4 db 10,13, 'Enter 0 if you need Addition and 1 for Subtraction : $'

num1 db ?
num2 db ?
num3 db ? 
ad1 db ?
ad2 db ?



.code 
main proc
mov ax, @data 
mov ds, ax
 
mov ah, 09 
lea dx, msg1 ; Load Effective Address 
int 21h 

mov ah, 01 
int 21h
mov num1, al

mov ah, 09
lea dx, msg2 ; Load Effective Address 
int 21h   

mov ah, 01 
int 21h
mov num2 , al

mov ah, 09
lea dx, msg3 ; Load Effective Address 
int 21h   

mov ah, 01 
int 21h
mov num3 , al

mov ah,02
mov dl, 10
int 21h
mov dl,13
int 21h


mov ah, 09
lea dx, msg4 ; Load Effective Address 
int 21h   

mov ah, 01 
int 21h

CMP al, '0'
JE L1
JMP L2

L1: 

mov ah,02         
mov dl, 10
int 21h
mov dl,13
int 21h

mov dl, num1
mov ah, 02
int 21h

mov dl, '+'
mov ah, 02
int 21h

mov dl, num2
mov ah, 02
int 21h 

mov dl, '+'
mov ah, 02
int 21h

mov dl, num3
mov ah, 02
int 21h
        
mov dl, '='
mov ah, 02
int 21h

mov dl, num1
mov bl, num2 

add dl,bl
sub dl, 48 
add dl, num3
sub dl, 48
  
mov ah, 02 
int 21h

JMP L3

L2:
         
mov ah,02         
mov dl, 10
int 21h
mov dl,13
int 21h


mov dl, num1
mov ah, 02
int 21h

mov dl, '-'
mov ah, 02
int 21h

mov dl, num2
mov ah, 02
int 21h   

mov dl, '-'
mov ah, 02
int 21h

mov dl, num3
mov ah, 02
int 21h
        
mov dl, '='
mov ah, 02
int 21h



mov dl, num1
mov bl, num2
sub dl,bl
add dl, 48 

sub dl, num3
add dl, 48

mov ah, 02 
int 21h

L3:
mov ah,4ch ; returning to DOS 
int 21h ; interrupt 21h
main endp 
end main
