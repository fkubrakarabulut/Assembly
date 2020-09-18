; RCL komutuyla bit dizisindeki (16bit) 1'lerin sayisini bulma
.model small
.data
.code
        mov ax,@data
        mov ds,ax 
        mov ax,1111111111111111b
        mov cl,16
        mov bl,00  ;1 icin sayac
don:    rcl ax,1 

;kaydirilan bit elde bayragina düseceginden elde varsa 1 yoksa 0 sayalim

        jc artir 
devam:  loop don
        jmp cik
artir:  inc bl 
        jmp devam 

cik:    mov ah,4ch
        int 21h
        end
