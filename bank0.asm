	*=$C000
reset:
	ldy data - data_e + 1 
	ldx #$FF
load_loop:

	inx 
	dey
	lda data,X
	sta $8000
	inx
	dey
	lda data,X
	sta $8001
	cpy #0
	bne load_loop


note_loop:
	
	lda #$28	
	sta $8000
	lda #$F0	
	sta $8001

	ldx #$FF
loop1:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dex
	bne loop1

	lda #$28	
	sta $8000
	lda #$00	
	sta $8001


	ldx #$FF
loop2:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dex
	bne loop2

	jmp note_loop

data:
	.byte $22,	0 	;LFO off
	.byte $27, 	0 	;Channel 3 mode normal
	.byte $28,	0 	;All channels off
	.byte $2B, 	0 	;DAC off
	.byte $30, 	$71 	;DT1/MUL
	.byte $34, 	$0D
	.byte $38, 	$33
	.byte $3C, 	$01
	.byte $40, 	$23 	;Total Level
	.byte $44, 	$2D
	.byte $48, 	$26
	.byte $4C, 	$00
	.byte $50, 	$5F 	;RS/AR
	.byte $54, 	$99
	.byte $58, 	$5F
	.byte $5C, 	$94
	.byte $60, 	5 	;AM/D1R
	.byte $64, 	5
	.byte $68, 	5
	.byte $6C, 	7
	.byte $70, 	2 	;D2R
	.byte $74, 	2
	.byte $78, 	2
	.byte $7C, 	2
	.byte $80, 	$11 	;D1L/RR
	.byte $84, 	$11
	.byte $88, 	$11
	.byte $8C, 	$A6
	.byte $90, 	0 	;Proprietary
	.byte $94, 	0
	.byte $98, 	0
	.byte $9C, 	0
	.byte $B0, 	$32 	;Feedback/algorithm
	.byte $B4, 	$C0 	;Both speakers on
	.byte $28, 	$00 	;Key off
	.byte $A4, 	$22 	;Set frequency
data_e:	.byte $A0, 	$69









end_code:
	*=$FFFC
	.dsb (*-end_code), 0
	*=$FFFC
	.word reset
	.word reset
