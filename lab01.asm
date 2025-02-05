; Input, Output, New Line Display

.model small
.stack 100h
.data
input db ?
value db 9
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    mov input, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, input
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    add value, 48
    int 21h
    mov dl, value
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, input
    int 21h
    mov dl, value
    int 21h
     
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main