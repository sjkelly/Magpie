include <../hardware.scad>;
include <../shapes.scad>;


module stepper_mount(stepper,thickness,flangeWidth,holeDia){
	if(flangeWidth<holeDia)echo("Invalid call to stepper_mount");
	stepperObj = object(stepper);
	translate([-stepperObj[LENGTH],-stepperObj[WIDTH]/2-thickness,0])
	difference(){
		union(){
			cube([stepperObj[LENGTH]+thickness,stepperObj[WIDTH]+thickness*2,stepperObj[WIDTH]]);
			translate([0,-flangeWidth,0])cube([stepperObj[LENGTH]+thickness,stepperObj[WIDTH]+thickness*2+flangeWidth*2,thickness]);
		}
		translate([-eta,thickness,-eta])cube([stepperObj[LENGTH]+eta,stepperObj[WIDTH],stepperObj[WIDTH]+eta*2]);
		translate([-eta,thickness,-eta])cube([stepperObj[LENGTH]+eta,stepperObj[WIDTH],stepperObj[WIDTH]+eta*2]);
		translate([stepperObj[LENGTH]-eta,stepperObj[WIDTH]/2+thickness,stepperObj[WIDTH]/2])rotate([0,90,0])polyCylinder(r=stepperObj[FLANGE_DIAMETER]/2,h=thickness+eta*2);

		translate([0,-eta,thickness])rotate([0,-atan2(stepperObj[WIDTH]-thickness,stepperObj[LENGTH]),0])cube([stepperObj[LENGTH]*2,stepperObj[WIDTH]+thickness*2+eta*2,stepperObj[WIDTH]]);		

		//Bolt Holes
		for(i = [-1,1])for(j = [-1,1])
			translate([stepperObj[LENGTH]-eta,stepperObj[WIDTH]/2+thickness+stepperObj[HOLE_SPACING]/2*j,stepperObj[WIDTH]/2-eta+stepperObj[HOLE_SPACING]/2*i])
				rotate([0,90,0])
					polyCylinder(r=stepperObj[HOLE_DIAMETER]/2,h=thickness+eta*2);
		for(i=[0,1]){
			translate([(stepperObj[LENGTH]+thickness)*0.25,-flangeWidth/2+(stepperObj[WIDTH]+thickness*2+flangeWidth)*i,-eta])polyCylinder(r=holeDia/2,h=thickness+eta*2);
			translate([(stepperObj[LENGTH]+thickness)*0.75,-flangeWidth/2+(stepperObj[WIDTH]+thickness*2+flangeWidth)*i,-eta])polyCylinder(r=holeDia/2,h=thickness+eta*2);
		}
	}
}

module stepper_mount_asm(stepper,thickness,flangeWidth,holeDia){
	stepper_mount(stepper,thickness,flangeWidth,holeDia);
	stepperObj=object(stepper);
	translate([-stepperObj[LENGTH],0,stepperObj[WIDTH]/2])rotate([0,90,0])stepper(stepper);
	for(i = [-1,1])for(j = [-1,1])
		translate([thickness,stepperObj[HOLE_SPACING]/2*j,stepperObj[WIDTH]/2-eta+stepperObj[HOLE_SPACING]/2*i]){
			rotate([0,90,0])flatWasher("M3");
			translate([M3[WASHER_HEIGHT],0,0])rotate([0,-90,0])capScrew("M3",thickness+stepperObj[HOLE_DIAMETER]*1.5);
			}
				
}

stepper_mount_asm("NEMA17",5,10,3);
