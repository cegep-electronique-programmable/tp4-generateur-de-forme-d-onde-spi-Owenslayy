subtitle "Microchip MPLAB XC8 C Compiler v2.45 (Free license) build 20230818022343 Og1 "

pagewidth 120

	opt flic

	processor	18F25K80
include "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\18f25k80.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXERRCNT equ 0E41h ;# 
# 124 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXERRCNT equ 0E42h ;# 
# 194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON1 equ 0E43h ;# 
# 270 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON2 equ 0E44h ;# 
# 355 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON3 equ 0E45h ;# 
# 408 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFCON0 equ 0E46h ;# 
# 470 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFCON1 equ 0E47h ;# 
# 532 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6SIDH equ 0E48h ;# 
# 652 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6SIDL equ 0E49h ;# 
# 759 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6EIDH equ 0E4Ah ;# 
# 879 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6EIDL equ 0E4Bh ;# 
# 999 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7SIDH equ 0E4Ch ;# 
# 1119 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7SIDL equ 0E4Dh ;# 
# 1226 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7EIDH equ 0E4Eh ;# 
# 1346 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7EIDL equ 0E4Fh ;# 
# 1466 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8SIDH equ 0E50h ;# 
# 1586 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8SIDL equ 0E51h ;# 
# 1693 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8EIDH equ 0E52h ;# 
# 1813 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8EIDL equ 0E53h ;# 
# 1933 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9SIDH equ 0E54h ;# 
# 2053 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9SIDL equ 0E55h ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9EIDH equ 0E56h ;# 
# 2280 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9EIDL equ 0E57h ;# 
# 2400 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10SIDH equ 0E58h ;# 
# 2520 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10SIDL equ 0E59h ;# 
# 2627 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10EIDH equ 0E5Ah ;# 
# 2747 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10EIDL equ 0E5Bh ;# 
# 2867 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11SIDH equ 0E5Ch ;# 
# 2987 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11SIDL equ 0E5Dh ;# 
# 3094 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11EIDH equ 0E5Eh ;# 
# 3214 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11EIDL equ 0E5Fh ;# 
# 3334 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12SIDH equ 0E60h ;# 
# 3454 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12SIDL equ 0E61h ;# 
# 3561 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12EIDH equ 0E62h ;# 
# 3681 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12EIDL equ 0E63h ;# 
# 3801 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13SIDH equ 0E64h ;# 
# 3921 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13SIDL equ 0E65h ;# 
# 4028 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13EIDH equ 0E66h ;# 
# 4148 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13EIDL equ 0E67h ;# 
# 4268 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14SIDH equ 0E68h ;# 
# 4388 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14SIDL equ 0E69h ;# 
# 4495 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14EIDH equ 0E6Ah ;# 
# 4615 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14EIDL equ 0E6Bh ;# 
# 4735 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15SIDH equ 0E6Ch ;# 
# 4855 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15SIDL equ 0E6Dh ;# 
# 4962 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15EIDH equ 0E6Eh ;# 
# 5082 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15EIDL equ 0E6Fh ;# 
# 5202 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SDFLC equ 0E70h ;# 
# 5254 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON0 equ 0E71h ;# 
# 5338 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON1 equ 0E72h ;# 
# 5422 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON2 equ 0E73h ;# 
# 5506 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON3 equ 0E74h ;# 
# 5590 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON4 equ 0E75h ;# 
# 5674 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON5 equ 0E76h ;# 
# 5758 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON6 equ 0E77h ;# 
# 5842 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON7 equ 0E78h ;# 
# 5926 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL0 equ 0E79h ;# 
# 6014 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL1 equ 0E7Ah ;# 
# 6102 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL2 equ 0E7Bh ;# 
# 6190 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL3 equ 0E7Ch ;# 
# 6278 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BSEL0 equ 0E7Dh ;# 
# 6329 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BIE0 equ 0E7Eh ;# 
# 6405 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXBIE equ 0E7Fh ;# 
# 6459 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0CON equ 0E80h ;# 
# 6721 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0SIDH equ 0E81h ;# 
# 6841 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0SIDL equ 0E82h ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0EIDH equ 0E83h ;# 
# 7078 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0EIDL equ 0E84h ;# 
# 7198 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0DLC equ 0E85h ;# 
# 7327 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D0 equ 0E86h ;# 
# 7397 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D1 equ 0E87h ;# 
# 7467 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D2 equ 0E88h ;# 
# 7537 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D3 equ 0E89h ;# 
# 7607 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D4 equ 0E8Ah ;# 
# 7677 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D5 equ 0E8Bh ;# 
# 7747 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D6 equ 0E8Ch ;# 
# 7817 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D7 equ 0E8Dh ;# 
# 7887 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO9 equ 0E8Eh ;# 
# 7998 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO9 equ 0E8Fh ;# 
# 8090 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1CON equ 0E90h ;# 
# 8352 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1SIDH equ 0E91h ;# 
# 8472 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1SIDL equ 0E92h ;# 
# 8589 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1EIDH equ 0E93h ;# 
# 8709 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1EIDL equ 0E94h ;# 
# 8829 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1DLC equ 0E95h ;# 
# 8958 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D0 equ 0E96h ;# 
# 9028 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D1 equ 0E97h ;# 
# 9098 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D2 equ 0E98h ;# 
# 9168 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D3 equ 0E99h ;# 
# 9238 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D4 equ 0E9Ah ;# 
# 9308 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D5 equ 0E9Bh ;# 
# 9378 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D6 equ 0E9Ch ;# 
# 9448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D7 equ 0E9Dh ;# 
# 9518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO8 equ 0E9Eh ;# 
# 9629 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO8 equ 0E9Fh ;# 
# 9721 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2CON equ 0EA0h ;# 
# 9983 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2SIDH equ 0EA1h ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2SIDL equ 0EA2h ;# 
# 10229 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2EIDH equ 0EA3h ;# 
# 10349 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2EIDL equ 0EA4h ;# 
# 10469 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2DLC equ 0EA5h ;# 
# 10598 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D0 equ 0EA6h ;# 
# 10668 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D1 equ 0EA7h ;# 
# 10738 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D2 equ 0EA8h ;# 
# 10808 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D3 equ 0EA9h ;# 
# 10878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D4 equ 0EAAh ;# 
# 10948 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D5 equ 0EABh ;# 
# 11018 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D6 equ 0EACh ;# 
# 11088 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D7 equ 0EADh ;# 
# 11158 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO7 equ 0EAEh ;# 
# 11269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO7 equ 0EAFh ;# 
# 11361 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3CON equ 0EB0h ;# 
# 11623 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3SIDH equ 0EB1h ;# 
# 11743 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3SIDL equ 0EB2h ;# 
# 11869 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3EIDH equ 0EB3h ;# 
# 11989 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3EIDL equ 0EB4h ;# 
# 12109 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3DLC equ 0EB5h ;# 
# 12238 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D0 equ 0EB6h ;# 
# 12308 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D1 equ 0EB7h ;# 
# 12378 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D2 equ 0EB8h ;# 
# 12448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D3 equ 0EB9h ;# 
# 12518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D4 equ 0EBAh ;# 
# 12588 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D5 equ 0EBBh ;# 
# 12658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D6 equ 0EBCh ;# 
# 12728 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D7 equ 0EBDh ;# 
# 12798 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO6 equ 0EBEh ;# 
# 12909 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO6 equ 0EBFh ;# 
# 13001 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4CON equ 0EC0h ;# 
# 13263 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4SIDH equ 0EC1h ;# 
# 13383 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4SIDL equ 0EC2h ;# 
# 13509 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4EIDH equ 0EC3h ;# 
# 13629 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4EIDL equ 0EC4h ;# 
# 13749 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4DLC equ 0EC5h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D0 equ 0EC6h ;# 
# 13948 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D1 equ 0EC7h ;# 
# 14018 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D2 equ 0EC8h ;# 
# 14088 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D3 equ 0EC9h ;# 
# 14158 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D4 equ 0ECAh ;# 
# 14228 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D5 equ 0ECBh ;# 
# 14298 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D6 equ 0ECCh ;# 
# 14368 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D7 equ 0ECDh ;# 
# 14438 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO5 equ 0ECEh ;# 
# 14549 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO5 equ 0ECFh ;# 
# 14641 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5CON equ 0ED0h ;# 
# 14903 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5SIDH equ 0ED1h ;# 
# 15023 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5SIDL equ 0ED2h ;# 
# 15149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5EIDH equ 0ED3h ;# 
# 15269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5EIDL equ 0ED4h ;# 
# 15389 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5DLC equ 0ED5h ;# 
# 15518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D0 equ 0ED6h ;# 
# 15588 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D1 equ 0ED7h ;# 
# 15658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D2 equ 0ED8h ;# 
# 15728 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D3 equ 0ED9h ;# 
# 15798 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D4 equ 0EDAh ;# 
# 15868 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D5 equ 0EDBh ;# 
# 15938 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D6 equ 0EDCh ;# 
# 16008 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D7 equ 0EDDh ;# 
# 16078 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO4 equ 0EDEh ;# 
# 16189 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO4 equ 0EDFh ;# 
# 16281 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0SIDH equ 0EE0h ;# 
# 16401 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0SIDL equ 0EE1h ;# 
# 16508 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0EIDH equ 0EE2h ;# 
# 16628 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0EIDL equ 0EE3h ;# 
# 16748 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1SIDH equ 0EE4h ;# 
# 16868 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1SIDL equ 0EE5h ;# 
# 16975 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1EIDH equ 0EE6h ;# 
# 17095 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1EIDL equ 0EE7h ;# 
# 17215 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2SIDH equ 0EE8h ;# 
# 17335 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2SIDL equ 0EE9h ;# 
# 17442 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2EIDH equ 0EEAh ;# 
# 17562 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2EIDL equ 0EEBh ;# 
# 17682 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3SIDH equ 0EECh ;# 
# 17802 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3SIDL equ 0EEDh ;# 
# 17909 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3EIDH equ 0EEEh ;# 
# 18029 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3EIDL equ 0EEFh ;# 
# 18149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4SIDH equ 0EF0h ;# 
# 18269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4SIDL equ 0EF1h ;# 
# 18376 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4EIDH equ 0EF2h ;# 
# 18496 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4EIDL equ 0EF3h ;# 
# 18616 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5SIDH equ 0EF4h ;# 
# 18736 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5SIDL equ 0EF5h ;# 
# 18843 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5EIDH equ 0EF6h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5EIDL equ 0EF7h ;# 
# 19083 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0SIDH equ 0EF8h ;# 
# 19203 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0SIDL equ 0EF9h ;# 
# 19310 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0EIDH equ 0EFAh ;# 
# 19430 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0EIDL equ 0EFBh ;# 
# 19550 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1SIDH equ 0EFCh ;# 
# 19670 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1SIDL equ 0EFDh ;# 
# 19777 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1EIDH equ 0EFEh ;# 
# 19897 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1EIDL equ 0EFFh ;# 
# 20017 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2CON equ 0F00h ;# 
# 20127 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2SIDH equ 0F01h ;# 
# 20247 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2SIDL equ 0F02h ;# 
# 20359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2EIDH equ 0F03h ;# 
# 20479 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2EIDL equ 0F04h ;# 
# 20599 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2DLC equ 0F05h ;# 
# 20685 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D0 equ 0F06h ;# 
# 20755 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D1 equ 0F07h ;# 
# 20825 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D2 equ 0F08h ;# 
# 20895 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D3 equ 0F09h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D4 equ 0F0Ah ;# 
# 21035 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D5 equ 0F0Bh ;# 
# 21105 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D6 equ 0F0Ch ;# 
# 21175 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D7 equ 0F0Dh ;# 
# 21245 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO3 equ 0F0Eh ;# 
# 21356 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO3 equ 0F0Fh ;# 
# 21448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1CON equ 0F10h ;# 
# 21558 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1SIDH equ 0F11h ;# 
# 21678 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1SIDL equ 0F12h ;# 
# 21790 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1EIDH equ 0F13h ;# 
# 21910 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1EIDL equ 0F14h ;# 
# 22030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1DLC equ 0F15h ;# 
# 22116 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D0 equ 0F16h ;# 
# 22186 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D1 equ 0F17h ;# 
# 22256 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D2 equ 0F18h ;# 
# 22326 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D3 equ 0F19h ;# 
# 22396 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D4 equ 0F1Ah ;# 
# 22466 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D5 equ 0F1Bh ;# 
# 22536 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D6 equ 0F1Ch ;# 
# 22606 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D7 equ 0F1Dh ;# 
# 22676 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO2 equ 0F1Eh ;# 
# 22787 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO2 equ 0F1Fh ;# 
# 22879 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0CON equ 0F20h ;# 
# 22989 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0SIDH equ 0F21h ;# 
# 23109 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0SIDL equ 0F22h ;# 
# 23221 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0EIDH equ 0F23h ;# 
# 23341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0EIDL equ 0F24h ;# 
# 23461 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0DLC equ 0F25h ;# 
# 23547 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D0 equ 0F26h ;# 
# 23617 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D1 equ 0F27h ;# 
# 23687 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D2 equ 0F28h ;# 
# 23757 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D3 equ 0F29h ;# 
# 23827 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D4 equ 0F2Ah ;# 
# 23897 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D5 equ 0F2Bh ;# 
# 23967 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D6 equ 0F2Ch ;# 
# 24037 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D7 equ 0F2Dh ;# 
# 24107 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO1 equ 0F2Eh ;# 
# 24218 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO1 equ 0F2Fh ;# 
# 24310 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1CON equ 0F30h ;# 
# 24470 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1SIDH equ 0F31h ;# 
# 24590 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1SIDL equ 0F32h ;# 
# 24707 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1EIDH equ 0F33h ;# 
# 24827 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1EIDL equ 0F34h ;# 
# 24947 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1DLC equ 0F35h ;# 
# 25061 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D0 equ 0F36h ;# 
# 25131 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D1 equ 0F37h ;# 
# 25201 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D2 equ 0F38h ;# 
# 25271 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D3 equ 0F39h ;# 
# 25341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D4 equ 0F3Ah ;# 
# 25411 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D5 equ 0F3Bh ;# 
# 25481 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D6 equ 0F3Ch ;# 
# 25551 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D7 equ 0F3Dh ;# 
# 25621 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO0 equ 0F3Eh ;# 
# 25732 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO0 equ 0F3Fh ;# 
# 25824 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP5CON equ 0F47h ;# 
# 25903 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5 equ 0F48h ;# 
# 25910 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5L equ 0F48h ;# 
# 25930 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5H equ 0F49h ;# 
# 25950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP4CON equ 0F4Ah ;# 
# 26029 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4 equ 0F4Bh ;# 
# 26036 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4L equ 0F4Bh ;# 
# 26056 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4H equ 0F4Ch ;# 
# 26076 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP3CON equ 0F4Dh ;# 
# 26155 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3 equ 0F4Eh ;# 
# 26162 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3L equ 0F4Eh ;# 
# 26182 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3H equ 0F4Fh ;# 
# 26202 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP2CON equ 0F50h ;# 
# 26207 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP2CON equ 0F50h ;# 
# 26358 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2 equ 0F51h ;# 
# 26365 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2L equ 0F51h ;# 
# 26385 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2H equ 0F52h ;# 
# 26405 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUICON equ 0F53h ;# 
# 26481 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUCONL equ 0F54h ;# 
# 26559 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUCONH equ 0F55h ;# 
# 26616 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PADCFG1 equ 0F56h ;# 
# 26644 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD2 equ 0F57h ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD1 equ 0F58h ;# 
# 26746 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD0 equ 0F59h ;# 
# 26823 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IOCB equ 0F5Ah ;# 
# 26862 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WPUB equ 0F5Bh ;# 
# 26924 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ANCON1 equ 0F5Ch ;# 
# 26976 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ANCON0 equ 0F5Dh ;# 
# 27052 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM2CON equ 0F5Eh ;# 
# 27057 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM2CON1 equ 0F5Eh ;# 
# 27304 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM1CON equ 0F5Fh ;# 
# 27309 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM1CON1 equ 0F5Fh ;# 
# 27584 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0CON equ 0F60h ;# 
# 27768 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0SIDH equ 0F61h ;# 
# 27888 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0SIDL equ 0F62h ;# 
# 28005 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0EIDH equ 0F63h ;# 
# 28125 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0EIDL equ 0F64h ;# 
# 28245 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0DLC equ 0F65h ;# 
# 28359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D0 equ 0F66h ;# 
# 28429 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D1 equ 0F67h ;# 
# 28499 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D2 equ 0F68h ;# 
# 28569 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D3 equ 0F69h ;# 
# 28639 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D4 equ 0F6Ah ;# 
# 28709 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D5 equ 0F6Bh ;# 
# 28779 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D6 equ 0F6Ch ;# 
# 28849 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D7 equ 0F6Dh ;# 
# 28919 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT equ 0F6Eh ;# 
# 29030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON equ 0F6Fh ;# 
# 29122 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CIOCON equ 0F70h ;# 
# 29167 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
COMSTAT equ 0F71h ;# 
# 29262 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECANCON equ 0F72h ;# 
# 29339 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEDATA equ 0F73h ;# 
# 29359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEADR equ 0F74h ;# 
# 29379 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEADRH equ 0F75h ;# 
# 29399 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE5 equ 0F76h ;# 
# 29482 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR5 equ 0F77h ;# 
# 29565 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR5 equ 0F78h ;# 
# 29675 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG2 equ 0F79h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG2 equ 0F7Ah ;# 
# 29715 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG2 equ 0F7Bh ;# 
# 29735 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRGH2 equ 0F7Ch ;# 
# 29755 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRGH1 equ 0F7Dh ;# 
# 29775 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EECON2 equ 0F7Eh ;# 
# 29795 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EECON1 equ 0F7Fh ;# 
# 29861 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTA equ 0F80h ;# 
# 29940 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTB equ 0F81h ;# 
# 30011 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTC equ 0F82h ;# 
# 30097 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTE equ 0F84h ;# 
# 30136 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR4 equ 0F87h ;# 
# 30156 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T4CON equ 0F88h ;# 
# 30227 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATA equ 0F89h ;# 
# 30329 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATB equ 0F8Ah ;# 
# 30441 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATC equ 0F8Bh ;# 
# 30553 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SLRCON equ 0F90h ;# 
# 30585 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ODCON equ 0F91h ;# 
# 30647 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISA equ 0F92h ;# 
# 30704 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISB equ 0F93h ;# 
# 30766 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISC equ 0F94h ;# 
# 30828 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPTMRS equ 0F99h ;# 
# 30872 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
REFOCON equ 0F9Ah ;# 
# 30937 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCTUNE equ 0F9Bh ;# 
# 31007 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PSTR1CON equ 0F9Ch ;# 
# 31073 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE1 equ 0F9Dh ;# 
# 31144 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR1 equ 0F9Eh ;# 
# 31215 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR1 equ 0F9Fh ;# 
# 31286 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE2 equ 0FA0h ;# 
# 31340 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR2 equ 0FA1h ;# 
# 31394 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR2 equ 0FA2h ;# 
# 31448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE3 equ 0FA3h ;# 
# 31536 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR3 equ 0FA4h ;# 
# 31597 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR3 equ 0FA5h ;# 
# 31658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA2 equ 0FA6h ;# 
# 31794 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BAUDCON1 equ 0FA7h ;# 
# 31950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
HLVDCON equ 0FA8h ;# 
# 32020 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PR4 equ 0FA9h ;# 
# 32040 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T1GCON equ 0FAAh ;# 
# 32144 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA1 equ 0FABh ;# 
# 32149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA equ 0FABh ;# 
# 32482 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA1 equ 0FACh ;# 
# 32487 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA equ 0FACh ;# 
# 32770 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG1 equ 0FADh ;# 
# 32775 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG equ 0FADh ;# 
# 32808 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG1 equ 0FAEh ;# 
# 32813 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG equ 0FAEh ;# 
# 32846 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG1 equ 0FAFh ;# 
# 32851 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG equ 0FAFh ;# 
# 32884 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T3GCON equ 0FB0h ;# 
# 32988 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T3CON equ 0FB1h ;# 
# 33099 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3 equ 0FB2h ;# 
# 33106 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3L equ 0FB2h ;# 
# 33126 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3H equ 0FB3h ;# 
# 33146 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CMSTAT equ 0FB4h ;# 
# 33151 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CMSTATUS equ 0FB4h ;# 
# 33228 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CVRCON equ 0FB5h ;# 
# 33313 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE4 equ 0FB6h ;# 
# 33370 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR4 equ 0FB7h ;# 
# 33427 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR4 equ 0FB8h ;# 
# 33492 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BAUDCON2 equ 0FB9h ;# 
# 33624 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA2 equ 0FBAh ;# 
# 33751 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP1CON equ 0FBBh ;# 
# 33756 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1CON equ 0FBBh ;# 
# 33943 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1 equ 0FBCh ;# 
# 33950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1L equ 0FBCh ;# 
# 33970 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1H equ 0FBDh ;# 
# 33990 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1DEL equ 0FBEh ;# 
# 33995 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PWM1CON equ 0FBEh ;# 
# 34128 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1AS equ 0FBFh ;# 
# 34210 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON2 equ 0FC0h ;# 
# 34281 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON1 equ 0FC1h ;# 
# 34385 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON0 equ 0FC2h ;# 
# 34510 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRES equ 0FC3h ;# 
# 34517 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRESL equ 0FC3h ;# 
# 34537 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRESH equ 0FC4h ;# 
# 34557 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPCON2 equ 0FC5h ;# 
# 34652 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPCON1 equ 0FC6h ;# 
# 34722 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPSTAT equ 0FC7h ;# 
# 34954 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPADD equ 0FC8h ;# 
# 35024 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPBUF equ 0FC9h ;# 
# 35044 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T2CON equ 0FCAh ;# 
# 35115 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PR2 equ 0FCBh ;# 
# 35120 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MEMCON equ 0FCBh ;# 
# 35241 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR2 equ 0FCCh ;# 
# 35261 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T1CON equ 0FCDh ;# 
# 35363 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1 equ 0FCEh ;# 
# 35370 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1L equ 0FCEh ;# 
# 35390 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1H equ 0FCFh ;# 
# 35410 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCON equ 0FD0h ;# 
# 35563 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WDTCON equ 0FD1h ;# 
# 35623 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCCON2 equ 0FD2h ;# 
# 35695 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCCON equ 0FD3h ;# 
# 35772 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T0CON equ 0FD5h ;# 
# 35842 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0 equ 0FD6h ;# 
# 35849 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0L equ 0FD6h ;# 
# 35869 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0H equ 0FD7h ;# 
# 35889 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
STATUS equ 0FD8h ;# 
# 35960 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2 equ 0FD9h ;# 
# 35967 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2L equ 0FD9h ;# 
# 35987 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2H equ 0FDAh ;# 
# 36007 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW2 equ 0FDBh ;# 
# 36027 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC2 equ 0FDCh ;# 
# 36047 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC2 equ 0FDDh ;# 
# 36067 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC2 equ 0FDEh ;# 
# 36087 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF2 equ 0FDFh ;# 
# 36107 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BSR equ 0FE0h ;# 
# 36127 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1 equ 0FE1h ;# 
# 36134 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1L equ 0FE1h ;# 
# 36154 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1H equ 0FE2h ;# 
# 36174 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW1 equ 0FE3h ;# 
# 36194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC1 equ 0FE4h ;# 
# 36214 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC1 equ 0FE5h ;# 
# 36234 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC1 equ 0FE6h ;# 
# 36254 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF1 equ 0FE7h ;# 
# 36274 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WREG equ 0FE8h ;# 
# 36294 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0 equ 0FE9h ;# 
# 36301 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0L equ 0FE9h ;# 
# 36321 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0H equ 0FEAh ;# 
# 36341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW0 equ 0FEBh ;# 
# 36361 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC0 equ 0FECh ;# 
# 36381 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC0 equ 0FEDh ;# 
# 36401 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC0 equ 0FEEh ;# 
# 36421 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF0 equ 0FEFh ;# 
# 36441 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON3 equ 0FF0h ;# 
# 36553 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON2 equ 0FF1h ;# 
# 36646 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON equ 0FF2h ;# 
# 36651 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON1 equ 0FF2h ;# 
# 36878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PROD equ 0FF3h ;# 
# 36885 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PRODL equ 0FF3h ;# 
# 36905 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PRODH equ 0FF4h ;# 
# 36925 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TABLAT equ 0FF5h ;# 
# 36947 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTR equ 0FF6h ;# 
# 36954 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRL equ 0FF6h ;# 
# 36974 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRH equ 0FF7h ;# 
# 36994 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRU equ 0FF8h ;# 
# 37016 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLAT equ 0FF9h ;# 
# 37023 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PC equ 0FF9h ;# 
# 37030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCL equ 0FF9h ;# 
# 37050 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLATH equ 0FFAh ;# 
# 37070 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLATU equ 0FFBh ;# 
# 37090 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
STKPTR equ 0FFCh ;# 
# 37164 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOS equ 0FFDh ;# 
# 37171 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSL equ 0FFDh ;# 
# 37191 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSH equ 0FFEh ;# 
# 37211 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXERRCNT equ 0E41h ;# 
# 124 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXERRCNT equ 0E42h ;# 
# 194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON1 equ 0E43h ;# 
# 270 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON2 equ 0E44h ;# 
# 355 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON3 equ 0E45h ;# 
# 408 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFCON0 equ 0E46h ;# 
# 470 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFCON1 equ 0E47h ;# 
# 532 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6SIDH equ 0E48h ;# 
# 652 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6SIDL equ 0E49h ;# 
# 759 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6EIDH equ 0E4Ah ;# 
# 879 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6EIDL equ 0E4Bh ;# 
# 999 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7SIDH equ 0E4Ch ;# 
# 1119 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7SIDL equ 0E4Dh ;# 
# 1226 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7EIDH equ 0E4Eh ;# 
# 1346 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7EIDL equ 0E4Fh ;# 
# 1466 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8SIDH equ 0E50h ;# 
# 1586 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8SIDL equ 0E51h ;# 
# 1693 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8EIDH equ 0E52h ;# 
# 1813 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8EIDL equ 0E53h ;# 
# 1933 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9SIDH equ 0E54h ;# 
# 2053 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9SIDL equ 0E55h ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9EIDH equ 0E56h ;# 
# 2280 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9EIDL equ 0E57h ;# 
# 2400 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10SIDH equ 0E58h ;# 
# 2520 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10SIDL equ 0E59h ;# 
# 2627 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10EIDH equ 0E5Ah ;# 
# 2747 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10EIDL equ 0E5Bh ;# 
# 2867 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11SIDH equ 0E5Ch ;# 
# 2987 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11SIDL equ 0E5Dh ;# 
# 3094 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11EIDH equ 0E5Eh ;# 
# 3214 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11EIDL equ 0E5Fh ;# 
# 3334 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12SIDH equ 0E60h ;# 
# 3454 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12SIDL equ 0E61h ;# 
# 3561 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12EIDH equ 0E62h ;# 
# 3681 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12EIDL equ 0E63h ;# 
# 3801 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13SIDH equ 0E64h ;# 
# 3921 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13SIDL equ 0E65h ;# 
# 4028 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13EIDH equ 0E66h ;# 
# 4148 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13EIDL equ 0E67h ;# 
# 4268 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14SIDH equ 0E68h ;# 
# 4388 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14SIDL equ 0E69h ;# 
# 4495 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14EIDH equ 0E6Ah ;# 
# 4615 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14EIDL equ 0E6Bh ;# 
# 4735 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15SIDH equ 0E6Ch ;# 
# 4855 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15SIDL equ 0E6Dh ;# 
# 4962 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15EIDH equ 0E6Eh ;# 
# 5082 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15EIDL equ 0E6Fh ;# 
# 5202 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SDFLC equ 0E70h ;# 
# 5254 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON0 equ 0E71h ;# 
# 5338 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON1 equ 0E72h ;# 
# 5422 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON2 equ 0E73h ;# 
# 5506 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON3 equ 0E74h ;# 
# 5590 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON4 equ 0E75h ;# 
# 5674 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON5 equ 0E76h ;# 
# 5758 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON6 equ 0E77h ;# 
# 5842 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON7 equ 0E78h ;# 
# 5926 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL0 equ 0E79h ;# 
# 6014 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL1 equ 0E7Ah ;# 
# 6102 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL2 equ 0E7Bh ;# 
# 6190 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL3 equ 0E7Ch ;# 
# 6278 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BSEL0 equ 0E7Dh ;# 
# 6329 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BIE0 equ 0E7Eh ;# 
# 6405 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXBIE equ 0E7Fh ;# 
# 6459 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0CON equ 0E80h ;# 
# 6721 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0SIDH equ 0E81h ;# 
# 6841 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0SIDL equ 0E82h ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0EIDH equ 0E83h ;# 
# 7078 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0EIDL equ 0E84h ;# 
# 7198 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0DLC equ 0E85h ;# 
# 7327 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D0 equ 0E86h ;# 
# 7397 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D1 equ 0E87h ;# 
# 7467 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D2 equ 0E88h ;# 
# 7537 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D3 equ 0E89h ;# 
# 7607 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D4 equ 0E8Ah ;# 
# 7677 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D5 equ 0E8Bh ;# 
# 7747 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D6 equ 0E8Ch ;# 
# 7817 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D7 equ 0E8Dh ;# 
# 7887 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO9 equ 0E8Eh ;# 
# 7998 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO9 equ 0E8Fh ;# 
# 8090 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1CON equ 0E90h ;# 
# 8352 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1SIDH equ 0E91h ;# 
# 8472 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1SIDL equ 0E92h ;# 
# 8589 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1EIDH equ 0E93h ;# 
# 8709 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1EIDL equ 0E94h ;# 
# 8829 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1DLC equ 0E95h ;# 
# 8958 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D0 equ 0E96h ;# 
# 9028 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D1 equ 0E97h ;# 
# 9098 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D2 equ 0E98h ;# 
# 9168 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D3 equ 0E99h ;# 
# 9238 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D4 equ 0E9Ah ;# 
# 9308 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D5 equ 0E9Bh ;# 
# 9378 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D6 equ 0E9Ch ;# 
# 9448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D7 equ 0E9Dh ;# 
# 9518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO8 equ 0E9Eh ;# 
# 9629 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO8 equ 0E9Fh ;# 
# 9721 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2CON equ 0EA0h ;# 
# 9983 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2SIDH equ 0EA1h ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2SIDL equ 0EA2h ;# 
# 10229 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2EIDH equ 0EA3h ;# 
# 10349 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2EIDL equ 0EA4h ;# 
# 10469 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2DLC equ 0EA5h ;# 
# 10598 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D0 equ 0EA6h ;# 
# 10668 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D1 equ 0EA7h ;# 
# 10738 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D2 equ 0EA8h ;# 
# 10808 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D3 equ 0EA9h ;# 
# 10878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D4 equ 0EAAh ;# 
# 10948 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D5 equ 0EABh ;# 
# 11018 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D6 equ 0EACh ;# 
# 11088 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D7 equ 0EADh ;# 
# 11158 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO7 equ 0EAEh ;# 
# 11269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO7 equ 0EAFh ;# 
# 11361 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3CON equ 0EB0h ;# 
# 11623 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3SIDH equ 0EB1h ;# 
# 11743 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3SIDL equ 0EB2h ;# 
# 11869 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3EIDH equ 0EB3h ;# 
# 11989 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3EIDL equ 0EB4h ;# 
# 12109 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3DLC equ 0EB5h ;# 
# 12238 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D0 equ 0EB6h ;# 
# 12308 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D1 equ 0EB7h ;# 
# 12378 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D2 equ 0EB8h ;# 
# 12448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D3 equ 0EB9h ;# 
# 12518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D4 equ 0EBAh ;# 
# 12588 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D5 equ 0EBBh ;# 
# 12658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D6 equ 0EBCh ;# 
# 12728 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D7 equ 0EBDh ;# 
# 12798 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO6 equ 0EBEh ;# 
# 12909 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO6 equ 0EBFh ;# 
# 13001 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4CON equ 0EC0h ;# 
# 13263 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4SIDH equ 0EC1h ;# 
# 13383 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4SIDL equ 0EC2h ;# 
# 13509 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4EIDH equ 0EC3h ;# 
# 13629 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4EIDL equ 0EC4h ;# 
# 13749 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4DLC equ 0EC5h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D0 equ 0EC6h ;# 
# 13948 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D1 equ 0EC7h ;# 
# 14018 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D2 equ 0EC8h ;# 
# 14088 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D3 equ 0EC9h ;# 
# 14158 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D4 equ 0ECAh ;# 
# 14228 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D5 equ 0ECBh ;# 
# 14298 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D6 equ 0ECCh ;# 
# 14368 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D7 equ 0ECDh ;# 
# 14438 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO5 equ 0ECEh ;# 
# 14549 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO5 equ 0ECFh ;# 
# 14641 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5CON equ 0ED0h ;# 
# 14903 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5SIDH equ 0ED1h ;# 
# 15023 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5SIDL equ 0ED2h ;# 
# 15149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5EIDH equ 0ED3h ;# 
# 15269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5EIDL equ 0ED4h ;# 
# 15389 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5DLC equ 0ED5h ;# 
# 15518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D0 equ 0ED6h ;# 
# 15588 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D1 equ 0ED7h ;# 
# 15658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D2 equ 0ED8h ;# 
# 15728 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D3 equ 0ED9h ;# 
# 15798 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D4 equ 0EDAh ;# 
# 15868 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D5 equ 0EDBh ;# 
# 15938 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D6 equ 0EDCh ;# 
# 16008 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D7 equ 0EDDh ;# 
# 16078 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO4 equ 0EDEh ;# 
# 16189 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO4 equ 0EDFh ;# 
# 16281 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0SIDH equ 0EE0h ;# 
# 16401 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0SIDL equ 0EE1h ;# 
# 16508 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0EIDH equ 0EE2h ;# 
# 16628 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0EIDL equ 0EE3h ;# 
# 16748 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1SIDH equ 0EE4h ;# 
# 16868 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1SIDL equ 0EE5h ;# 
# 16975 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1EIDH equ 0EE6h ;# 
# 17095 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1EIDL equ 0EE7h ;# 
# 17215 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2SIDH equ 0EE8h ;# 
# 17335 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2SIDL equ 0EE9h ;# 
# 17442 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2EIDH equ 0EEAh ;# 
# 17562 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2EIDL equ 0EEBh ;# 
# 17682 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3SIDH equ 0EECh ;# 
# 17802 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3SIDL equ 0EEDh ;# 
# 17909 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3EIDH equ 0EEEh ;# 
# 18029 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3EIDL equ 0EEFh ;# 
# 18149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4SIDH equ 0EF0h ;# 
# 18269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4SIDL equ 0EF1h ;# 
# 18376 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4EIDH equ 0EF2h ;# 
# 18496 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4EIDL equ 0EF3h ;# 
# 18616 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5SIDH equ 0EF4h ;# 
# 18736 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5SIDL equ 0EF5h ;# 
# 18843 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5EIDH equ 0EF6h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5EIDL equ 0EF7h ;# 
# 19083 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0SIDH equ 0EF8h ;# 
# 19203 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0SIDL equ 0EF9h ;# 
# 19310 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0EIDH equ 0EFAh ;# 
# 19430 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0EIDL equ 0EFBh ;# 
# 19550 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1SIDH equ 0EFCh ;# 
# 19670 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1SIDL equ 0EFDh ;# 
# 19777 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1EIDH equ 0EFEh ;# 
# 19897 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1EIDL equ 0EFFh ;# 
# 20017 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2CON equ 0F00h ;# 
# 20127 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2SIDH equ 0F01h ;# 
# 20247 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2SIDL equ 0F02h ;# 
# 20359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2EIDH equ 0F03h ;# 
# 20479 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2EIDL equ 0F04h ;# 
# 20599 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2DLC equ 0F05h ;# 
# 20685 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D0 equ 0F06h ;# 
# 20755 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D1 equ 0F07h ;# 
# 20825 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D2 equ 0F08h ;# 
# 20895 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D3 equ 0F09h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D4 equ 0F0Ah ;# 
# 21035 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D5 equ 0F0Bh ;# 
# 21105 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D6 equ 0F0Ch ;# 
# 21175 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D7 equ 0F0Dh ;# 
# 21245 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO3 equ 0F0Eh ;# 
# 21356 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO3 equ 0F0Fh ;# 
# 21448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1CON equ 0F10h ;# 
# 21558 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1SIDH equ 0F11h ;# 
# 21678 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1SIDL equ 0F12h ;# 
# 21790 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1EIDH equ 0F13h ;# 
# 21910 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1EIDL equ 0F14h ;# 
# 22030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1DLC equ 0F15h ;# 
# 22116 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D0 equ 0F16h ;# 
# 22186 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D1 equ 0F17h ;# 
# 22256 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D2 equ 0F18h ;# 
# 22326 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D3 equ 0F19h ;# 
# 22396 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D4 equ 0F1Ah ;# 
# 22466 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D5 equ 0F1Bh ;# 
# 22536 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D6 equ 0F1Ch ;# 
# 22606 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D7 equ 0F1Dh ;# 
# 22676 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO2 equ 0F1Eh ;# 
# 22787 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO2 equ 0F1Fh ;# 
# 22879 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0CON equ 0F20h ;# 
# 22989 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0SIDH equ 0F21h ;# 
# 23109 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0SIDL equ 0F22h ;# 
# 23221 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0EIDH equ 0F23h ;# 
# 23341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0EIDL equ 0F24h ;# 
# 23461 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0DLC equ 0F25h ;# 
# 23547 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D0 equ 0F26h ;# 
# 23617 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D1 equ 0F27h ;# 
# 23687 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D2 equ 0F28h ;# 
# 23757 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D3 equ 0F29h ;# 
# 23827 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D4 equ 0F2Ah ;# 
# 23897 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D5 equ 0F2Bh ;# 
# 23967 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D6 equ 0F2Ch ;# 
# 24037 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D7 equ 0F2Dh ;# 
# 24107 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO1 equ 0F2Eh ;# 
# 24218 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO1 equ 0F2Fh ;# 
# 24310 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1CON equ 0F30h ;# 
# 24470 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1SIDH equ 0F31h ;# 
# 24590 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1SIDL equ 0F32h ;# 
# 24707 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1EIDH equ 0F33h ;# 
# 24827 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1EIDL equ 0F34h ;# 
# 24947 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1DLC equ 0F35h ;# 
# 25061 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D0 equ 0F36h ;# 
# 25131 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D1 equ 0F37h ;# 
# 25201 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D2 equ 0F38h ;# 
# 25271 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D3 equ 0F39h ;# 
# 25341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D4 equ 0F3Ah ;# 
# 25411 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D5 equ 0F3Bh ;# 
# 25481 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D6 equ 0F3Ch ;# 
# 25551 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D7 equ 0F3Dh ;# 
# 25621 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO0 equ 0F3Eh ;# 
# 25732 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO0 equ 0F3Fh ;# 
# 25824 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP5CON equ 0F47h ;# 
# 25903 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5 equ 0F48h ;# 
# 25910 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5L equ 0F48h ;# 
# 25930 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5H equ 0F49h ;# 
# 25950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP4CON equ 0F4Ah ;# 
# 26029 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4 equ 0F4Bh ;# 
# 26036 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4L equ 0F4Bh ;# 
# 26056 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4H equ 0F4Ch ;# 
# 26076 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP3CON equ 0F4Dh ;# 
# 26155 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3 equ 0F4Eh ;# 
# 26162 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3L equ 0F4Eh ;# 
# 26182 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3H equ 0F4Fh ;# 
# 26202 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP2CON equ 0F50h ;# 
# 26207 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP2CON equ 0F50h ;# 
# 26358 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2 equ 0F51h ;# 
# 26365 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2L equ 0F51h ;# 
# 26385 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2H equ 0F52h ;# 
# 26405 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUICON equ 0F53h ;# 
# 26481 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUCONL equ 0F54h ;# 
# 26559 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUCONH equ 0F55h ;# 
# 26616 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PADCFG1 equ 0F56h ;# 
# 26644 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD2 equ 0F57h ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD1 equ 0F58h ;# 
# 26746 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD0 equ 0F59h ;# 
# 26823 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IOCB equ 0F5Ah ;# 
# 26862 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WPUB equ 0F5Bh ;# 
# 26924 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ANCON1 equ 0F5Ch ;# 
# 26976 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ANCON0 equ 0F5Dh ;# 
# 27052 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM2CON equ 0F5Eh ;# 
# 27057 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM2CON1 equ 0F5Eh ;# 
# 27304 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM1CON equ 0F5Fh ;# 
# 27309 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM1CON1 equ 0F5Fh ;# 
# 27584 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0CON equ 0F60h ;# 
# 27768 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0SIDH equ 0F61h ;# 
# 27888 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0SIDL equ 0F62h ;# 
# 28005 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0EIDH equ 0F63h ;# 
# 28125 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0EIDL equ 0F64h ;# 
# 28245 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0DLC equ 0F65h ;# 
# 28359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D0 equ 0F66h ;# 
# 28429 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D1 equ 0F67h ;# 
# 28499 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D2 equ 0F68h ;# 
# 28569 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D3 equ 0F69h ;# 
# 28639 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D4 equ 0F6Ah ;# 
# 28709 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D5 equ 0F6Bh ;# 
# 28779 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D6 equ 0F6Ch ;# 
# 28849 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D7 equ 0F6Dh ;# 
# 28919 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT equ 0F6Eh ;# 
# 29030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON equ 0F6Fh ;# 
# 29122 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CIOCON equ 0F70h ;# 
# 29167 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
COMSTAT equ 0F71h ;# 
# 29262 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECANCON equ 0F72h ;# 
# 29339 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEDATA equ 0F73h ;# 
# 29359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEADR equ 0F74h ;# 
# 29379 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEADRH equ 0F75h ;# 
# 29399 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE5 equ 0F76h ;# 
# 29482 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR5 equ 0F77h ;# 
# 29565 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR5 equ 0F78h ;# 
# 29675 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG2 equ 0F79h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG2 equ 0F7Ah ;# 
# 29715 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG2 equ 0F7Bh ;# 
# 29735 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRGH2 equ 0F7Ch ;# 
# 29755 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRGH1 equ 0F7Dh ;# 
# 29775 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EECON2 equ 0F7Eh ;# 
# 29795 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EECON1 equ 0F7Fh ;# 
# 29861 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTA equ 0F80h ;# 
# 29940 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTB equ 0F81h ;# 
# 30011 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTC equ 0F82h ;# 
# 30097 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTE equ 0F84h ;# 
# 30136 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR4 equ 0F87h ;# 
# 30156 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T4CON equ 0F88h ;# 
# 30227 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATA equ 0F89h ;# 
# 30329 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATB equ 0F8Ah ;# 
# 30441 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATC equ 0F8Bh ;# 
# 30553 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SLRCON equ 0F90h ;# 
# 30585 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ODCON equ 0F91h ;# 
# 30647 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISA equ 0F92h ;# 
# 30704 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISB equ 0F93h ;# 
# 30766 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISC equ 0F94h ;# 
# 30828 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPTMRS equ 0F99h ;# 
# 30872 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
REFOCON equ 0F9Ah ;# 
# 30937 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCTUNE equ 0F9Bh ;# 
# 31007 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PSTR1CON equ 0F9Ch ;# 
# 31073 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE1 equ 0F9Dh ;# 
# 31144 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR1 equ 0F9Eh ;# 
# 31215 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR1 equ 0F9Fh ;# 
# 31286 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE2 equ 0FA0h ;# 
# 31340 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR2 equ 0FA1h ;# 
# 31394 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR2 equ 0FA2h ;# 
# 31448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE3 equ 0FA3h ;# 
# 31536 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR3 equ 0FA4h ;# 
# 31597 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR3 equ 0FA5h ;# 
# 31658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA2 equ 0FA6h ;# 
# 31794 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BAUDCON1 equ 0FA7h ;# 
# 31950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
HLVDCON equ 0FA8h ;# 
# 32020 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PR4 equ 0FA9h ;# 
# 32040 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T1GCON equ 0FAAh ;# 
# 32144 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA1 equ 0FABh ;# 
# 32149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA equ 0FABh ;# 
# 32482 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA1 equ 0FACh ;# 
# 32487 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA equ 0FACh ;# 
# 32770 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG1 equ 0FADh ;# 
# 32775 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG equ 0FADh ;# 
# 32808 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG1 equ 0FAEh ;# 
# 32813 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG equ 0FAEh ;# 
# 32846 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG1 equ 0FAFh ;# 
# 32851 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG equ 0FAFh ;# 
# 32884 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T3GCON equ 0FB0h ;# 
# 32988 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T3CON equ 0FB1h ;# 
# 33099 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3 equ 0FB2h ;# 
# 33106 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3L equ 0FB2h ;# 
# 33126 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3H equ 0FB3h ;# 
# 33146 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CMSTAT equ 0FB4h ;# 
# 33151 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CMSTATUS equ 0FB4h ;# 
# 33228 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CVRCON equ 0FB5h ;# 
# 33313 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE4 equ 0FB6h ;# 
# 33370 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR4 equ 0FB7h ;# 
# 33427 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR4 equ 0FB8h ;# 
# 33492 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BAUDCON2 equ 0FB9h ;# 
# 33624 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA2 equ 0FBAh ;# 
# 33751 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP1CON equ 0FBBh ;# 
# 33756 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1CON equ 0FBBh ;# 
# 33943 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1 equ 0FBCh ;# 
# 33950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1L equ 0FBCh ;# 
# 33970 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1H equ 0FBDh ;# 
# 33990 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1DEL equ 0FBEh ;# 
# 33995 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PWM1CON equ 0FBEh ;# 
# 34128 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1AS equ 0FBFh ;# 
# 34210 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON2 equ 0FC0h ;# 
# 34281 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON1 equ 0FC1h ;# 
# 34385 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON0 equ 0FC2h ;# 
# 34510 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRES equ 0FC3h ;# 
# 34517 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRESL equ 0FC3h ;# 
# 34537 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRESH equ 0FC4h ;# 
# 34557 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPCON2 equ 0FC5h ;# 
# 34652 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPCON1 equ 0FC6h ;# 
# 34722 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPSTAT equ 0FC7h ;# 
# 34954 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPADD equ 0FC8h ;# 
# 35024 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPBUF equ 0FC9h ;# 
# 35044 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T2CON equ 0FCAh ;# 
# 35115 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PR2 equ 0FCBh ;# 
# 35120 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MEMCON equ 0FCBh ;# 
# 35241 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR2 equ 0FCCh ;# 
# 35261 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T1CON equ 0FCDh ;# 
# 35363 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1 equ 0FCEh ;# 
# 35370 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1L equ 0FCEh ;# 
# 35390 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1H equ 0FCFh ;# 
# 35410 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCON equ 0FD0h ;# 
# 35563 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WDTCON equ 0FD1h ;# 
# 35623 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCCON2 equ 0FD2h ;# 
# 35695 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCCON equ 0FD3h ;# 
# 35772 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T0CON equ 0FD5h ;# 
# 35842 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0 equ 0FD6h ;# 
# 35849 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0L equ 0FD6h ;# 
# 35869 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0H equ 0FD7h ;# 
# 35889 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
STATUS equ 0FD8h ;# 
# 35960 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2 equ 0FD9h ;# 
# 35967 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2L equ 0FD9h ;# 
# 35987 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2H equ 0FDAh ;# 
# 36007 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW2 equ 0FDBh ;# 
# 36027 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC2 equ 0FDCh ;# 
# 36047 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC2 equ 0FDDh ;# 
# 36067 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC2 equ 0FDEh ;# 
# 36087 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF2 equ 0FDFh ;# 
# 36107 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BSR equ 0FE0h ;# 
# 36127 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1 equ 0FE1h ;# 
# 36134 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1L equ 0FE1h ;# 
# 36154 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1H equ 0FE2h ;# 
# 36174 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW1 equ 0FE3h ;# 
# 36194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC1 equ 0FE4h ;# 
# 36214 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC1 equ 0FE5h ;# 
# 36234 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC1 equ 0FE6h ;# 
# 36254 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF1 equ 0FE7h ;# 
# 36274 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WREG equ 0FE8h ;# 
# 36294 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0 equ 0FE9h ;# 
# 36301 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0L equ 0FE9h ;# 
# 36321 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0H equ 0FEAh ;# 
# 36341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW0 equ 0FEBh ;# 
# 36361 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC0 equ 0FECh ;# 
# 36381 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC0 equ 0FEDh ;# 
# 36401 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC0 equ 0FEEh ;# 
# 36421 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF0 equ 0FEFh ;# 
# 36441 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON3 equ 0FF0h ;# 
# 36553 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON2 equ 0FF1h ;# 
# 36646 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON equ 0FF2h ;# 
# 36651 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON1 equ 0FF2h ;# 
# 36878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PROD equ 0FF3h ;# 
# 36885 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PRODL equ 0FF3h ;# 
# 36905 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PRODH equ 0FF4h ;# 
# 36925 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TABLAT equ 0FF5h ;# 
# 36947 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTR equ 0FF6h ;# 
# 36954 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRL equ 0FF6h ;# 
# 36974 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRH equ 0FF7h ;# 
# 36994 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRU equ 0FF8h ;# 
# 37016 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLAT equ 0FF9h ;# 
# 37023 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PC equ 0FF9h ;# 
# 37030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCL equ 0FF9h ;# 
# 37050 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLATH equ 0FFAh ;# 
# 37070 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLATU equ 0FFBh ;# 
# 37090 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
STKPTR equ 0FFCh ;# 
# 37164 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOS equ 0FFDh ;# 
# 37171 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSL equ 0FFDh ;# 
# 37191 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSH equ 0FFEh ;# 
# 37211 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXERRCNT equ 0E41h ;# 
# 124 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXERRCNT equ 0E42h ;# 
# 194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON1 equ 0E43h ;# 
# 270 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON2 equ 0E44h ;# 
# 355 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BRGCON3 equ 0E45h ;# 
# 408 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFCON0 equ 0E46h ;# 
# 470 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFCON1 equ 0E47h ;# 
# 532 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6SIDH equ 0E48h ;# 
# 652 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6SIDL equ 0E49h ;# 
# 759 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6EIDH equ 0E4Ah ;# 
# 879 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF6EIDL equ 0E4Bh ;# 
# 999 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7SIDH equ 0E4Ch ;# 
# 1119 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7SIDL equ 0E4Dh ;# 
# 1226 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7EIDH equ 0E4Eh ;# 
# 1346 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF7EIDL equ 0E4Fh ;# 
# 1466 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8SIDH equ 0E50h ;# 
# 1586 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8SIDL equ 0E51h ;# 
# 1693 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8EIDH equ 0E52h ;# 
# 1813 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF8EIDL equ 0E53h ;# 
# 1933 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9SIDH equ 0E54h ;# 
# 2053 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9SIDL equ 0E55h ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9EIDH equ 0E56h ;# 
# 2280 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF9EIDL equ 0E57h ;# 
# 2400 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10SIDH equ 0E58h ;# 
# 2520 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10SIDL equ 0E59h ;# 
# 2627 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10EIDH equ 0E5Ah ;# 
# 2747 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF10EIDL equ 0E5Bh ;# 
# 2867 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11SIDH equ 0E5Ch ;# 
# 2987 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11SIDL equ 0E5Dh ;# 
# 3094 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11EIDH equ 0E5Eh ;# 
# 3214 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF11EIDL equ 0E5Fh ;# 
# 3334 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12SIDH equ 0E60h ;# 
# 3454 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12SIDL equ 0E61h ;# 
# 3561 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12EIDH equ 0E62h ;# 
# 3681 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF12EIDL equ 0E63h ;# 
# 3801 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13SIDH equ 0E64h ;# 
# 3921 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13SIDL equ 0E65h ;# 
# 4028 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13EIDH equ 0E66h ;# 
# 4148 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF13EIDL equ 0E67h ;# 
# 4268 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14SIDH equ 0E68h ;# 
# 4388 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14SIDL equ 0E69h ;# 
# 4495 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14EIDH equ 0E6Ah ;# 
# 4615 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF14EIDL equ 0E6Bh ;# 
# 4735 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15SIDH equ 0E6Ch ;# 
# 4855 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15SIDL equ 0E6Dh ;# 
# 4962 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15EIDH equ 0E6Eh ;# 
# 5082 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF15EIDL equ 0E6Fh ;# 
# 5202 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SDFLC equ 0E70h ;# 
# 5254 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON0 equ 0E71h ;# 
# 5338 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON1 equ 0E72h ;# 
# 5422 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON2 equ 0E73h ;# 
# 5506 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON3 equ 0E74h ;# 
# 5590 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON4 equ 0E75h ;# 
# 5674 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON5 equ 0E76h ;# 
# 5758 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON6 equ 0E77h ;# 
# 5842 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXFBCON7 equ 0E78h ;# 
# 5926 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL0 equ 0E79h ;# 
# 6014 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL1 equ 0E7Ah ;# 
# 6102 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL2 equ 0E7Bh ;# 
# 6190 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MSEL3 equ 0E7Ch ;# 
# 6278 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BSEL0 equ 0E7Dh ;# 
# 6329 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BIE0 equ 0E7Eh ;# 
# 6405 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXBIE equ 0E7Fh ;# 
# 6459 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0CON equ 0E80h ;# 
# 6721 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0SIDH equ 0E81h ;# 
# 6841 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0SIDL equ 0E82h ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0EIDH equ 0E83h ;# 
# 7078 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0EIDL equ 0E84h ;# 
# 7198 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0DLC equ 0E85h ;# 
# 7327 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D0 equ 0E86h ;# 
# 7397 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D1 equ 0E87h ;# 
# 7467 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D2 equ 0E88h ;# 
# 7537 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D3 equ 0E89h ;# 
# 7607 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D4 equ 0E8Ah ;# 
# 7677 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D5 equ 0E8Bh ;# 
# 7747 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D6 equ 0E8Ch ;# 
# 7817 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B0D7 equ 0E8Dh ;# 
# 7887 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO9 equ 0E8Eh ;# 
# 7998 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO9 equ 0E8Fh ;# 
# 8090 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1CON equ 0E90h ;# 
# 8352 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1SIDH equ 0E91h ;# 
# 8472 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1SIDL equ 0E92h ;# 
# 8589 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1EIDH equ 0E93h ;# 
# 8709 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1EIDL equ 0E94h ;# 
# 8829 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1DLC equ 0E95h ;# 
# 8958 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D0 equ 0E96h ;# 
# 9028 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D1 equ 0E97h ;# 
# 9098 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D2 equ 0E98h ;# 
# 9168 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D3 equ 0E99h ;# 
# 9238 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D4 equ 0E9Ah ;# 
# 9308 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D5 equ 0E9Bh ;# 
# 9378 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D6 equ 0E9Ch ;# 
# 9448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B1D7 equ 0E9Dh ;# 
# 9518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO8 equ 0E9Eh ;# 
# 9629 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO8 equ 0E9Fh ;# 
# 9721 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2CON equ 0EA0h ;# 
# 9983 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2SIDH equ 0EA1h ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2SIDL equ 0EA2h ;# 
# 10229 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2EIDH equ 0EA3h ;# 
# 10349 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2EIDL equ 0EA4h ;# 
# 10469 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2DLC equ 0EA5h ;# 
# 10598 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D0 equ 0EA6h ;# 
# 10668 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D1 equ 0EA7h ;# 
# 10738 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D2 equ 0EA8h ;# 
# 10808 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D3 equ 0EA9h ;# 
# 10878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D4 equ 0EAAh ;# 
# 10948 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D5 equ 0EABh ;# 
# 11018 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D6 equ 0EACh ;# 
# 11088 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B2D7 equ 0EADh ;# 
# 11158 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO7 equ 0EAEh ;# 
# 11269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO7 equ 0EAFh ;# 
# 11361 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3CON equ 0EB0h ;# 
# 11623 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3SIDH equ 0EB1h ;# 
# 11743 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3SIDL equ 0EB2h ;# 
# 11869 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3EIDH equ 0EB3h ;# 
# 11989 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3EIDL equ 0EB4h ;# 
# 12109 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3DLC equ 0EB5h ;# 
# 12238 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D0 equ 0EB6h ;# 
# 12308 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D1 equ 0EB7h ;# 
# 12378 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D2 equ 0EB8h ;# 
# 12448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D3 equ 0EB9h ;# 
# 12518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D4 equ 0EBAh ;# 
# 12588 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D5 equ 0EBBh ;# 
# 12658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D6 equ 0EBCh ;# 
# 12728 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B3D7 equ 0EBDh ;# 
# 12798 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO6 equ 0EBEh ;# 
# 12909 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO6 equ 0EBFh ;# 
# 13001 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4CON equ 0EC0h ;# 
# 13263 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4SIDH equ 0EC1h ;# 
# 13383 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4SIDL equ 0EC2h ;# 
# 13509 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4EIDH equ 0EC3h ;# 
# 13629 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4EIDL equ 0EC4h ;# 
# 13749 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4DLC equ 0EC5h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D0 equ 0EC6h ;# 
# 13948 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D1 equ 0EC7h ;# 
# 14018 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D2 equ 0EC8h ;# 
# 14088 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D3 equ 0EC9h ;# 
# 14158 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D4 equ 0ECAh ;# 
# 14228 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D5 equ 0ECBh ;# 
# 14298 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D6 equ 0ECCh ;# 
# 14368 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B4D7 equ 0ECDh ;# 
# 14438 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO5 equ 0ECEh ;# 
# 14549 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO5 equ 0ECFh ;# 
# 14641 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5CON equ 0ED0h ;# 
# 14903 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5SIDH equ 0ED1h ;# 
# 15023 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5SIDL equ 0ED2h ;# 
# 15149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5EIDH equ 0ED3h ;# 
# 15269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5EIDL equ 0ED4h ;# 
# 15389 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5DLC equ 0ED5h ;# 
# 15518 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D0 equ 0ED6h ;# 
# 15588 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D1 equ 0ED7h ;# 
# 15658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D2 equ 0ED8h ;# 
# 15728 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D3 equ 0ED9h ;# 
# 15798 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D4 equ 0EDAh ;# 
# 15868 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D5 equ 0EDBh ;# 
# 15938 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D6 equ 0EDCh ;# 
# 16008 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
B5D7 equ 0EDDh ;# 
# 16078 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO4 equ 0EDEh ;# 
# 16189 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO4 equ 0EDFh ;# 
# 16281 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0SIDH equ 0EE0h ;# 
# 16401 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0SIDL equ 0EE1h ;# 
# 16508 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0EIDH equ 0EE2h ;# 
# 16628 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF0EIDL equ 0EE3h ;# 
# 16748 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1SIDH equ 0EE4h ;# 
# 16868 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1SIDL equ 0EE5h ;# 
# 16975 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1EIDH equ 0EE6h ;# 
# 17095 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF1EIDL equ 0EE7h ;# 
# 17215 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2SIDH equ 0EE8h ;# 
# 17335 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2SIDL equ 0EE9h ;# 
# 17442 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2EIDH equ 0EEAh ;# 
# 17562 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF2EIDL equ 0EEBh ;# 
# 17682 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3SIDH equ 0EECh ;# 
# 17802 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3SIDL equ 0EEDh ;# 
# 17909 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3EIDH equ 0EEEh ;# 
# 18029 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF3EIDL equ 0EEFh ;# 
# 18149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4SIDH equ 0EF0h ;# 
# 18269 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4SIDL equ 0EF1h ;# 
# 18376 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4EIDH equ 0EF2h ;# 
# 18496 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF4EIDL equ 0EF3h ;# 
# 18616 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5SIDH equ 0EF4h ;# 
# 18736 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5SIDL equ 0EF5h ;# 
# 18843 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5EIDH equ 0EF6h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXF5EIDL equ 0EF7h ;# 
# 19083 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0SIDH equ 0EF8h ;# 
# 19203 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0SIDL equ 0EF9h ;# 
# 19310 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0EIDH equ 0EFAh ;# 
# 19430 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM0EIDL equ 0EFBh ;# 
# 19550 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1SIDH equ 0EFCh ;# 
# 19670 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1SIDL equ 0EFDh ;# 
# 19777 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1EIDH equ 0EFEh ;# 
# 19897 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXM1EIDL equ 0EFFh ;# 
# 20017 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2CON equ 0F00h ;# 
# 20127 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2SIDH equ 0F01h ;# 
# 20247 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2SIDL equ 0F02h ;# 
# 20359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2EIDH equ 0F03h ;# 
# 20479 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2EIDL equ 0F04h ;# 
# 20599 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2DLC equ 0F05h ;# 
# 20685 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D0 equ 0F06h ;# 
# 20755 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D1 equ 0F07h ;# 
# 20825 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D2 equ 0F08h ;# 
# 20895 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D3 equ 0F09h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D4 equ 0F0Ah ;# 
# 21035 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D5 equ 0F0Bh ;# 
# 21105 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D6 equ 0F0Ch ;# 
# 21175 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB2D7 equ 0F0Dh ;# 
# 21245 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO3 equ 0F0Eh ;# 
# 21356 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO3 equ 0F0Fh ;# 
# 21448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1CON equ 0F10h ;# 
# 21558 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1SIDH equ 0F11h ;# 
# 21678 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1SIDL equ 0F12h ;# 
# 21790 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1EIDH equ 0F13h ;# 
# 21910 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1EIDL equ 0F14h ;# 
# 22030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1DLC equ 0F15h ;# 
# 22116 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D0 equ 0F16h ;# 
# 22186 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D1 equ 0F17h ;# 
# 22256 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D2 equ 0F18h ;# 
# 22326 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D3 equ 0F19h ;# 
# 22396 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D4 equ 0F1Ah ;# 
# 22466 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D5 equ 0F1Bh ;# 
# 22536 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D6 equ 0F1Ch ;# 
# 22606 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB1D7 equ 0F1Dh ;# 
# 22676 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO2 equ 0F1Eh ;# 
# 22787 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO2 equ 0F1Fh ;# 
# 22879 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0CON equ 0F20h ;# 
# 22989 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0SIDH equ 0F21h ;# 
# 23109 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0SIDL equ 0F22h ;# 
# 23221 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0EIDH equ 0F23h ;# 
# 23341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0EIDL equ 0F24h ;# 
# 23461 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0DLC equ 0F25h ;# 
# 23547 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D0 equ 0F26h ;# 
# 23617 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D1 equ 0F27h ;# 
# 23687 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D2 equ 0F28h ;# 
# 23757 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D3 equ 0F29h ;# 
# 23827 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D4 equ 0F2Ah ;# 
# 23897 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D5 equ 0F2Bh ;# 
# 23967 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D6 equ 0F2Ch ;# 
# 24037 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXB0D7 equ 0F2Dh ;# 
# 24107 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO1 equ 0F2Eh ;# 
# 24218 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO1 equ 0F2Fh ;# 
# 24310 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1CON equ 0F30h ;# 
# 24470 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1SIDH equ 0F31h ;# 
# 24590 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1SIDL equ 0F32h ;# 
# 24707 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1EIDH equ 0F33h ;# 
# 24827 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1EIDL equ 0F34h ;# 
# 24947 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1DLC equ 0F35h ;# 
# 25061 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D0 equ 0F36h ;# 
# 25131 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D1 equ 0F37h ;# 
# 25201 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D2 equ 0F38h ;# 
# 25271 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D3 equ 0F39h ;# 
# 25341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D4 equ 0F3Ah ;# 
# 25411 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D5 equ 0F3Bh ;# 
# 25481 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D6 equ 0F3Ch ;# 
# 25551 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB1D7 equ 0F3Dh ;# 
# 25621 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT_RO0 equ 0F3Eh ;# 
# 25732 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON_RO0 equ 0F3Fh ;# 
# 25824 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP5CON equ 0F47h ;# 
# 25903 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5 equ 0F48h ;# 
# 25910 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5L equ 0F48h ;# 
# 25930 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR5H equ 0F49h ;# 
# 25950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP4CON equ 0F4Ah ;# 
# 26029 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4 equ 0F4Bh ;# 
# 26036 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4L equ 0F4Bh ;# 
# 26056 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR4H equ 0F4Ch ;# 
# 26076 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP3CON equ 0F4Dh ;# 
# 26155 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3 equ 0F4Eh ;# 
# 26162 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3L equ 0F4Eh ;# 
# 26182 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR3H equ 0F4Fh ;# 
# 26202 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP2CON equ 0F50h ;# 
# 26207 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP2CON equ 0F50h ;# 
# 26358 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2 equ 0F51h ;# 
# 26365 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2L equ 0F51h ;# 
# 26385 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR2H equ 0F52h ;# 
# 26405 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUICON equ 0F53h ;# 
# 26481 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUCONL equ 0F54h ;# 
# 26559 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CTMUCONH equ 0F55h ;# 
# 26616 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PADCFG1 equ 0F56h ;# 
# 26644 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD2 equ 0F57h ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD1 equ 0F58h ;# 
# 26746 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PMD0 equ 0F59h ;# 
# 26823 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IOCB equ 0F5Ah ;# 
# 26862 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WPUB equ 0F5Bh ;# 
# 26924 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ANCON1 equ 0F5Ch ;# 
# 26976 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ANCON0 equ 0F5Dh ;# 
# 27052 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM2CON equ 0F5Eh ;# 
# 27057 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM2CON1 equ 0F5Eh ;# 
# 27304 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM1CON equ 0F5Fh ;# 
# 27309 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CM1CON1 equ 0F5Fh ;# 
# 27584 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0CON equ 0F60h ;# 
# 27768 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0SIDH equ 0F61h ;# 
# 27888 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0SIDL equ 0F62h ;# 
# 28005 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0EIDH equ 0F63h ;# 
# 28125 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0EIDL equ 0F64h ;# 
# 28245 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0DLC equ 0F65h ;# 
# 28359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D0 equ 0F66h ;# 
# 28429 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D1 equ 0F67h ;# 
# 28499 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D2 equ 0F68h ;# 
# 28569 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D3 equ 0F69h ;# 
# 28639 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D4 equ 0F6Ah ;# 
# 28709 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D5 equ 0F6Bh ;# 
# 28779 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D6 equ 0F6Ch ;# 
# 28849 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RXB0D7 equ 0F6Dh ;# 
# 28919 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANSTAT equ 0F6Eh ;# 
# 29030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CANCON equ 0F6Fh ;# 
# 29122 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CIOCON equ 0F70h ;# 
# 29167 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
COMSTAT equ 0F71h ;# 
# 29262 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECANCON equ 0F72h ;# 
# 29339 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEDATA equ 0F73h ;# 
# 29359 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEADR equ 0F74h ;# 
# 29379 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EEADRH equ 0F75h ;# 
# 29399 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE5 equ 0F76h ;# 
# 29482 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR5 equ 0F77h ;# 
# 29565 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR5 equ 0F78h ;# 
# 29675 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG2 equ 0F79h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG2 equ 0F7Ah ;# 
# 29715 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG2 equ 0F7Bh ;# 
# 29735 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRGH2 equ 0F7Ch ;# 
# 29755 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRGH1 equ 0F7Dh ;# 
# 29775 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EECON2 equ 0F7Eh ;# 
# 29795 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
EECON1 equ 0F7Fh ;# 
# 29861 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTA equ 0F80h ;# 
# 29940 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTB equ 0F81h ;# 
# 30011 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTC equ 0F82h ;# 
# 30097 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PORTE equ 0F84h ;# 
# 30136 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR4 equ 0F87h ;# 
# 30156 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T4CON equ 0F88h ;# 
# 30227 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATA equ 0F89h ;# 
# 30329 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATB equ 0F8Ah ;# 
# 30441 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
LATC equ 0F8Bh ;# 
# 30553 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SLRCON equ 0F90h ;# 
# 30585 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ODCON equ 0F91h ;# 
# 30647 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISA equ 0F92h ;# 
# 30704 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISB equ 0F93h ;# 
# 30766 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TRISC equ 0F94h ;# 
# 30828 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPTMRS equ 0F99h ;# 
# 30872 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
REFOCON equ 0F9Ah ;# 
# 30937 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCTUNE equ 0F9Bh ;# 
# 31007 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PSTR1CON equ 0F9Ch ;# 
# 31073 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE1 equ 0F9Dh ;# 
# 31144 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR1 equ 0F9Eh ;# 
# 31215 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR1 equ 0F9Fh ;# 
# 31286 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE2 equ 0FA0h ;# 
# 31340 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR2 equ 0FA1h ;# 
# 31394 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR2 equ 0FA2h ;# 
# 31448 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE3 equ 0FA3h ;# 
# 31536 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR3 equ 0FA4h ;# 
# 31597 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR3 equ 0FA5h ;# 
# 31658 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA2 equ 0FA6h ;# 
# 31794 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BAUDCON1 equ 0FA7h ;# 
# 31950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
HLVDCON equ 0FA8h ;# 
# 32020 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PR4 equ 0FA9h ;# 
# 32040 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T1GCON equ 0FAAh ;# 
# 32144 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA1 equ 0FABh ;# 
# 32149 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCSTA equ 0FABh ;# 
# 32482 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA1 equ 0FACh ;# 
# 32487 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA equ 0FACh ;# 
# 32770 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG1 equ 0FADh ;# 
# 32775 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXREG equ 0FADh ;# 
# 32808 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG1 equ 0FAEh ;# 
# 32813 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCREG equ 0FAEh ;# 
# 32846 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG1 equ 0FAFh ;# 
# 32851 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SPBRG equ 0FAFh ;# 
# 32884 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T3GCON equ 0FB0h ;# 
# 32988 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T3CON equ 0FB1h ;# 
# 33099 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3 equ 0FB2h ;# 
# 33106 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3L equ 0FB2h ;# 
# 33126 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR3H equ 0FB3h ;# 
# 33146 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CMSTAT equ 0FB4h ;# 
# 33151 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CMSTATUS equ 0FB4h ;# 
# 33228 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CVRCON equ 0FB5h ;# 
# 33313 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIE4 equ 0FB6h ;# 
# 33370 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PIR4 equ 0FB7h ;# 
# 33427 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
IPR4 equ 0FB8h ;# 
# 33492 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BAUDCON2 equ 0FB9h ;# 
# 33624 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TXSTA2 equ 0FBAh ;# 
# 33751 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCP1CON equ 0FBBh ;# 
# 33756 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1CON equ 0FBBh ;# 
# 33943 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1 equ 0FBCh ;# 
# 33950 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1L equ 0FBCh ;# 
# 33970 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
CCPR1H equ 0FBDh ;# 
# 33990 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1DEL equ 0FBEh ;# 
# 33995 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PWM1CON equ 0FBEh ;# 
# 34128 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ECCP1AS equ 0FBFh ;# 
# 34210 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON2 equ 0FC0h ;# 
# 34281 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON1 equ 0FC1h ;# 
# 34385 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADCON0 equ 0FC2h ;# 
# 34510 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRES equ 0FC3h ;# 
# 34517 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRESL equ 0FC3h ;# 
# 34537 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
ADRESH equ 0FC4h ;# 
# 34557 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPCON2 equ 0FC5h ;# 
# 34652 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPCON1 equ 0FC6h ;# 
# 34722 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPSTAT equ 0FC7h ;# 
# 34954 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPADD equ 0FC8h ;# 
# 35024 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
SSPBUF equ 0FC9h ;# 
# 35044 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T2CON equ 0FCAh ;# 
# 35115 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PR2 equ 0FCBh ;# 
# 35120 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
MEMCON equ 0FCBh ;# 
# 35241 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR2 equ 0FCCh ;# 
# 35261 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T1CON equ 0FCDh ;# 
# 35363 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1 equ 0FCEh ;# 
# 35370 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1L equ 0FCEh ;# 
# 35390 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR1H equ 0FCFh ;# 
# 35410 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
RCON equ 0FD0h ;# 
# 35563 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WDTCON equ 0FD1h ;# 
# 35623 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCCON2 equ 0FD2h ;# 
# 35695 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
OSCCON equ 0FD3h ;# 
# 35772 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
T0CON equ 0FD5h ;# 
# 35842 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0 equ 0FD6h ;# 
# 35849 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0L equ 0FD6h ;# 
# 35869 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TMR0H equ 0FD7h ;# 
# 35889 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
STATUS equ 0FD8h ;# 
# 35960 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2 equ 0FD9h ;# 
# 35967 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2L equ 0FD9h ;# 
# 35987 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR2H equ 0FDAh ;# 
# 36007 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW2 equ 0FDBh ;# 
# 36027 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC2 equ 0FDCh ;# 
# 36047 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC2 equ 0FDDh ;# 
# 36067 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC2 equ 0FDEh ;# 
# 36087 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF2 equ 0FDFh ;# 
# 36107 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
BSR equ 0FE0h ;# 
# 36127 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1 equ 0FE1h ;# 
# 36134 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1L equ 0FE1h ;# 
# 36154 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR1H equ 0FE2h ;# 
# 36174 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW1 equ 0FE3h ;# 
# 36194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC1 equ 0FE4h ;# 
# 36214 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC1 equ 0FE5h ;# 
# 36234 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC1 equ 0FE6h ;# 
# 36254 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF1 equ 0FE7h ;# 
# 36274 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
WREG equ 0FE8h ;# 
# 36294 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0 equ 0FE9h ;# 
# 36301 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0L equ 0FE9h ;# 
# 36321 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
FSR0H equ 0FEAh ;# 
# 36341 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PLUSW0 equ 0FEBh ;# 
# 36361 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PREINC0 equ 0FECh ;# 
# 36381 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTDEC0 equ 0FEDh ;# 
# 36401 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
POSTINC0 equ 0FEEh ;# 
# 36421 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INDF0 equ 0FEFh ;# 
# 36441 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON3 equ 0FF0h ;# 
# 36553 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON2 equ 0FF1h ;# 
# 36646 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON equ 0FF2h ;# 
# 36651 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
INTCON1 equ 0FF2h ;# 
# 36878 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PROD equ 0FF3h ;# 
# 36885 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PRODL equ 0FF3h ;# 
# 36905 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PRODH equ 0FF4h ;# 
# 36925 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TABLAT equ 0FF5h ;# 
# 36947 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTR equ 0FF6h ;# 
# 36954 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRL equ 0FF6h ;# 
# 36974 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRH equ 0FF7h ;# 
# 36994 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TBLPTRU equ 0FF8h ;# 
# 37016 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLAT equ 0FF9h ;# 
# 37023 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PC equ 0FF9h ;# 
# 37030 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCL equ 0FF9h ;# 
# 37050 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLATH equ 0FFAh ;# 
# 37070 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
PCLATU equ 0FFBh ;# 
# 37090 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
STKPTR equ 0FFCh ;# 
# 37164 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOS equ 0FFDh ;# 
# 37171 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSL equ 0FFDh ;# 
# 37191 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSH equ 0FFEh ;# 
# 37211 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic18f25k80.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_sinus_60
	FNCALL	_sinus_60,_out_dig
	FNCALL	_SYSTEM_Initialize,_OSCILLATOR_Initialize
	FNCALL	_SYSTEM_Initialize,_PIN_MANAGER_Initialize
	FNROOT	_main
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"main.c"
	line	32
	global	_tri
