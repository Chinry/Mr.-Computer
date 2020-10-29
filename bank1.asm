	*=$C000
reset:
	lda #0
	sta $8004
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
end_code:
	*=$FFFC
	.dsb (*-end_code), 0
	*=$FFFC
	.word reset
	.word reset
