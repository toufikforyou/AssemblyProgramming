.model small
.stack 100h
.data

  smg1 db 'Enter first number: $'
  smg2 db 'Enter seound number: $'
  smg3 db 'Enter third number: $'
  rsmg db 'After calculation the result is: $'

  input1 db ?
  input2 db ?
  input3 db ?
  
  result db ?

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, smg1
    int 21h
    
    mov ah, 1
    int 21h
    mov input1, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, smg2
    int 21h
    
    mov ah, 1
    int 21h
    mov input2, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, smg3
    int 21h
    
    mov ah, 1
    int 21h
    mov input3, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov al, input1
    add al, input2
    sub al, input3
    mov result, al
    
    mov ah, 9
    lea dx, rsmg
    int 21h
    
    mov ah, 2
    mov dl, result
    int 21h
    
     
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main