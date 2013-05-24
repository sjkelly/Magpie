include <../magpie.scad>;

module nut_trap(type){
	obj = object(type);
	cylinder(r=obj[NUT_WIDTH]/cos(30)/2,h=obj[NUT_HEIGHT], $fn=6);
}


