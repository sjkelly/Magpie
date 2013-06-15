include <constants.scad>;
use <material.scad>;

module rod(radius,length,material){
	material(material)cylinder(r = radius, h = round(length));
	echo(str(MAGPIE_OUT,radius*2,"mm diameter ", round(length), "mm long ", material, " rod")); 
}


