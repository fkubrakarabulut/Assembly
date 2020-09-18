org 100h
.model small 
.stack 64
.data 
        mesaj db "papatya:$"
        ;ad db 6dup(00)
        ;ters db 6dup(00)
.code
        mov ax,@data
        mov ds,ax 
        
        call ekranayaz
        jmp cik
        
        proc ekranayaz
            mov ah,09h
            lea dx,mesaj
            int 21h
            
            ret
            ekranayaz endp
        
        
cik:    mov ah,4ch
        int 21h
        end