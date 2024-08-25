.model small
.stack 100h
.data
var1 db 5
.code
 main proc

mov cx,5 
 
l1:

mov bx , cx
l2:
mov dl,'*' 
mov ah,02 
int 21h

loop l2

mov dl, 10
int 21h
mov dl , 13
int 21h
  
mov cx,bx
loop l1

mov ah,4ch 
int 21h

main endp 
end main



