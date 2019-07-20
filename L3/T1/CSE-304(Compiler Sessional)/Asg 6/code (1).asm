.model small
.stack 100h
.data
t0  dw  ?
t1  dw  ?
a dw ?, ?, ?
i dw ?

.code
main proc
mov ax,@data
mov ds,ax
mov ax, 1
mov i, ax

mov bx, 2
mul bx
lea di, a
add di, 2
mov [di], ax
mov ax, i
cmp ax, 2
jl L0
mov t1, 0
jmp L1
L0:
mov t1, 1
L1:
mov ax, t1
cmp ax, 1
jne L2
mov ax, 5
lea di, a
add di, 4
mov [di], ax
L2:

main endp


end main