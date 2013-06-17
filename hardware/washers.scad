include <../functions.scad>;
include <constants.scad>;
use <materials.scad>;

module flatWasher(type){
	$fn = 16;
	a = object(type);

	difference(){
		union(){
			stainless()cylinder(r = a[WASHER_OD]/2, h = a[WASHER_HEIGHT]);
		}
		stainless()translate([0,0,-eta])cylinder(r = a[DIAMETER]/2, h = a[WASHER_HEIGHT] + eta * 2);
	}
	echo(str(MAGPIE_OUT, type," flat washer")); 
}

module flat_washer(type){
	flatWasher(type);
}

