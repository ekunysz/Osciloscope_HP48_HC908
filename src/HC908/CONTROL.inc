
WDAT            bclr COM,FLAGS
                lda DATA
                bsr SHIFT
                bra PULSE


;************Rutina de DELAY************

DLY50           sta TEMPA
                sthx TEMPHX
                lda #5
OUTLP1          ldhx #4000t
INNRLP1         aix #-1
                cphx #0
                bne INNRLP1
                deca
                bne OUTLP1
                lda TEMPA
                ldhx TEMPHX
                rts
;****************************************

WCTRL           bset COM,FLAGS
                lda DATA
                bsr SHIFT
                bra PULSE

SHIFT           pshx
                ldx #8
NEXT            lsla
                bcs OUT
                bclr DTASHT,$01
                bra CLOCK

OUT             bset DTASHT,$01

CLOCK           brset COM,FLAGS,LCLOCK
                bclr CLKSHT,$01
                bset CLKSHT,$01
                bra SAME

LCLOCK          bclr CLKSHT,$01
                bsr DLY50
                bset CLKSHT,$01

SAME            decx
                bne NEXT
                pulx
                rts

PULSE           bset STBSHT,$01
                bclr STBSHT,$01
                rts



