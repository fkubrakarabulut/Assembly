org 100h
.model small 
.stack 64
.data 
        mesaj db "adinizi giriniz:$"
        ad db 6dup(00)
        ters db 6dup(00)
.code
        mov ax,@data
        mov ds,ax
        lea si,ad
        
        mov cx,0006
        lea si,ad
        lea bx,ters
        
        ;ekrana gosteme komutu
        mov ah,09h
        lea dx,mesaj
        int 21h
        
        ;ekrandan alma komutu
giris:  mov ah,01h
        int 21h   
        mov [si],al
        loop giris
        
        ;adi yigin uzerinden tersleme
        mov cx,0006
        lea si,ad
        
tersle: push [si+5]
        pop dx
        mov [bx],dl
        dec si
        inc bx
        loop tersle
        
        mov ah,4ch
        int 21h
        end