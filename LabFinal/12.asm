.model small
.stack 100h

.data
    msg db 'result: $'

.code
    main proc
        mov ax, @data
        mov ds, ax
    
        mov ah, 1
        int 21h
        mov bl, al
        sub bl, 48
    
        mov ah, 2
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
    
        mov ah, 1
        int 21h
        sub al, 48
    
        mul bl
        aam
    
        mov cx, ax
        add ch, 48
        add cl, 48
    
        mov ah, 2
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
    
        mov ah, 9
        lea dx, msg
        int 21h
    
        mov ah, 2
        mov dl, ch
        int 21h
        mov dl, cl
        int 21h
    
        mov ah, 4ch
        int 21h
    main endp
end main
