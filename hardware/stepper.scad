include <constants.scad>;
use <materials.scad>;
include <../functions.scad>;
include <../shapes/polyholes.scad>;

module stepper(type, diff=false, diff_length=10){
    $fn = 16;
    a = object(type);

    union(){
        steel()translate([0,0,a[LENGTH]/2])cube([a[WIDTH], a[WIDTH], a[LENGTH]], center = true);
        stainless()translate([0,0,a[LENGTH]+a[FLANGE_HEIGHT]])cylinder(r=a[SHAFT_DIAMETER]/2, h = a[SHAFT_LENGTH]);
        if(diff){
            steel()translate([0,0,a[LENGTH]])cylinder(r=a[FLANGE_DIAMETER]/2, h = diff_length);
            for(i=[0:3]){
                steel()rotate([0,0,90*i])translate([a[HOLE_SPACING]/2,a[HOLE_SPACING]/2,a[LENGTH]-1])polyCylinder(r=a[HOLE_DIAMETER]/2, h = diff_length+1);
            }
        }
        else {
            steel()translate([0,0,a[LENGTH]])cylinder(r=a[FLANGE_DIAMETER]/2, h = a[FLANGE_HEIGHT]);
        }
    }
    echo(str(MAGPIE_OUT, type," stepper")); 
}

