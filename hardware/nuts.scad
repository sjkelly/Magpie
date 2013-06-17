include <../functions.scad>;
include <constants.scad>;
use <materials.scad>;

module nut(type){
	$fn = 16;
	a = object(type);

	difference(type){
		union(){
			stainless()cylinder(r = a[NUT_WIDTH]/cos(30)/2, h = a[NUT_HEIGHT], $fn = 6);
		}
		stainless()translate([0,0,-eta])cylinder(r = a[DIAMETER]/2, h = a[NUT_HEIGHT] + eta * 2);
	}
	echo(str(MAGPIE_OUT, type," nut")); 
}

module lockNut(type){
	$fn = 16;
	a = object(type);

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

