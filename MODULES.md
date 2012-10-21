#Magpie Vitamins Modules

##Usage notes
###Accepted Hardware Types
M2, M2.5, M3, M4, M5, M6, M8

###Accepted Stepper Types
NEMA8
NEMA11
NEMA14
NEMA17
Pololu 35x26 


##Screw Object
get_screw_dims(screw)

##Hardware 

###Nuts
	nut(type)
Create a nut.
	lock_nut(type)
Create a nylon locknut.
 
###Screws
	cap_screw(type, length)
	ex. cap_screw("M3", 10); //Create a M3x10 cap screw
Create a screw of specified type and length.


##Components
	stepper(type)
	ex. stepper("NEMA14"); //Create a NEMA14
