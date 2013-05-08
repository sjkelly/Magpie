use <materials.scad>;
use <components.scad>;
$fn=100;
//DC gearbox motor PGM-37DC12/77
module gearMotor(type) translate([0,0,-1]){
    bzp() render() difference(){ 
        cylinder(r=6.3/2, h=15);
        translate([-10,2.2,3]) cube(20);
    }
    translate([0,0,-5]){
        //shaft bulge
        if(negative&&holes) cylinder(r=12.5/2,h=20);
        //body
        if(negative) translate([7,0,0]) mirror([0,0,1]) cylinder(r=38/2,h=55);
        steel() render(){
            //bulge around shaft
            cylinder(r=12.5/2,h=5);
            //motor body
            translate([7,0,0]) mirror([0,0,1]){
                cylinder(r=36.5/2,h=24);
                translate([0,0,24]) cylinder(r=32.5/2,h=30);
                
            }
        }
        if(negative) cylinder(r=12.5/2,h=10);
        // motor shaft is 7mm above center; lowering the mounting bolts
        if(holes)
        translate([7,0,7]) for(i=[0:5]) rotate(60*i) translate([0,31/2,0]){
            if(negative) translate([0,0,-1]) cylinder(r=3,h=1+13);
            mirror([0,0,1]) cap_screw("M3",10);
        }
    }
}

gearMotor("PGM_37DC12");
