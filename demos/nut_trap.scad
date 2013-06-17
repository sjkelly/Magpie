include <../hardware.scad>;
include <../shapes.scad>;


module nut_trap(type){
	obj = object(type);
	cylinder(r=obj[NUT_WIDTH]/cos(30)/2,h=obj[NUT_HEIGHT], $fn=6);
}

module lock_nut_trap(type){
	obj = object(type);
	cylinder(r=obj[NUT_WIDTH]/cos(30)/2,h=obj[LOCK_NUT_HEIGHT], $fn=6);
}


