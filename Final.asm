.model small
.stack 100h
.data 

msg1 db 'Select one option from the following : $'
msg2 db 10, 13 , 'Multiplicand : $'
msg3 db 10, 13 ,'Multiplier : $'
msg4 db 10, 13 ,'Divisor : $'
msg5 db 10, 13 ,'Divident : $'
num1 db ?
num2 db ?
num3 db ?
num4 db ? 
num5 db ?
quo db ?
rem db ?



.code

main proc
    
    mov ax , @data
    mov ds, ax 
    
    
    mov ah , 09
    lea dx, msg1 
    int 21h
    
    
    mov ah, 01
    int 21h 
    mov num1, al 
    cmp num1, '1'
    je L1
    jmp L2 
    
    mov cx , 1
    mov bx, cx
    
    L1: 
    mov ah , 09
    lea dx, msg2 
    int 21h 
    
    mov ah , 01
    int 21h
    
    mov num2, al  
    
    mov ah , 09
    lea dx, msg3 
    int 21h
    
    mov ah , 01
     int 21h
    mov num3, al 
    
    
    mov ah, 02
    mov dl, 10
    int 21h 
    mov dl , 13 
    int 21h 
    
    mov ah, 02
    mov dl, num2 
    int 21h 
    
    mov ah, 02
    mov dl, '*' 
    int 21h 
    
    mov ah, 02
    mov dl, num3 
    int 21h  
    
    mov ah, 02
    mov dl, '=' 
    int 21h
    
    mov cl, num2
    mov bl, num3 
    
    mul bl 
    
     
      jmp L3
     
      Loop L1
    
    L2:  
    
    mov ah , 09
    lea dx, msg4 
    int 21h 
    
    mov ah , 01
    int 21h 
    mov num4, al 
    
    mov ah , 09
    lea dx, msg5 
    int 21h
    
    mov ah , 01
    int 21h
    mov num5, al 
    
    mov ah, 02
    mov dl, 10
    int 21h 
    mov dl , 13 
    int 21h 
    
    mov ah, 02
    mov dl, num4 
    int 21h 
    
    mov ah, 02
    mov dl, '/' 
    int 21h 
    
    mov ah, 02
    mov dl, num5 
    int 21h  
    
    mov ah, 02
    mov dl, '=' 
    int 21h   
    
    
    mov dl , num4
    mov ah , 0
    mov bl,  num5

    div bl

    mov cl, al
    mov ch, ah
    add ch, 48
    
    mov al, quo 
    mov ah , rem 
    
    mov ah, 02
    mov dl, quo
    int 21h 
    
   mov ah, 02
   mov dl, rem 
   int 21h 
    
       Loop L2
    
    
     
    
    
    
    
    
    
    
    L3:
    
    mov ah, 4ch 
    int 21h 
    
    
main endp 
end main

