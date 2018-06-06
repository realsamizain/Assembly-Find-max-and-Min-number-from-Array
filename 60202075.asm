           org 0x0100  ;srarting position

Arrayd: dw   16h,50h,30h,24h,19h,2h,5h,6h,40h,8h,23h,16h,17h,28h,75h ; Arrayday values



mov  bx, 0  ; initialize Arrayday index to zero
mov  ax, 0  ; initialize min to zero
mov  ax, [Arrayd+bx]    ; minimum number to ax
mov cl,15  ; set counter
loop1: 
cmp  ax, [Arrayd+bx]      ; comparision ax with array values
 jle  end1                          ; if less or equal number
 mov ax,[Arrayd+bx]      ;ax contains the minimum number
end1:		
add  bx, 2            ; advance bx to next index
loop loop1
mov  dx, ax        ; write minimum value in DX
mov  bx, 0              ; initialize Arrayday index to zero
mov  ax, 0              ; initialize max to zero
mov  ax, [Arrayd+bx]    ; maximum number to ax
mov cl,15  ; set counter
loop22:      
cmp  ax, [Arrayd+bx]    ; comparison ax with array values
jge  end2                      ; if greater or equal number
mov ax,[Arrayd+bx]	 ;ax contains the maximum number
end2:		
add  bx, 2              ; advance bx to next index
loop loop22 ; return back control on loop22

mov bx,dx     ; insert DX value into BX.
mov dx,0      ; Set DX to 0.
INT 21h       ; Return back to Operatiing system