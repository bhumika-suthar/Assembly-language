.model small
.stack 100h
.data 
msg db 'The Entered Number is 5$'
.code
main proc

mov ah, 01 
int 21h
mov dl, '5'
Cmp al, dl
JE L1
JMP L2: 
L1: 

mov ah, 10
int 21h
mov ah , 13
int 21h
mov ax, @data 
mov ds, ax 
mov ah , 09
lea dx, msg 
int 21h 

L2:
mov ah, 4ch
int 21h

