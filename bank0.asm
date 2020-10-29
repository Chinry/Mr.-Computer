	*=$C000
reset:

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
	lda #%10010111
	sta $A000
	nop
	nop
	nop
	nop
	nop
	nop
	lda #%10010101
	sta $A000


	ldy #0
	lda #$02
	sta $01
	lda #0
	sta $00


loop:
	lda $A000
	and #$80
	beq loop
	lda $A001
	cmp #$03
	bne loop

loop2:
	lda $A000
	and #$80
	beq loop2
	lda $A001
	cmp #$03
	beq will_end
	sta ($00),Y
	iny
	bne loop2
	inc $01
	jmp loop2


will_end
	tax
	lda $A000
	and #$80
	beq will_end
	lda $A001
	cmp #$03
	beq run_code
	sta $02
	txa 

	sta ($00),Y
	iny
	bne carry1
	inc $01
carry1:

	lda $02

	sta ($00),Y
	iny
	bne carry2
	inc $01
carry2:


run_code:
	jmp $0200





end_code:
	*=$FFFC
	.dsb (*-end_code), 0
	*=$FFFC
	.word reset
	.word reset
