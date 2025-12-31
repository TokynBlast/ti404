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

.fill 599, 599-(.-start),1,0x90

i4004_start:

db 0xD4, 0xE0   ; 'H' -> 0x48 high nibble 4, WRR
db 0xC8, 0xE0   ; 'H' -> 0x48 low nibble 8, WRR

db 0xD4, 0xE0   ; 'e' -> 0x65 high nibble 6, WRR
db 0xC5, 0xE0   ; 'e' -> 0x65 low nibble 5, WRR

db 0xD6, 0xE0   ; 'l' -> 0x6C high nibble 6, WRR
db 0xCC, 0xE0   ; 'l' -> 0x6C low nibble C, WRR

db 0xD6, 0xE0   ; 'l' -> 0x6C high nibble 6, WRR
db 0xCC, 0xE0   ; 'l' -> 0x6C low nibble C, WRR

db 0xD6, 0xE0   ; 'o' -> 0x6F high nibble 6, WRR
db 0xCF, 0xE0   ; 'o' -> 0x6F low nibble F, WRR

db 0xD0, 0xE0   ; ' ' -> 0x20 high nibble 2, WRR
db 0xC0, 0xE0   ; ' ' -> 0x20 low nibble 0, WRR

db 0xD7, 0xE0   ; 'w' -> 0x77 high nibble 7, WRR
db 0xC7, 0xE0   ; 'w' -> 0x77 low nibble 7, WRR

db 0xD6, 0xE0   ; 'o' -> 0x6F high nibble 6, WRR
db 0xCF, 0xE0   ; 'o' -> 0x6F low nibble F, WRR

db 0xD7, 0xE0   ; 'r' -> 0x72 high nibble 7, WRR
db 0xC2, 0xE0   ; 'r' -> 0x72 low nibble 2, WRR

db 0xD6, 0xE0   ; 'l' -> 0x6C high nibble 6, WRR
db 0xCC, 0xE0   ; 'l' -> 0x6C low nibble C, WRR

db 0xD4, 0xE0   ; 'd' -> 0x64 high nibble 6, WRR
db 0xC4, 0xE0   ; 'd' -> 0x64 low nibble 4, WRR

db 0xD0, 0xE0   ; '\n' -> 0x0A high nibble 0, WRR
db 0xCA, 0xE0   ; '\n' -> 0x0A low nibble A, WRR

; loop till off :3
db 0x40, 0x1E   ; JUN to this instruction (address = current ROM offset)
