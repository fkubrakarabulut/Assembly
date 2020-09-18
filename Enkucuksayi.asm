;dizideki en kucuk sayiyi bul
.model small
.data
    dizi db 13,-10,19,14,-18
    ek db ?
.code
        mov ax,@data
        mov ds,ax; 
        mov si,
        mov cx,0005;
        mov al,[si];
        inc si
   don: cmp al,[si]
        jle atla ; jump less or equal=jle  
        mov al,[si] ;al'deki buyukse diziden kucuk olani al
  atla: inc si ;
        loop don 
        mov ek,al

        mov ah,4ch
        int 21h
        end
