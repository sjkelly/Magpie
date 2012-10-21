include <hardware_dims.scad>
include <polyholes.scad>
include <constants.scad>
include <functions.scad>

$fn = 21;
//make the local screw array a function


module nut(type){
	a = get_screw_dims(type);

	difference(type){
		union(){
			color("silver")cylinder(r = a[NUT_WIDTH]/cos(30)/2, h = a[NUT_HEIGHT], $fn = 6);
		}
		color("silver")translate([0,0,-eta])cylinder(r = a[DIAMETER]/2, h = a[NUT_HEIGHT] + eta * 2);
	}
	echo(str("--", type," nut")); 
}

module lock_nut(type){
	a = get_screw_dims(type);

	difference(){
		union(){
			color("silver")cylinder(r = a[NUT_WIDTH]/cos(30)/2, h = a[LOCK_NUT_HEIGHT]-a[NUT_WIDTH]/4, $fn = 6);
			color("silver")translate([0,0,a[LOCK_NUT_HEIGHT]-a[NUT_WIDTH]/4])
				rotate_extrude(convexity = 10)translate([a[NUT_WIDTH]/4,0,0])circle(r = a[NUT_WIDTH]/4);
		}
		color("silver")translate([0,0,-eta])cylinder(r=a[DIAMETER]/2, h = a[LOCK_NUT_HEIGHT] + eta*2);
	}
	echo(str("--", type," lock nut")); 
}

module stepper(type){
	a = get_stepper_dims(type);

		union(){
			color("grey")translate([0,0,a[LENGTH]/2])cube([a[WIDTH], a[WIDTH], a[LENGTH]], center = true);
			color("grey")translate([0,0,a[LENGTH]])cylinder(r=a[FLANGE_DIAMETER]/2, h = a[FLANGE_HEIGHT]);
			color("silver")translate([0,0,a[LENGTH]+a[FLANGE_HEIGHT]])cylinder(r=a[SHAFT_DIAMETER]/2, h = a[SHAFT_LENGTH]);
		}
	echo(str("--", type," stepper")); 
}

module cap_screw(length, type){
	a = get_screw_dims(type);

	difference(){
		union(){
			color("grey")translate([0,0,-a[CAP_HEAD_HEIGHT]])
				cylinder(r = a[CAP_HEAD_DIAMETER]/2, h = a[CAP_HEAD_HEIGHT]);
			color("grey")cylinder(r = a[DIAMETER]/2, h = round(length));
			
		}
		//make a socket for aesthetics
		color("grey")translate([0,0,-a[CAP_HEAD_HEIGHT]-eta])
			cylinder(r = a[CAP_HEAD_DIAMETER]/4, h = a[CAP_HEAD_HEIGHT] * 3/4, $fn = 6);
	}
	echo(str("--", type, "x", round(length))); 
}

module set_screw(length, type){
	lscrew_array = get_screw_dims(type);

	lscrew_diameter = lscrew_array[0];
	lscrew_head_height = lscrew_array[1];
	lscrew_head_diameter = lscrew_array[2];
	
	difference(){
		union(){
			color("grey")cylinder(r = lscrew_diameter/2, h = round(length));
			
		}
		//make a socket for aesthetics
		color("grey")translate([0,0,-eta])
			cylinder(r = lscrew_head_diameter/5, h = lscrew_head_height * 3/4, $fn = 6);
	}
	echo(str("--", type, "x", round(length), " set screw")); 
}

module flat_washer(type){
	lscrew_array = get_screw_dims(type);

	lscrew_diameter = lscrew_array[0];
	lwasher_diameter = lscrew_array[6];
	lwasher_thick = lscrew_array[7];

	difference(){
		union(){
			color("silver")cylinder(r = lwasher_diameter/2, h = lwasher_thick);
		}
		color("silver")translate([0,0,-eta])cylinder(r = lscrew_diameter/2, h = lwasher_thick + eta * 2);
	}
	echo(str("--", type," washer")); 
}

module all_thread(length, type){
	lscrew_array = get_screw_dims(type);

	lscrew_diameter = lscrew_array[0];

	//don't round up on leadscrew
	difference(){
		union(){
			color("grey")cylinder(r = lscrew_diameter/2, h = round(length));
		}
	}
	echo(str("--", type, "x", round(length), "mm threaded rod")); 
}




module extruder_gear(type){
	lextruder_gear_array = get_extruder_gear_dims(type);

	
	lextruder_gear_od = lextruder_gear_array[0];
	lextruder_gear_id = lextruder_gear_array[1];
	lextruder_gear_hobb_diameter = lextruder_gear_array[2];
	lextruder_gear_teeth_diameter = lextruder_gear_array[3];
	lextruder_gear_teeth_offset = lextruder_gear_array[4];
	lextruder_gear_height = lextruder_gear_array[5];

	color("silver")difference(){
		color("silver")union(){
			translate([0,0,-lextruder_gear_teeth_offset])cylinder(r=lextruder_gear_od/2, h=lextruder_gear_height);
		}
		translate([0,0,-eta-lextruder_gear_teeth_offset])cylinder(r=lextruder_gear_id/2, h=lextruder_gear_height+eta*2);
		rotate_extrude(convexity = 10)translate([lextruder_gear_hobb_diameter/2+lextruder_gear_teeth_diameter/2,0,0])circle(r = lextruder_gear_teeth_diameter/2);
	}
	echo(str("--", type, " hobbed extruder drive gear")); 
}

module ptfe_rod(radius,length){
	difference(){
		union(){
			color("white")cylinder(r = radius, h = round(length));
		}
	}
	echo(str("--",radius*2,"mm diameter ", round(length), "mm long PTFE rod")); 
}

