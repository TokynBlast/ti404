section .text
; ti404, runs on i4004 and a thread ripper :D

add eax, 600

mov rsi, h ; pointer to h
mov al, [rsi] ; h first byte in asl
; repeat
mov rsi, e
mov al, [rsi]
mov rsi, l
mov al, [rsi]
mov rsi, o
mov al, [rsi]
mov rsi, w
mov al, [rsi]
mov rsi, r
mov al, [rsi]
mov rsi, d
mov al, [rsi]

section .data
h:
db 0b10001, 0b10001, 0b10001, 0b11111, 0b10001, 0b10001, 0b10001

e:
db 0b11111, 0b10000, 0b10000, 0b11111, 0b10000, 0b10000, 0b11111

l:
db 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b11111

o:
db 0b11111, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b11111

w:
db 0x0, 0x0, 0x0, 0x0, 0b10101, 0b10101, 0b11111

r:
db 0b11111, 0b10001, 0b11111, 0b11000, 0b10100, 0b10010, 0b10001

d:
db 0b11110, 0b10001, 0b10001,  0b10001, 0b10001, 0b10001, 0b11110

i4004_start:
