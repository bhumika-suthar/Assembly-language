.model small
.stack 100h
.data
var1 dw ?
var2 db ?
var3 db 90 

.code
 main proc 
        mov var1, 1
        mov var2, 57 
        
        mov cx, 3
        l1:
            mov bx, cx 
            mov cx, var1
            l2:
                mov dl, var2 
                mov ah,02 
                int 21h
                dec var2
            loop l2
            
            inc var1 
            mov var2, 57
            
            mov dl, 10
            int 21h
            mov dl , 13
            int 21h
            

            mov cx,bx
        loop l1 
            mov cx, 4
             
            
           l3:
            mov bx, cx 
            mov cx, var1
            l4:
                mov dl, var3 
                mov ah,02 
                int 21h
                
                dec var3
            loop l4
            
            dec var1 
            mov var3, 90
            
            mov dl, 10
            int 21h
            mov dl , 13
            int 21h

            mov cx,bx
        loop l3

        mov ah,4ch 
        int 21h

main endp 
end main

