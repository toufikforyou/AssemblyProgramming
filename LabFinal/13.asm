.model small
.stack 100h

.code
    main proc
        mov ah, 1
        int 21h
        mov cl, al
        sub cl, 48
    
        mov ah, 1
        int 21h
        mov bl, al
        sub bl, 48
    
        mov ch, 0
        mov ax, cx
        div bl
    
        mov ch, al
        mov cl, ah
    
        add ch, 48
        mov ah, 2
        mov dl, ch
        int 21h
    
        add cl, 48
        mov ah, 2
        mov dl, cl
        int 21h
    
        mov ah, 4ch
        int 21h
    main endp
end main
