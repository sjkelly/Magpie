include <constants.scad>;
include <../functions.scad>;
use <materials.scad>;

module capScrew(type,length){
	$fn = 16;
	a = object(type);

	difference(){
		union(){
			steel()translate([0,0,-a[CAP_HEAD_HEIGHT]])
				cylinder(r = a[CAP_HEAD_DIAMETER]/2, h = a[CAP_HEAD_HEIGHT]);
			steel()cylinder(r = a[DIAMETER]/2, h = round(length));
			
		}
		//make a socket for aesthetics
		steel()translate([0,0,-a[CAP_HEAD_HEIGHT]-eta])
			cylinder(r = a[CAP_HEAD_DIAMETER]/4, h = a[CAP_HEAD_HEIGHT] * 3/4, $fn = 6);
	}
	echo(str(MAGPIE_OUT, type, "x", round(length), " cap screw")); 
}

module cap_screw(type, length){
	capScrew(type,length);
}

module hexScrew(type,length){
	$fn = 16;
	a = object(type);

	union(){
		steel()translate([0,0,-a[NUT_HEIGHT]])
			cylinder(r = a[NUT_WIDTH]/cos(30)/2, h = a[NUT_HEIGHT], $fn = 6);
		steel()cylinder(r = a[DIAMETER]/2, h = round(length));
		
	}

	echo(str(MAGPIE_OUT, type, "x", round(length), " hex screw")); 
}

module hex_screw(type, length){
	hexScrew(type,length);
}

module setScrew(type,length){
	$fn = 16;
	a = object(type);

	difference(){
		union(){
			steel()cylinder(r = a[DIAMETER]/2, h = round(length));
		}
		//make a socket for aesthetics
		steel()translate([0,0,-eta])
			cylinder(r = a[CAP_HEAD_DIAMETER]/5, h = a[CAP_HEAD_HEIGHT] * 3/4, $fn = 6);
	}
	echo(str(MAGPIE_OUT, type, "x", round(length), " set screw")); 
}

module set_screw(type, length){
	setScrew(type,length);
}