_tri:
	db	low(09h)
	db	low(011h)
	db	low(01Ah)
	db	low(022h)
	db	low(02Bh)
	db	low(033h)
	db	low(03Ch)
	db	low(044h)
	db	low(04Dh)
	db	low(055h)
	db	low(05Eh)
	db	low(066h)
	db	low(06Fh)
	db	low(077h)
	db	low(080h)
	db	low(088h)
	db	low(091h)
	db	low(099h)
	db	low(0A2h)
	db	low(0AAh)
	db	low(0B3h)
	db	low(0BBh)
	db	low(0C4h)
	db	low(0CCh)
	db	low(0D5h)
	db	low(0DDh)
	db	low(0E6h)
	db	low(0EEh)
	db	low(0F7h)
	db	low(0FFh)
	db	low(0F7h)
	db	low(0EEh)
	db	low(0E6h)
	db	low(0DDh)
	db	low(0D5h)
	db	low(0CCh)
	db	low(0C4h)
	db	low(0BBh)
	db	low(0B3h)
	db	low(0AAh)
	db	low(0A2h)
	db	low(099h)
	db	low(091h)
	db	low(088h)
	db	low(080h)
	db	low(077h)
	db	low(06Fh)
	db	low(066h)
	db	low(05Eh)
	db	low(056h)
	db	low(04Dh)
	db	low(044h)
	db	low(03Ch)
	db	low(033h)
	db	low(02Bh)
	db	low(022h)
	db	low(01Ah)
	db	low(011h)
	db	low(09h)
	db	low(0)
	global __end_of_tri
