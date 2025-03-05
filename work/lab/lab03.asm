.model small
.stack 100h
.data
    suid db '2233081150$'
    myname db 'MH TOUFIK$'
    adcopt db 'Addition concept:$'
    subcopt db 'Subtraction concept:$'
    fnum db 'First number is: $'
    snum db 'Second number is: $'
    result db 'Result: $'
    finput db ?
    sinput db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, suid
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    jmp skip
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, myname
    int 21h
    
 skip:
    mov ah, 9
    lea dx, adcopt
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
 
    mov ah, 9
    lea dx, fnum
    int 21h
    
    mov ah, 1
    int 21h
    mov finput, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 9
    lea dx, snum
    int 21h
    
    mov ah, 1
    int 21h
    mov sinput, al
        
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov al, finput
    add al, sinput
    sub al, '0'
    mov bl, al
    
    mov ah, 9
    lea dx, result
    int 21h
    
    mov dl, bl
    mov ah, 2
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, subcopt
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
 
    mov ah, 9
    lea dx, fnum
    int 21h
    
    mov ah, 1
    int 21h
    mov finput, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 9
    lea dx, snum
    int 21h
    
    mov ah, 1
    int 21h
    mov sinput, al
        
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov al, finput
    sub al, sinput
    add al, '0'
    mov bl, al
    
    mov ah, 9
    lea dx, result
    int 21h
    
    mov dl, bl
    mov ah, 2
    int 21h
        
    exit:
    mov ah, 4ch
    int 21h
    main endp
    
end main
