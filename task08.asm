.model small
.stack 100h
.data                      
 var1 db ?
 var2 db ?
 var3 db ?
msg db 'Enter Number :  $' 

msg1 db 'The Smallest Number is: $'
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


mov var3, al             

mov dl, var1
mov al, var2
CMP al, dl
JLE L1
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
mov al, var3
CMP al, dl 
Jl L4
JMP L5

L4:
mov dl, var3
mov ah, 02
int 21h 
JMP L3 

L5: 
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

 
mov dl, var1
mov al, var3
CMP al, dl 
Jl L6
JMP L7

L6:
mov dl, var3
mov ah, 02
int 21h 
JMP L3 

L7: 
mov dl, var1
mov ah, 02
int 21h 
JMP L3

 
L3:
mov ah, 4ch
int 21h





