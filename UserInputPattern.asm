.model small
.stack 100h

.data   
    message db "Enter number of rows: $"
    user_input db 0
    newline db 10, 13, '$'
    counter db 1
    letter db 91
    
    
.code
main proc
    MOV ax, @data
    MOV ds, ax
    
    MOV ah, 09
    LEA dx, message
    INT 21h
    
    MOV ah, 01
    INT 21h
    
    MOV user_input, al
    SUB user_input, 48 ; manipulating ASCII code
    
    MOV ah, 09
    LEA dx, newline
    INT 21h
    
                
    MOV ch, 0 ; to nullify 'dx' register
    MOV cl, user_input
    
    
    L1:
      MOV ah, 02
      MOV dl, letter      
      MOV cl, counter
      
      L2:
        SUB dl, 1
        INT 21h
      LOOP L2

      ADD counter, 1
      
      MOV ah, 09
      LEA dx, newline
      INT 21h
      
      
      MOV cl, user_input
      SUB user_input, 1
      
    LOOP L1
    
    MOV ah, 4ch
    INT 21h
main endp
end main
