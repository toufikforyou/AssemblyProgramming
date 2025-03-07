.model small
.stack 100h
.data

  myname db 'My name is: MD TOUFIK HASAN $'

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, myname
    int 21h
    
     
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main