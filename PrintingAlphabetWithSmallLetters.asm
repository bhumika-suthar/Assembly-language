.model small
.stack 100h
.data
var1 db ? 
var2 db ?
.code
main proc
mov cx, 26
mov var1, 65 
mov var2, 97

L1:
mov dl, var1
mov ah, 02
int 21h 
inc var1

mov dl, ','
mov ah, 02
int 21h 

mov dl, var2
mov ah, 02
int 21h 
inc var2

mov dl, 10
int 21h
mov dl, 13
int 21h

Loop L1
mov ah, 4ch
int 21h
main endp
End main