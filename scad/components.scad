include <hardware_dims.scad>
include <polyholes.scad>
include <constants.scad>

$fn = 21;
//make the local screw array a function


module nut(type){
	lscrew_array = get_screw_dims(type);

	lscrew_diameter = lscrew_array[0];
	lnut_diameter = lscrew_array[3] / cos(30);
	lnut_height = lscrew_array[5];
	difference(type){
		union(){
			color("silver")cylinder(r = lnut_diameter/2, h = lnut_height, $fn = 6);
		}
		color("silver")translate([0,0,-eta])cylinder(r = lscrew_diameter/2, h = lnut_height + eta*2);
	}
	echo(str("--", type," nut")); 
}

module lock_nut(type){
	lscrew_array = get_screw_dims(type);

	lscrew_diameter = lscrew_array[0];
	lnut_diameter = lscrew_array[3] / cos(30);
	lnut_apothem = lscrew_array[3] / 2;
	llock_nut_height = lscrew_array[4];

	difference(){
		union(){
			color("silver")cylinder(r = lnut_diameter/2, h = llock_nut_height-lnut_apothem/2, $fn = 6);
			color("silver")translate([0,0,llock_nut_height-lnut_apothem/2])
				rotate_extrude(convexity = 10)translate([lnut_apothem/2,0,0])circle(r = lnut_apothem/2);
		}
		color("silver")translate([0,0,-eta])cylinder(r=lscrew_diameter/2, h = llock_nut_height + eta*2);
	}
	echo(str("--", type," lock nut")); 
}

module stepper(type){
	lstepper_array = get_stepper_dims(type);
	lstepper_width = lstepper_array[0];
	lstepper_length = lstepper_array[1];
	lstepper_hole_spacing = lstepper_array[2];
	lstepper_hole_diameter = lstepper_array[3];
	lstepper_flange_diameter = lstepper_array[4];
	lstepper_flange_height = lstepper_array[5];
	lstepper_shaft_length = lstepper_array[6];
	lstepper_shaft_diameter = lstepper_array[7];
	lstepper_hole_engagement = lstepper_hole_diameter *1.5;

		union(){
			color("grey")translate([0,0,lstepper_length/2])cube([lstepper_width, lstepper_width, lstepper_length], center = true);
			color("grey")translate([0,0,lstepper_length])cylinder(r=lstepper_flange_diameter/2, h = lstepper_flange_height);
			color("silver")translate([0,0,lstepper_length+lstepper_flange_height])cylinder(r=lstepper_shaft_diameter/2, h = lstepper_shaft_length);
		}
	echo(str("--", type," stepper")); 
}

module screw(length, type){
	lscrew_array = get_screw_dims(type);

	lscrew_diameter = lscrew_array[0];
	lscrew_head_height = lscrew_array[1];
	lscrew_head_diameter = lscrew_array[2];
	

	difference(){
		union(){
			color("grey")translate([0,0,-lscrew_head_height])color("black")
				cylinder(r = lscrew_head_diameter/2, h = lscrew_head_height);
			color("grey")cylinder(r = lscrew_diameter/2, h = round(length));
			
		}
		//make a socket for aesthetics
		color("grey")translate([0,0,-lscrew_head_height-eta])
			color("black")cylinder(r = lscrew_head_diameter/4, h = lscrew_head_height * 3/4, $fn = 6);
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

module washer(type){
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

