

CAPTURA

caracter          EQU $9D
cuenta_bit        EQU $9E
auxiliar          EQU $9F
ptb               EQU $01
pta               EQU $00
                  bset 7,$05    ;habilito como salida ptb2
                  bclr 7,$01    ;pongo en bajo el ptb7

;*************DISPLAY***********************

OPCIONESCAP1    mov #$01,DATA
                jsr WCTRL
                ldhx #TEXTO6
PROXT1          jsr DLY50
                jsr DLY50
                lda 0,x
                beq OPCIONESCAP2
                sta DATA
                jsr WDAT
                aix #1
                bra PROXT1
OPCIONESCAP2    mov #$C0,DATA
                jsr WCTRL
                ldhx #TEXTO7
PROXT2          jsr DLY50
                jsr DLY50
                lda 0,x
                beq OPCIONESCAP3
                sta DATA
                jsr WDAT
                aix #1
                bra PROXT2
OPCIONESCAP3    jsr DLY50
                jsr DLY50
                jsr DLY50
                jsr DLY50
                mov #$01,DATA
                jsr WCTRL
                ldhx #TEXTO8
PROXT3          jsr DLY50
                jsr DLY50
                lda 0,x
                beq OPCIONESCAP4
                sta DATA
                jsr WDAT
                aix #1
                bra PROXT3
OPCIONESCAP4    mov #$C0,DATA
                jsr WCTRL
                ldhx #TEXTO9
PROXT4          jsr DLY50
                jsr DLY50
                lda 0,x
                beq MENUCAPT
                sta DATA
                jsr WDAT
                aix #1
                bra PROXT4

MENUCAPT        jsr DLY50
                jsr DLY50
                jsr DLY50
                jsr DLY50
                mov #$01,DATA
                jsr WCTRL
                ldhx #TEXTO5
PROXC1          jsr DLY50
                jsr DLY50
                lda 0,x
                beq TECLADOCAPTURA
                sta DATA
                jsr WDAT
                aix #1
                bra PROXC1

;************Opciones de teclado**********************

TECLADOCAPTURA  mov #$00,$87       ;borra el teclado
                jsr TECLADO
                lda $87
                beq TECLADOCAPTURA
                cmp #$01
                beq FREC1
                cmp #$02
                beq FREC2
                cmp #$03
                beq FREC3
                cmp #$04
                beq FREC4
                jmp OPCIONESCAP1 ;cualquier otra opcion muestra el menu

FREC1           mov #$FF,$F3
                mov #$FF,$F4
                bra CAPT
FREC2           mov #$0F,$F3
                mov #$FF,$F4
                bra CAPT
FREC3           mov #$00,$F3
                mov #$FF,$F4
                bra CAPT
FREC4           mov #$00,$F3
                mov #$0F,$F4
;********************Programa de captura*******************

CAPT

                jsr DLY50
                jsr DLY50
                mov #$01,DATA
                jsr WCTRL
                ldhx #TEXTO10
PROXCAPTURA     jsr DLY50
                jsr DLY50
                lda 0,x
                beq INICIOCAPTURA
                sta DATA
                jsr WDAT
                aix #1
                bra PROXCAPTURA
INICIOCAPTURA
;*********inicio del programa ***************

                  bset 3,$05    ;habilito el puerto b
                  bset 3,$01   ;pongo la salida de RS232 a 1

                  mov  #$20,$3c ; Se setea la conversion ADC continua y el canal cero (PTA0)
                  ;mov  #$80,$3f ;setea 16 por division
                  clra
;***********Comienzo de conversion********************
                  cli
		  mov #$00,$F8
espera            lda $F8
		  cmp #1        ;mecanismo para detectar que re realizo la interrupcion
		  bne espera
		  jmp pro


INTERRUPCION      ;comienzo de la interrupcion
                  ldhx #$0000
                  mov #$01,$F8

                  bset 7,$01
inicio            brclr 7,$003c,inicio ; * Mientras el bit que indica la conversion
                                       ; * completa esta en cero va a seguir en el bucle.
                  ldx #$A0

proximo           lda $003e            ; * Cargo en el acumulador el Registro de Dato ADC.


                  sta ,x               ;guarda en la proxima direccion donde apunta el indice
                  jsr delay
                  cmpx #$F2
                  incx
                  bmi proximo

;***************************GRAFICA******************

                  ldx #$A0              ;apunto el indice al primer dato
otro1             lda ,x                ;lo levanto al acumulador
                  sta caracter          ;lo grabo en la direccion de transmision
                  jsr saca_caracter
                  jsr delay             ;genera un retardo entre dato y dato a enviar
                  cmpx #$F2            ;se fija si esta al fin de la cadena de datos
                  incx
                  bmi otro1              ;si no esta al final va al proximo
                  bclr 7,$05             ;deshabilito el puerto ptb7
                  rti
;*********************************************

saca_caracter:
                  stx auxiliar      ;[3] guardo valor de X
                  ldx #9            ;[2] bits por caracter (incluido bit start)
                  clc               ;[1] borra carry para enviar bit de start
saca_bit_dato:
                  bcc saca_0        ;[3] si cy=0, salta para sacar 0
                  bset 3,$01        ;[4] si no saca 1
                  bra otro_bit      ;[3]
saca_0:
                  bclr 3,$01        ;[4]
                  bra otro_bit      ;[3]
otro_bit:
                  jsr delay_7a      ;[7a+9]demora=7*31+9=226T
                  ror caracter      ;[4] busca siguiente bit (va al carry)
                  decx              ;[1]
                  bne saca_bit_dato ;[3] 8T vuelvo a sacar el sig bit
saca_bit_stop:

                  bset 3,$01        ;[4] __| sube linea para bit de STOP
                  jsr delay_7b      ;[7a+9] demora=16T=6,51useg
                  ldx auxiliar      ;[3]recupero valor de X
                  rts               ;[4]
;--------------------------------------------------------------------------------
; SELECCION DE VELOCIDAD DE TRANSMISION
;--------------------------------------------------------------------------------
delay_7a          bset 4,$20
                  bclr 7,$20
dela              brclr 7,$20,dela
                  rts        ;[4]=7a+4 cycles
delay_7b          bset 4,$20
                  bclr 7,$25
dela1             brclr 7,$25,dela1
                  rts

;***********rutina de delay de frecuencia de muestreo****************
delay:            sta TEMPA
                  sthx TEMPHX
                  ldx #$FF
del2              aix #-1
                  cphx #0
                  bne del2
                  lda TEMPA
                  ldhx TEMPHX
                  rts
