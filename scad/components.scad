include <hardware_dims.scad>
include <polyholes.scad>
include <constants.scad>
include <functions.scad>
include <materials.scad>

$fn = 21;

module nut(type){
	a = getScrewDims(type);

	difference(type){
		union(){
			stainless()cylinder(r = a[NUT_WIDTH]/cos(30)/2, h = a[NUT_HEIGHT], $fn = 6);
		}
		stainless()translate([0,0,-eta])cylinder(r = a[DIAMETER]/2, h = a[NUT_HEIGHT] + eta * 2);
	}
	echo(str(MAGPIE_OUT, type," nut")); 
}

module lockNut(type){
	a = getScrewDims(type);

	difference(){
		union(){
			stainless()cylinder(r = a[NUT_WIDTH]/cos(30)/2, h = a[LOCK_NUT_HEIGHT]-a[NUT_WIDTH]/4, $fn = 6);
			stainless()translate([0,0,a[LOCK_NUT_HEIGHT]-a[NUT_WIDTH]/4])
				rotate_extrude(convexity = 10)translate([a[NUT_WIDTH]/4,0,0])circle(r = a[NUT_WIDTH]/4);
		}
		stainless()translate([0,0,-eta])cylinder(r=a[DIAMETER]/2, h = a[LOCK_NUT_HEIGHT] + eta*2);
	}
	echo(str(MAGPIE_OUT, type," lock nut")); 
}

module lock_nut(type){
	lockNut(type);
}

module stepper(type){
	a = getStepperDims(type);

		union(){
			steel()translate([0,0,a[LENGTH]/2])cube([a[WIDTH], a[WIDTH], a[LENGTH]], center = true);
			steel()translate([0,0,a[LENGTH]])cylinder(r=a[FLANGE_DIAMETER]/2, h = a[FLANGE_HEIGHT]);
			stainless()translate([0,0,a[LENGTH]+a[FLANGE_HEIGHT]])cylinder(r=a[SHAFT_DIAMETER]/2, h = a[SHAFT_LENGTH]);
		}
	echo(str(MAGPIE_OUT, type," stepper")); 
}

module capScrew(type,length){
	a = getScrewDims(type);

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
	a = getScrewDims(type);

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
	a = getScrewDims(type);

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

module flatWasher(type){
	a = getScrewDims(type);

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

module allThread(type, length){
	a = getScrewDims(type);

	//don't round up on all thread
	difference(){
		union(){
			steel()cylinder(r = a[DIAMETER]/2, h = round(length));
		}
	}
	echo(str(MAGPIE_OUT, type, "x", round(length), " threaded rod")); 
}

module all_thread(type,length){
	allThread(type,length);
}

module extruderGear(type){
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
	echo(str(MAGPIE_OUT, type, " hobbed extruder drive gear")); 
}

module ptfeRod(radius,length){
	difference(){
		union(){
			color("white")cylinder(r = radius, h = round(length));
		}
	}
	echo(str(MAGPIE_OUT,radius*2,"mm diameter ", round(length), "mm long PTFE rod")); 
}

module ptfe_rod(radius, length){
	ptfeRod(radius, length);
}
