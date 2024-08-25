.model small
.stack 100h
.data 
var1 db  ?
var2 db ?
msg1 db 'Enter first digit : $'  
msg2 db 'Enter second digit : $'

.code 
main proc
    
    mov ax, @data 
mov ds, ax
 
mov ah, 09 
lea dx, msg1
int 21h 

mov ah, 01 
int 21h 
mov var1, al

mov ah,02
mov dl, 10
int 21h
mov dl,13
int 21h  

mov ah, 09 
lea dx, msg2
int 21h 

mov ah, 01 
int 21h 

mov var2, al 

mov ah,02
mov dl, 10
int 21h
mov dl,13
int 21h


    mov dl, var1
    mov ah, 02
    int 21h  
    
    mov dl, 'x'
    mov ah, 02
    int 21h
    
    mov dl, var2
    mov ah, 02
    int 21h
     mov dl, '='
    mov ah, 02
    int 21h
    
    sub var1, 48
    mov dl, var1
    sub var2 , 48
    mov dl, var2
    
    mov al, var1
    mov bl, var2 
    
    MUL bl
    
    mov dx, ax
    add dx, 48
    mov ah , 2
    int 21h
    
mov ah,4ch 
int 21h
main endp 
end main