;dizide eleman arayan, bulunca CF=1 yapan
;eleman yoksa CF=0 yapan program

.model small  
.data 
        dizi db 1,2,3,4,5,6,7,8,9
        aranan db 4

.code
        mov ax,@data
        mov ds,ax
        lea si,dizi
        mov cx,0009  
        mov bx,0000 
        clc ; CF=0
        mov al,aranan 
        
don:    cmp al,[si] ;aranan ile dizi elemanini karsilastir
        jz buldu ;eleman varsa buldu'ya git
        inc si ;eleman yoksa aramaya devam et
        loop don 
        jmp cik
        
buldu: mov bx,1111h ; CF=1

cik:   mov ah,4ch
       int 21h
       end