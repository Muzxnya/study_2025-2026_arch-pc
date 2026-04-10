section .data
    msg db 'Vvedite stroku: ',0
    outmsg db 'Vy vveli: ',0
    newline db 10
section .bss
    buf resb 80
section .text
    global _start
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 16
    int 80h
    mov eax, 3
    mov ebx, 0
    mov ecx, buf
    mov edx, 80
    int 80h
    mov eax, 4
    mov ebx, 1
    mov ecx, outmsg
    mov edx, 11
    int 80h
    mov eax, 4
    mov ebx, 1
    mov ecx, buf
    mov edx, 80
    int 80h
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 80h
    mov eax, 1
    mov ebx, 0
    int 80h
