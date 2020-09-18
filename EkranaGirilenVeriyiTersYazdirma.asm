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
        
        ;ekrana mesaji yazdirma
        mov ah,09h
        lea dx,mesaj
        int 21h    
        
        mov cx,0006
        
        
        ;elrandan klavye-ad girisini alma
giris:  mov ah,01h
        int 21h    
        mov [si],al
        inc si
        loop giris   
        
        ;ad dizisini tersleme islemi
        mov cx,0006
        lea si,ad
        
        ;tek tek verileri ekrana yazdirma
tersyaz:mov ah,02h                       
        mov dl,[si+5]
        int 21h
        dec si
        loop tersyaz  
        
        mov ah,4ch
        int 21h
        end