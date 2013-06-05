include <constants.scad>;

module rod(radius,length){
	difference(){
		union(){
			color("white")cylinder(r = radius, h = round(length));
		}
	}
	echo(str(MAGPIE_OUT,radius*2,"mm diameter ", round(length), "mm long PTFE rod")); 
}


