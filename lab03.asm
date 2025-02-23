.model small
.stack 100h
.data
suid db '2233081150$'
myname db 'MH TOUFIK$'
adcopt db 'Addition concept:$'
subcopt db 'Substraction concept:$'
fid db 'First number is: $'
sid db 'Secound number is: $'
result db 'Result: $'
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
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, adcopt
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
 
    mov ah, 9
    lea dx, fid
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 9
    lea dx, sid
    int 21h
        
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, result
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
    lea dx, fid
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 9
    lea dx, sid
    int 21h
        
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, result
    int 21h
        
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
