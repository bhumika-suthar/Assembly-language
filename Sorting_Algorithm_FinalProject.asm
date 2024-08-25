include 'emu8086.inc'

.model small
.stack 100h
.data
arr db 5 dup(?)
.code
main proc
    mov ax,@data
    mov ds,ax
    
    print "Enter anything you wish to sort: "
    
    mov cx,5
    mov bx,offset arr
    mov ah,1
    
    inputs:
    int 21h
    mov [bx],al
    inc bx
    loop inputs
    
    mov cx,4
  ;  dec cx
    
    Outerloop:
    mov bx,cx
    mov si,0
    
    compLoop:
    mov al,arr[si]
    mov dl,arr[si+1]
    cmp al,dl
    
    jc noSwap
    mov arr[si],dl
    mov arr[si+1],al
    
    noSwap:
    inc si
    dec bx
    jnz compLoop
    
    loop Outerloop
    ;newline
    mov ah,02
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    printn "Our sorting algorithm sorts them for you, Hurray! "
    print "Result is: "  
    
    mov cx,5
    mov bx,offset arr
    ;this loop display elements on the screen
    Outputs:
    mov dl,[bx]
    mov ah,02
    int 21h
    
    mov dl,32
    mov ah,02
    int 21h
    
    inc bx
    loop Outputs
    
    mov ah, 2  
    mov dl, 10 
    int 21h
    
    mov ah, 2
    mov dl, 13
    int 21h
    
    
    print "Thank you for using  our algorithm "
    
    int 21h 
    
    main endp
end main
