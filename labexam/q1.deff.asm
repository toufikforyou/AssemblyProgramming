.model small
.stack 100h
.data

  smg1 db 'Enter first number: $'
  smg2 db 'Enter seound number: $'
  smg3 db 'Enter third number: $'
  rsmg db 'After calculation the result is: $'

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, smg1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
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
    mov bh, al
    
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
    mov cl, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov al, bl
    add al, bh
    sub al, cl
    mov ch, al
    
    mov ah, 9
    lea dx, rsmg
    int 21h
    
    mov ah, 2
    mov dl, ch
    int 21h
    
     
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main