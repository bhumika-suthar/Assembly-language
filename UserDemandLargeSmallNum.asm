.model small
.stack 100h
.data                      
 var1 db ?
 var2 db ?
 var3 db ? 
 var4 db ?
msg db 'Enter Number :  $' 

msg1 db 'The Smallest Number is: $'  
msg3 db 'The Largest Number is: $'
msg2 db 'Enter 0 if you need Smallest Number and 1 for Largest number : $'
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




mov ah , 02
mov dl, 10
int 21h
mov dl , 13
int 21h 
mov ah , 09
lea dx, msg2 
int 21h  

mov ah, 01 
int 21h
mov var4, al

CMP al, '0'
JE L9
JMP L10

L9: 
             
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




 
L10:

mov dl, var1
mov al, var2
CMP al, dl
JGE L14
JMP L12

 
mov ah , 02
mov dl, 10
int 21h
mov dl , 13
int 21h 
 
mov ah , 09
lea dx, msg3 
int 21h

mov dl, var2
mov al, var3
CMP al, dl 
JG L14
JMP L15

L14:
mov dl, var3
mov ah, 02
int 21h 
JMP L3 

L15: 
mov dl, var2
mov ah, 02
int 21h 
JMP L3


L12:

mov ah , 02
mov dl, 10
int 21h
mov dl , 13
int 21h 
 
mov ah , 09
lea dx, msg3 
int 21h

 
mov dl, var1
mov al, var3
CMP al, dl 
JG L16
JMP L17

L16:
mov dl, var3
mov ah, 02
int 21h 
JMP L3 

L17: 
mov dl, var1
mov ah, 02
int 21h 
JMP L3



 
L3:
mov ah, 4ch
int 21h





