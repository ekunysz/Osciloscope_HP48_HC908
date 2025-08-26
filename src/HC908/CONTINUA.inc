
CONTINUA

;*************DISPLAY***********************
                mov #$02,DATA
                jsr WCTRL
                ldhx #TEXTO4
PROXC           jsr DLY50
                jsr DLY50
                lda 0,x
                beq CAPTC
                sta DATA
                jsr WDAT
                aix #1
                bra PROXC
CAPTC




;*********inicio del programa ***************
                  mov  #$00,$F5        ;valor que se suma a la posicion del dato
                  mov  #$FF,$F4        ;parte baja del delay
                  mov  #$00,$F3        ;parte alta direccion del DELAY
                  mov  #$01,$1d        ;/IRQ
                  mov  #$40,$1e        ;Desconecta el pullup interno del irq
                  cli
;***********Configuracion Puertos y Conversor Analogo Digital
                  bset 0,$1f
                  bset 3,$05            ;habilito como salida ptb2
                  bset 3,$01            ;pongo a 1 el puerto b para salida RS232
                  mov #$20,$3c          ;Se setea la conversion ADC continua
                  clra
;***********Comienzo de conversion********************
borrateclado      mov #$00,$87           ;borra la direccion de teclado

inicio3           brclr 7,$003c,inicio3  ;* Mientras el bit que indica la conversion
                                        ;* completa esta en cero va a seguir en el bucle

                  lda $003e             ;* Cargo en el acumulador el Registro de Dato ADC.
                  adc $F4               ;  sumo el valor de la posicion vertical
                  sta $9D               ;  guarda el dato en la direccion de envio

                  jsr saca_caracter
                  jsr delay
;*************Selector de frecuencia por teclado************
                  mov #$00,$87
                  jsr TECLADO
                  lda $87
                  beq inicio3
                  cmp #$04
                  beq decremento
                  cmp #$06
                  beq incremento
                  cmp #$02
                  beq subelinea
                  cmp #$08
                  beq bajalinea
                  cmp #$10       ;tecla "0"
                  beq volver

decremento        dec $F3
                  jmp borrateclado
incremento        inc $F3
                  jmp borrateclado
subelinea         inc $F4
                  jmp borrateclado
bajalinea         dec $F4
                  jmp borrateclado

volver            jmp pro