__end_of_tri:
psect	smallconst
	file	"main.c"
	line	24
	global	_car
_car:
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	global __end_of_car
__end_of_car:
	global	_sin
psect	smallconst
	file	"main.c"
	line	16
_sin:
	db	low(0FEh)
	db	low(0FEh)
	db	low(0FCh)
	db	low(0F9h)
	db	low(0F4h)
	db	low(0EEh)
	db	low(0E7h)
	db	low(0DEh)
	db	low(0D5h)
	db	low(0CAh)
	db	low(0BFh)
	db	low(0B3h)
	db	low(0A7h)
	db	low(09Ah)
	db	low(08Dh)
	db	low(07Fh)
	db	low(072h)
	db	low(065h)
	db	low(058h)
	db	low(04Ch)
	db	low(040h)
	db	low(035h)
	db	low(02Ah)
	db	low(021h)
	db	low(018h)
	db	low(011h)
	db	low(0Bh)
	db	low(06h)
	db	low(03h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(03h)
	db	low(06h)
	db	low(0Bh)
	db	low(011h)
	db	low(018h)
	db	low(021h)
	db	low(02Ah)
	db	low(035h)
	db	low(040h)
	db	low(04Ch)
	db	low(058h)
	db	low(065h)
	db	low(072h)
	db	low(080h)
	db	low(08Dh)
	db	low(09Ah)
	db	low(0A7h)
	db	low(0B3h)
	db	low(0BFh)
	db	low(0CAh)
	db	low(0D5h)
	db	low(0DEh)
	db	low(0E7h)
	db	low(0EEh)
	db	low(0F4h)
	db	low(0F9h)
	db	low(0FCh)
	db	low(0FEh)
	global __end_of_sin
__end_of_sin:
	global	_sin
	global	_LATAbits
_LATAbits	set	0xF89
	global	_WPUB
_WPUB	set	0xF5B
	global	_ANCON1
_ANCON1	set	0xF5C
	global	_ANCON0
_ANCON0	set	0xF5D
	global	_LATA
_LATA	set	0xF89
	global	_REFOCON
_REFOCON	set	0xF9A
	global	_OSCTUNE
_OSCTUNE	set	0xF9B
	global	_OSCCON2
_OSCCON2	set	0xFD2
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_SSPCON1bits
_SSPCON1bits	set	0xFC6
	global	_TRISA
_TRISA	set	0xF92
	global	_LATC
_LATC	set	0xF8B
	global	_LATB
_LATB	set	0xF8A
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISB
_TRISB	set	0xF93
	global	_INTCONbits
_INTCONbits	set	0xFF2
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config RETEN = "OFF"
	config INTOSCSEL = "HIGH"
	config SOSCSEL = "DIG"
	config XINST = "OFF"
	config FOSC = "HS2"
	config PLLCFG = "OFF"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRTEN = "OFF"
	config BOREN = "SBORDIS"
	config BORV = "3"
	config BORPWR = "ZPBORMV"
	config WDTEN = "OFF"
	config WDTPS = "1048576"
	config CANMX = "PORTB"
	config MSSPMSK = "MSK7"
	config MCLRE = "ON"
	config STVREN = "ON"
	config BBSIZ = "BB2K"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CP2 = "OFF"
	config CP3 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRT2 = "OFF"
	config WRT3 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config WRTD = "OFF"
	config EBTR0 = "OFF"
	config EBTR1 = "OFF"
	config EBTR2 = "OFF"
	config EBTR3 = "OFF"
	config EBTRB = "OFF"
	file	"dist/default/debug\TP3.X.debug.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
??_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
?_OSCILLATOR_Initialize:	; 1 bytes @ 0x0
??_OSCILLATOR_Initialize:	; 1 bytes @ 0x0
?_sinus_60:	; 1 bytes @ 0x0
??_sinus_60:	; 1 bytes @ 0x0
?_out_dig:	; 1 bytes @ 0x0
??_out_dig:	; 1 bytes @ 0x0
?_SYSTEM_Initialize:	; 1 bytes @ 0x0
??_SYSTEM_Initialize:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
out_dig@x:	; 1 bytes @ 0x0
	ds   1
	global	sinus_60@i
sinus_60@i:	; 1 bytes @ 0x1
	ds   1
??_main:	; 1 bytes @ 0x2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    180
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      2       2
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK10          256      0       0
;!    BANK14           65      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_sinus_60
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0      45
;!                  _SYSTEM_Initialize
;!                           _sinus_60
;! ---------------------------------------------------------------------------------
;! (1) _sinus_60                                             2     2      0      45
;!                                              0 COMRAM     2     2      0
;!                            _out_dig
;! ---------------------------------------------------------------------------------
;! (2) _out_dig                                              1     1      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0       0
;!              _OSCILLATOR_Initialize
;!             _PIN_MANAGER_Initialize
;! ---------------------------------------------------------------------------------
;! (2) _PIN_MANAGER_Initialize                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _OSCILLATOR_Initialize                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _SYSTEM_Initialize
;!     _OSCILLATOR_Initialize
;!     _PIN_MANAGER_Initialize
;!   _sinus_60
;!     _out_dig
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             400      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      2       2       1        2.1%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BANK5              100      0       0      14        0.0%
;!BANK6              100      0       0      15        0.0%
;!BANK7              100      0       0      16        0.0%
;!BANK8              100      0       0      17        0.0%
;!BITBANK9           100      0       0      18        0.0%
;!BANK9              100      0       0      19        0.0%
;!BANK11             100      0       0      20        0.0%
;!BANK12             100      0       0      21        0.0%
;!BANK13             100      0       0      22        0.0%
;!BITBIGSFRhh          D      0       0      23        0.0%
;!BITBIGSFRhl         1D      0       0      24        0.0%
;!BITBIGSFRlhh         B      0       0      25        0.0%
;!BITBIGSFRlhl        2A      0       0      26        0.0%
;!BITBIGSFRllhh        5      0       0      27        0.0%
;!BITBIGSFRllhl        6      0       0      28        0.0%
;!BITBIGSFRlllh       2B      0       0      29        0.0%
;!BITBIGSFRllll      11A      0       0      30        0.0%
;!ABS                  0      0       0      31        0.0%
;!BITBANK5           100      0       0      32        0.0%
;!BITBANK6           100      0       0      33        0.0%
;!BITBANK7           100      0       0      34        0.0%
;!BITBANK8           100      0       0      35        0.0%
;!BITBANK10          100      0       0      36        0.0%
;!BANK10             100      0       0      37        0.0%
;!BITBANK11          100      0       0      38        0.0%
;!BITBANK12          100      0       0      39        0.0%
;!BITBANK13          100      0       0      40        0.0%
;!BITBANK14           41      0       0      41        0.0%
;!BANK14              41      0       0      42        0.0%
;!BIGRAM             E40      0       0      43        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 47 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tension         4    0        float 
;;  lecture         1    0        unsigned char 
;;  valeur          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK11  BANK12  BANK13  BANK10  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SYSTEM_Initialize
;;		_sinus_60
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	line	47
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	47
	
_main:
;incstack = 0
	callstack 29
	line	52
	
l791:
;main.c: 49:     uint8_t valeur, lecture;;main.c: 50:     float tension;;main.c: 52:     SYSTEM_Initialize();
	call	_SYSTEM_Initialize	;wreg free
	line	60
	
l793:
;main.c: 60:     SSPCON1bits.SSPEN = 1;
	bsf	((c:4038))^0f00h,c,5	;volatile
	line	61
	
l795:
	bsf	((c:3977))^0f00h,c,5	;volatile
	line	96
	
l797:
;main.c: 64:     {;main.c: 96:         sinus_60();
	call	_sinus_60	;wreg free
	goto	l797
	global	start
	goto	start
	callstack 0
	line	101
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sinus_60

;; *************** function _sinus_60 *****************
;; Defined at:
;;		line 122 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK11  BANK12  BANK13  BANK10  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_out_dig
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	122
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	122
	
_sinus_60:
;incstack = 0
	callstack 29
	line	124
;main.c: 123:     uint8_t i;;main.c: 124:     while(1) {
	
l77:
	line	125
	
l775:
;main.c: 125:         for (i=0;i<60;i++) {
	movlw	low(0)
	movwf	((c:sinus_60@i))^00h,c
	line	126
	
l781:
;main.c: 126:             out_dig(sin[i]);
	movf	((c:sinus_60@i))^00h,c,w
	addlw	low(_sin)
	movwf	(??_sinus_60+0+0)^00h,c
	movff	(??_sinus_60+0+0),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_out_dig
	line	127
	
l783:
;main.c: 127:    _delay((unsigned long)((1)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw	7
movwf	(??_sinus_60+0+0)^00h,c
	movlw	125
u27:
decfsz	wreg,f
	bra	u27
	decfsz	(??_sinus_60+0+0)^00h,c,f
	bra	u27
	nop
asmopt pop

	line	128
	
l785:
;main.c: 128:             }
	incf	((c:sinus_60@i))^00h,c
	
l787:
		movlw	03Ch-1
	cpfsgt	((c:sinus_60@i))^00h,c
	goto	u11
	goto	u10

u11:
	goto	l781
u10:
	goto	l77
	return	;funcret
	callstack 0
	line	130
GLOBAL	__end_of_sinus_60
	__end_of_sinus_60:
	signat	_sinus_60,89
	global	_out_dig

;; *************** function _out_dig *****************
;; Defined at:
;;		line 136 in file "main.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK11  BANK12  BANK13  BANK10  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sinus_60
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	136
global __ptext2
__ptext2:
psect	text2
	file	"main.c"
	line	136
	
_out_dig:
;incstack = 0
	callstack 29
	line	138
;main.c: 136: void out_dig(uint8_t x);main.c: 137: {;main.c: 138:  do { LATAbits.LATA5 = 0; } while(0);
	
l85:
	bcf	((c:3977))^0f00h,c,5	;volatile
	line	143
	
l87:
	return	;funcret
	callstack 0
GLOBAL	__end_of_out_dig
	__end_of_out_dig:
	signat	_out_dig,4217
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 50 in file "mcc_generated_files/mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK11  BANK12  BANK13  BANK10  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_OSCILLATOR_Initialize
;;		_PIN_MANAGER_Initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/mcc.c"
	line	50
global __ptext3
__ptext3:
psect	text3
	file	"mcc_generated_files/mcc.c"
	line	50
	
_SYSTEM_Initialize:
;incstack = 0
	callstack 29
	line	53
	
l773:
;mcc_generated_files/mcc.c: 53:     PIN_MANAGER_Initialize();
	call	_PIN_MANAGER_Initialize	;wreg free
	line	54
;mcc_generated_files/mcc.c: 54:     OSCILLATOR_Initialize();
	call	_OSCILLATOR_Initialize	;wreg free
	line	55
	
l15:
	return	;funcret
	callstack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,89
	global	_PIN_MANAGER_Initialize

;; *************** function _PIN_MANAGER_Initialize *****************
;; Defined at:
;;		line 55 in file "mcc_generated_files/pin_manager.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK11  BANK12  BANK13  BANK10  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/pin_manager.c"
	line	55
global __ptext4
__ptext4:
psect	text4
	file	"mcc_generated_files/pin_manager.c"
	line	55
	
_PIN_MANAGER_Initialize:
;incstack = 0
	callstack 29
	line	60
	
l763:
;mcc_generated_files/pin_manager.c: 60:     LATA = 0x00;
	movlw	low(0)
	movwf	((c:3977))^0f00h,c	;volatile
	line	61
;mcc_generated_files/pin_manager.c: 61:     LATB = 0x00;
	movlw	low(0)
	movwf	((c:3978))^0f00h,c	;volatile
	line	62
;mcc_generated_files/pin_manager.c: 62:     LATC = 0x00;
	movlw	low(0)
	movwf	((c:3979))^0f00h,c	;volatile
	line	67
;mcc_generated_files/pin_manager.c: 67:     TRISA = 0xCF;
	movlw	low(0CFh)
	movwf	((c:3986))^0f00h,c	;volatile
	line	68
	
l765:
;mcc_generated_files/pin_manager.c: 68:     TRISB = 0xFF;
	setf	((c:3987))^0f00h,c	;volatile
	line	69
	
l767:
;mcc_generated_files/pin_manager.c: 69:     TRISC = 0xFF;
	setf	((c:3988))^0f00h,c	;volatile
	line	74
;mcc_generated_files/pin_manager.c: 74:     ANCON0 = 0x1F;
	movlw	low(01Fh)
	movlb	15	; () banked
	movwf	((3933))&0ffh	;volatile
	line	75
;mcc_generated_files/pin_manager.c: 75:     ANCON1 = 0x07;
	movlw	low(07h)
	movwf	((3932))&0ffh	;volatile
	line	80
;mcc_generated_files/pin_manager.c: 80:     WPUB = 0x00;
	movlw	low(0)
	movwf	((3931))&0ffh	;volatile
	line	81
	
l769:; BSR set to: 15

;mcc_generated_files/pin_manager.c: 81:     INTCON2bits.nRBPU = 1;
	bsf	((c:4081))^0f00h,c,7	;volatile
	line	90
	
l43:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_PIN_MANAGER_Initialize
	__end_of_PIN_MANAGER_Initialize:
	signat	_PIN_MANAGER_Initialize,89
	global	_OSCILLATOR_Initialize

;; *************** function _OSCILLATOR_Initialize *****************
;; Defined at:
;;		line 57 in file "mcc_generated_files/mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK11  BANK12  BANK13  BANK10  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/mcc.c"
	line	57
global __ptext5
__ptext5:
psect	text5
	file	"mcc_generated_files/mcc.c"
	line	57
	
_OSCILLATOR_Initialize:; BSR set to: 15

;incstack = 0
	callstack 29
	line	60
	
l771:
;mcc_generated_files/mcc.c: 60:     OSCCON = 0x60;
	movlw	low(060h)
	movwf	((c:4051))^0f00h,c	;volatile
	line	62
;mcc_generated_files/mcc.c: 62:     OSCCON2 = 0x00;
	movlw	low(0)
	movwf	((c:4050))^0f00h,c	;volatile
	line	64
;mcc_generated_files/mcc.c: 64:     OSCTUNE = 0x00;
	movlw	low(0)
	movwf	((c:3995))^0f00h,c	;volatile
	line	66
;mcc_generated_files/mcc.c: 66:     REFOCON = 0x00;
	movlw	low(0)
	movwf	((c:3994))^0f00h,c	;volatile
	line	67
	
l18:
	return	;funcret
	callstack 0
GLOBAL	__end_of_OSCILLATOR_Initialize
	__end_of_OSCILLATOR_Initialize:
	signat	_OSCILLATOR_Initialize,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
