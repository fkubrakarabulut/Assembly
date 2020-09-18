.model small
.data 
    dizi db 1,2,3,4
    toplam db ?
.code
    mov ax,@data
    mov ds,ax
    mov si, offset dizi
    mov cx,0004
    mov al,00
don:add al,[si] ; ilk elemandan itibaren al'de topla.
    inc si ; sonraki eleman
    loop don ; dongu tanimi
    
    mov toplam,al
    mov ah,4ch
    int 21h
    end
