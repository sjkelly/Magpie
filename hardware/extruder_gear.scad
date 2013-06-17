include <../functions.scad>;
include <constants.scad>;

module extruderGear(type){
	$fn = 16;
	lextruder_gear_array = object(type);

	
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
