include <../hardware.scad>;
include <../shapes.scad>;

module two_piece_coupler(shaft1=5,shaft2=8,length1=10,length2=10,screw="M3",gap=2)
{
	screw_obj = object(screw);
	difference() {
		union()
		{
			translate([0,0,shaft1*0.75])rotate([0,90,0])cylinder(r=shaft1*0.75, h=length1+length2);
		}
		#translate([-eta,-shaft1-eta,shaft1*0.75])cube([length1+length2+eta*2,shaft1*2+eta*2,shaft1]);	
	}
}

two_piece_coupler();

