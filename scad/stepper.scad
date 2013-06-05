include <constants.scad>;
use <materials.scad>;
include <object.scad>;

module stepper(type){
	a = object(type);

		union(){
			steel()translate([0,0,a[LENGTH]/2])cube([a[WIDTH], a[WIDTH], a[LENGTH]], center = true);
			steel()translate([0,0,a[LENGTH]])cylinder(r=a[FLANGE_DIAMETER]/2, h = a[FLANGE_HEIGHT]);
			stainless()translate([0,0,a[LENGTH]+a[FLANGE_HEIGHT]])cylinder(r=a[SHAFT_DIAMETER]/2, h = a[SHAFT_LENGTH]);
		}
	echo(str(MAGPIE_OUT, type," stepper")); 
}

