;dizi1' in son 3 elemanını ilk 3 elemanı ile, ilk 3 elemanı da son 3 elemanı ile toplayıp sonucu bir diziye yazdıran program
.model small
.stack 64
.data  

       dizi1 db 1,2,3,4,5,6
       dizi2 db 6dup(00)
       dizi3 db 6dup(00)

.code
      mov ax,@data
      mov ds,ax
      lea bx,dizi1
      lea si,dizi2
      lea di,dizi3 
      
      mov cx,0003
 ilk: mov al,[bx]
      mov [si+3],al
      inc bx
      inc si
      loop ilk   
      
      mov cx,0003
      
 ikinci:  mov al,[bx+3]
          mov [si],al
          inc si
          inc bx
          loop ikinci  
              
             
             mov cx,0006     
     topla : mov al,[bx]
             add al,[si]
             mov [di],al
             inc si
             inc bx
             loop topla 
      
      
      mov ah,4ch
      int 21h
      end
         
