.model small
.stack 100h
.data
m1 db 'Enter 1st number: $'
m2 db 10,13,'Enter 2nd number: $' 
m3 db 10,13,'Enter 3rd number: $'
v1 db '?'
v2 db '?'
v3 db '?'
.code 
main proc
    mov ax, @data
    mov ds, ax 
              
    mov ah, 09 
    lea dx, m1
    int 21h 
    
    
    mov ah, 01
    int 21h
    mov v1, al 
    
    
    mov ah, 09 
    lea dx, m2
    int 21h 
    
    
    mov ah, 01
    int 21h
    mov v2, al
    
    
    mov ah, 09 
    lea dx, m3
    int 21h 
    
    
    mov ah, 01
    int 21h
    mov v3, al 
    
    
    mov ah, 02
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
     
    mov dl, '('
    int 21h 
    
    mov dl, v1
    int 21h
    
    mov dl, '+'
    int 21h
    
    mov dl, v2
    int 21h  
    
    mov dl, ')'
    int 21h 
    
    mov dl, '-'
    int 21h
    
    mov dl, v3
    int 21h
    
    
    mov dl, '='
    int 21h
     
   
    
    mov dl, v1
    mov bl, v2
    add dl, bl
    sub dl, 48
     
   
    
  
    mov bl, v3
    sub dl, bl
    add dl, 48
    int 21h 
    
    
     
    
    
    
    
    
    mov ah, 4ch 
    int 21h
    
    main endp
end main
              