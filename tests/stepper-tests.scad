include <../magpie.scad>

//stepper tests
translate([40,0,0])stepper("NEMA17");
translate([-40,0,0])stepper("NEMA14");
translate([0,40,0])stepper("NEMA11");
translate([0,-40,0])stepper("NEMA8");
translate([40,40,0])stepper("Pololu35x26");