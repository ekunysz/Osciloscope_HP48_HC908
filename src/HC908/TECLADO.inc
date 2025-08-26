TECLADO         mov #$00,$84   ;conta 4
                lda #$77

loop1

                rola
                sta $85
                and #$70
                ora #$0f
                sta $01
                jsr entrada
                inc $84
                lda $84
                cmp #$04
                beq salidateclado
                lda $85
                jmp loop1
salidateclado   rts
;xxxxxxxxxxxxxxx Subrrutina xxxxxxxxxxxxxxxxxxxxx

entrada
                lda $00
                sta $86
                and #$3A
                cmp #$3A  ;0 por 1
                bne decod
                rts
;xxxxxxxxxxxxxx Decodificacion xxxxxxxxxxxxxxxxxxx
;xxxxxxxxxxxxxx Fila xxxxxxxxxxxxxxxxx


decod
                brclr 5,$86,pfi
                brclr 4,$86,sfi
                brclr 3,$86,tfi
                brclr 1,$86,cfi

;xxxxxxxxxxxxxx Columna xxxxxxxxxxxxxx


pfi             ;brclr 7,$85,f4
                brclr 6,$85,numeral
                brclr 5,$85,cero
                brclr 4,$85,aste
sfi             ;brclr 7,$85,f3
                brclr 6,$85,nueve
                brclr 5,$85,ocho
                brclr 4,$85,siete
tfi             ;brclr 7,$85,f2
                brclr 6,$85,seis
                brclr 5,$85,cinco
                brclr 4,$85,cuatro
cfi             ;brclr 7,$85,f1
                brclr 6,$85,tres
                brclr 5,$85,dos
                brclr 4,$85,uno

;xxxxxxxxxxxx Tecla seleccionada xxxxxxxxxxxxx

uno             mov #$01,$87
                jmp delay2

dos             mov #$02,$87
                jmp delay2

tres            mov #$03,$87
                jmp delay2

cuatro          mov #$04,$87
                jmp delay2

cinco           mov #$05,$87
                jmp delay2

seis            mov #$06,$87
                jmp delay2

siete           mov #$07,$87
                jmp delay2
ocho            mov #$08,$87
                jmp delay2
nueve           mov #$09,$87
                jmp delay2
cero            mov #$10,$87
                jmp delay2
aste            mov #$2A,$87
                jmp delay2
;f1              mov #$41,$87
;                jmp delay2
;f2              mov #$42,$87
;                jmp delay2
;f3              mov #$43,$87
;                jmp delay2
;f4              mov #$44,$87
;                jmp delay2
numeral         mov #$23,$87
                jmp delay2
                clr $88
incre           inc $88
                lda #$ff
                cbeq $88,sigue
                jmp incre
sigue           rts
delay2
                clr $88
incre2          inc $88
                lda #$ff
                cbeq $88,sigue2
                jmp incre2
sigue2          rts
