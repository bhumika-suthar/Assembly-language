.model small
.stack 100h
.data
var1 db ? 
var2 db ?
.code
main proc
 
mov cx, 6
 
L3: 

mov bx , cx
mov var1, 53 
mov var2, 49

mov cx, 6
L1:
mov dl, var1
mov ah, 02
int 21h 
dec var1


Loop L1 

mov cx, 5  

L2:
mov dl, var2
mov ah, 02
int 21h 
inc var2

Loop L2 

mov dl, 10
int 21h
mov dl, 13
int 21h
mov cx , bx
Loop L3

mov ah, 4ch
int 21h
main endp
End main




