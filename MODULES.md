#Magpie Vitamins Modules

##Usage notes
###Accepted Hardware Types
M2, M2.5, M3, M4, M5, M6, M8

###Accepted Stepper Types
NEMA8, NEMA11, NEMA14, NEMA17, Pololu35x26 


##Screw Object
getScrewDims(screw)

##Hardware 

###Nuts
	nut(type)
Create a regular nut.
	lockNut(type)
Create a nylon locknut.
 
###Screws
	capScrew(type, length)
Create a cap head screw.
	setScrew(type, length)
Create a set screw.
	hexScrew(type, length)
Create a hex head screw.


###Washers
	flatWasher(type)
Create a flat washer.

###All-Thread
	allThread(type,length)
Create a threaded rod.

##Components
	stepper(type)
Create a stepper motor.
