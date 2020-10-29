all: bank0.bin bank1.bin bank2.bin bank3.bin
	cat build/bank0.bin build/bank1.bin build/bank2.bin build/bank3.bin > build/prog.bin

bank0.bin:
	xa -C -l build/bank0.lst -o build/bank0.bin bank0.asm

bank1.bin:
	xa -C -l build/bank1.lst -o build/bank1.bin bank1.asm

bank2.bin:
	xa -C -l build/bank2.lst -o build/bank2.bin bank2.asm

bank3.bin:
	xa -C -l build/bank3.lst -o build/bank3.bin bank3.asm


send:
	xa -C -l build/send.lst -o build/send.bin send.asm



burn:
	sudo minipro -p "M27C512@DIP28" -w build/prog.bin

clean:
	rm build/*
