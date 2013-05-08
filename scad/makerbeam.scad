use <bom.scad>;
use <materials.scad>;
module tslot(h=10,bom=true,center=false){
    aluminium() linear_extrude(file="/usr/local/share/openscad/libraries/makerbeam.dxf",height=h,center=center);
    if(bom) bom(1,"makerbeam",h);
}
module tslot_nut(h=5,hole=true,bom=true){
    difference(){
        render() difference(){
            intersection(){
                rotate([0,0,45]) cube([10*sqrt(0.5),10*sqrt(0.5),h]);
                translate([10/-2,2,0]) cube([10,4-2,h]);
            }
            tslot(h,bom=false);
        }
        if(hole!=false) translate([0,0,h/2]) rotate([-90,0,0]){
            cylinder(r=2.8/2,$fn=50,h=10);
            translate([0,0,4-0.5]) cylinder(r2=3.2/2,r1=2.8/2,$fn=50,h=0.6);
        }
    }
    if(bom) bom_printed(1,"makerbeam-nut",h);
}
tslot_d=10;
tslot_depth=3;
