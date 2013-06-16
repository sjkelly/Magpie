include <constants.scad>;
include <object.scad>;
use <materials.scad>;

module bearing(type){
	$fn = 16;
	lb = object(type);
	stainless()difference(){
		cylinder(r=lb[OUTER_DIAMETER]/2, h=lb[LENGTH]);
		translate([0,0,-eta])cylinder(r=lb[INNER_DIAMETER]/2, h=lb[LENGTH]+eta*2);
	}	
}
