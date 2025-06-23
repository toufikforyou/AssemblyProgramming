.model small
.stack 100h
.data
    msg_1 DB 'Enter the first capital letter : $';message 1
    msg_2 DB 'Enter the second capital letter : $';message 2
    msg_3 DB 'The given capital letters in alphabetical order are : $';message

    next DB 0dh, 0ah, "$"

.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, next
        int 21h
        
        lea dx, msg_1
        int 21h
        
        mov ah, 1
        int 21h
        
        mov bl, al
        mov ah, 9
        
        lea dx, next
        int 21h
        
        lea dx, msg_2
        int 21h
        
        mov ah, 1
        int 21h
        
        mov bh, al
        mov ah, 9
        
        lea dx, next
        int 21h
        
        lea dx, msg_3
        int 21h
        
        mov ah, 2
        cmp bl, bh
        
        jae larger
        
        mov dl, bl
        int 21h
        
        mov dl, bh
        int 21h
        
        jmp exit
            
    larger:
        mov dl, bh
        int 21h
        
        mov dl, bl
        int 21h
            
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
