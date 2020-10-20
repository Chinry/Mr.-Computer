# Mr. Computer

## About
Code for a MOS 6502 computer I built 

Memory map:
* 0000h - 7FFFh RAM
* 8000h - 8003h YM3438 (FM chip in the genesis)
* 8004h         ROM Bank Switching register (writing low 2 bits will set the bank)
* 8005h - BFFFh Unused
* C000h - FFFFh ROM
	
## Building and Running	

* _make_ will assemble all seperate bank source files using the xa assembler and concatenate them together
* _make burn_ allows for using the _minipro_ linux cli to program the eprom 

## Reasons
I don't want to pay an exorbitant amount of money for a SID chip so the sound of the 2612 is a second best 
