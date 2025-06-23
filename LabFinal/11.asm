.model small
.stack 100h

.data
    cr equ 0dh
    lf equ 0ah
    m1 db cr, lf, 'ENTER A HEXA DIGIT :','$'
    m2 db cr, lf, 'IN DECIMAL IT IS :'
    c1 db ?,'$'
    m3 db cr, lf, 'DO YOU WANT TO DO IT AGAIN ?Y/N','$'
    m4 db cr, lf, 'ILLEGAL CHARACTER - ENTER 0..9 OR A..F :','$'
    m5 db cr, lf, 'IN DECIMAL IT IS :1'
    c2 db ?,'$'
    m6 db cr, lf, 'ERROR!!! THREE TIMES!!! $'

.code
main proc
    mov ax, @data
    mov ds, ax

    start:
        mov ah, 9
        lea dx, m1
        int 21h
    
    new:
        mov ah, 1
        int 21h
    
        cmp al, '0'
        jl illegal
        cmp al, '9'
        jg illegal
    
        mov c1, al
        mov ah, 9
        lea dx, m2
        int 21h
    
    msg:
        mov ah, 9
        lea dx, m3
        int 21h
    
        mov ah, 1
        int 21h
        cmp al, 'Y'
        je start
        cmp al, 'y'
        je start
        jmp end
    
    illegal:
        cmp al, 'A'
        jl illegal_1
        cmp al, 'F'
        jg illegal_1
        sub al, 11h
        mov c2, al
    
        mov ah, 9
        lea dx, m5
        int 21h
    
        jmp msg
    
    illegal_1:
        mov ah, 9
        lea dx, m4
        int 21h
        inc bl
        cmp bl, 3
        je end_1
        jmp new
    
    end_1:
        mov ah, 9
        lea dx, m6
        int 21h
    
    end:
        mov ah, 4ch
        int 21h
    main endp
end main
