; 1. Print My name using an assigned variable.
; 2. Print my student ID using an assigned variable.  
; 3. Display the Z to A all alphabets using ansi-code.
; 4. Display the 0 to 9 all numbers using ansi-code.
; 5. Display the a to z all small alphabets using ansi-code.


.model small
.stack 100h
.data
myname db "MD TOUFIK HASN $"
suid db "2233081150 $"

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, myname
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, suid
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov cx, 26
    mov ah, 2
    mov dl, 'Z'
    
    LOOP_A2Z:
    int 21h
    dec dl
    loop LOOP_A2Z
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov cx, 10
    mov ah, 2
    mov dl, '0'
    
    LOOP_029:
    int 21h
    inc dl
    loop LOOP_029
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov cx, 26
    mov ah, 2
    mov dl, 'a'
    
    LOOP_atoz:
    int 21h
    inc dl
    loop LOOP_atoz
    
    exit:
    mov ah, 4ch
    int 21h
    main endp

end main