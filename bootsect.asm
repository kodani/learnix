;
; A simple boot sector program that loops forever
;

loop:
    jmp loop

times 510-($-$$) db 0  ;when compiled,our program must fit into 512
                       ;bytes with the last two bytes the magic number
                       ;so here,tall our assembly compiler to pad out our 
                       ;program with enough zero bytes(db 0) to bring us to
                       ;510th byte.
dw 0xaa55              ;last two bytes (one word) form the magic number
                       ;do BIOS knows we re boot secotor.