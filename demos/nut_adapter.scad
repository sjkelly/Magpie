include <../hardware.scad>;
include <../shapes.scad>;

module nut_adapter(outer, inner){
	a=getScrewDims(inner);
	b=getScrewDims(outer);
	difference(){
		cylinder(r=b[NUT_WIDTH]/2/cos(30), h=b[NUT_HEIGHT], $fn=6);
		translate([0,0,-eta])cylinder(r=a[NUT_WIDTH]/2/cos(30), h=a[NUT_HEIGHT]+eta, $fn=6);
		polyCylinder(r=a[DIAMETER]/2, h=b[NUT_HEIGHT]+eta*2);
	}
}

rotate([0,180,0])nut_adapter("M8", "M5");
