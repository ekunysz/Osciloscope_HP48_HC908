********************************************************************************
                org $ee00
                ldhx #0000
                lda #68
                tap
                rsp

COM             EQU 1
DTASHT          EQU 1
CLKSHT          EQU 2
STBSHT          EQU 0
DATA            EQU $80
TEMPA           EQU $81
TEMPHX          EQU $89
FLAGS           EQU $83


START           RSP             ;resetea el stack pointer
                mov #$7F,$05   ;pone ddrb 6-4 como salida teclado y ddr 3-0 como display
                bset 1,$0b     ;pone pta 1 como entrada en alto pullup
                bset 3,$0b     ;pone pta 3 como entrada en alto pullup
                bset 4,$0b     ;pone pta 4 como entrada en alto pullup
                bset 5,$0b     ;pone pta 5 como entrada en alto pullup
                mov #$70,$01   ;pone 1 en la salida del ptb 4,5,6
                bset 0,$1f     ;cop
                mov #$00,$87
                mov  #$01,$1d   ;habilita interrupciones
                mov  #$40,$1e

                mov #$10,$20    ;seleccion preescaler,Tstop y Trst
                mov #$10,$25    ;seteo de oupuput compare
                mov #$1,$23     ;definimos el tmodh
                mov #$2b,$24    ;def el tmodl
                mov #$0,$26     ;definimos el TCH0H
                mov #$96,$27    ;def el TCH0L

;xxxxxxxxxxxxxxxxx Modulo Principal, rola del cero en el nible superior del PTB xxxxxxxxxxxx

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxDIPLAYxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;*************Configuraciones de display ************************
                jsr DLY50
                mov #$06,DATA
                jsr WCTRL

                jsr DLY50
                mov #$0C,DATA
                jsr WCTRL

                jsr DLY50
                mov #$38,DATA
                jsr WCTRL

                jsr DLY50
                mov #$80,DATA
                jsr WCTRL

                jsr DLY50
                mov #$02,DATA
                jsr WCTRL

                jsr DLY50
                jsr DLY50
                jsr DLY50
***********************************************

PRO             ldhx #TEXTO1
PROX            jsr DLY50
                jsr DLY50
                lda 0,x
                beq OTRO
                sta DATA
                jsr WDAT
                aix #1
                bra PROX

OTRO            jsr DLY50
                mov #$C0,DATA
                jsr WCTRL

                ldhx #TEXTO2
PROX1           jsr DLY50
                jsr DLY50
                lda 0,x
                beq SALE1
                sta DATA
                jsr WDAT
                aix #1
                bra PROX1

SALE1           jsr DLY50
                mov #$C0,DATA
                jsr WCTRL
                jsr DLY50
                jsr DLY50
                jsr DLY50
                jsr DLY50

                jsr DLY50
                mov #$01,DATA
                jsr WCTRL

                ldhx #TEXTO3
PROX2           jsr DLY50
                jsr DLY50
                lda 0,x
                beq SALE2
                sta DATA
                jsr WDAT
                aix #1
                bra PROX2

SALE2
                jsr DLY50
                jsr DLY50
                jsr DLY50
                jsr DLY50
                jsr DLY50
                mov #$0E,DATA
                jsr WCTRL

PRINCIPAL       mov #$00,$87
                jsr TECLADO
                lda $87
                beq PRINCIPAL
                cmp #$01
                beq CAPTURA1
                cmp #$02
                beq CONTINUA1
                cmp #$10
                beq menu
                jmp PRINCIPAL
menu            jsr DLY50
                mov #$01,DATA
                jsr WCTRL
                jmp PRO
CAPTURA1        jmp CAPTURA   ;porque no da el offset
CONTINUA1       jmp CONTINUA   ;porque no da el offset
*******************************************************************************



TEXTO1          DB '1_CAPT'
                DB 0
TEXTO2          DB '2_CONT'
                DB 0
TEXTO3          DB '0_MENU'
                DB 0
TEXTO4          DB 'CAPTURANDO'
                DB 0
TEXTO5          DB '0)FREC:'
                DB 0
TEXTO6          DB '1)50Hz'
                DB 0
TEXTO7          DB '2)785Hz'
                DB 0
TEXTO8          DB '3)12,5KHz'
                DB 0
TEXTO9          DB '4).21MHz'
                DB 0
TEXTO10         DB 'Ok'
                DB 0
*************************************************************************************

$Include 'CONTROL.inc'
$Include 'CAPTURA.inc'
$Include 'CONTINUA.inc'
$Include 'TECLADO.inc'



                org $fffa
                dw  INTERRUPCION
                dw  $ee00
                dw  $ee00


;xxxx Fin xxx
