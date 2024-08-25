.model small
.stack 100h
.data                      
 var1 db ?
 var2 db ?
msg db 'Enter Number :  $' 

msg1 db 'The Greater Number is: $'
.code
main proc 
    
mov ax, @data 
mov ds, ax 
mov ah , 09
lea dx, msg 
int 21h 

mov ah, 01 
int 21h
mov var1, al 

mov ah , 02
mov dl, 10
int 21h
mov dl , 13
int 21h 
 
mov ah , 09
lea dx, msg 
int 21h 

mov ah, 01 
int 21h 


mov var2, al

mov dl, var1
mov al, var2
CMP al, dl
JG L1
JMP L2
 
L1: 
mov ah , 02
mov dl, 10
int 21h
mov dl , 13
int 21h 
 
mov ah , 09
lea dx, msg1 
int 21h

mov dl, var2
mov ah, 02
int 21h 
JMP L3

L2:

mov ah , 02
mov dl, 10
int 21h
mov dl , 13
int 21h 
 
mov ah , 09
lea dx, msg1 
int 21h

mov dl,var1
mov ah, 02
int 21h 

 
L3:
mov ah, 4ch
int 21h





