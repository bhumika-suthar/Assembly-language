.model small
.stack 100h
.data
var1 db ?
 

.code
 main proc 
        mov var1, 49
       
        mov cx, 6
        l1:
            mov bx, cx 
            mov cx, 9

            l2:
                mov dl,var1
                mov ah,02 
                int 21h 
                inc var1 
               
            loop l2
            mov var1, 49
            

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

