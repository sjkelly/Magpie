include <hardware_dims.scad>
include <polyholes.scad>
include <constants.scad>
include <functions.scad>
include <materials.scad>

$fn = 21;

module feed_roller(type){
  a = get_drive_roller_dims(type);
  //inside core
  difference(){
    union(){
      translate([0,0,-eta])aluminum()cylinder(r= a[HUB_DIAMETER]/2, h=a[HUB_PROJECTION]+a[FACE_WIDTH]+eta);
 urethane()translate([0,0,a[HUB_PROJECTION]])cylinder(r = a[OUTSIDE_DIAMETER]/2, h = a[FACE_WIDTH]-eta);
    }
    aluminum()translate([0,0,-eta*2])cylinder(r= a[BORE_SIZE]/2, h=a[HUB_PROJECTION]+a[FACE_WIDTH]+eta*3);
  }
}

feed_roller("A_7M_5MUR1206A");
