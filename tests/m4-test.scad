include <../magpie.scad>

//m4 tests
a = "M4";
nut(a);
translate([10,0,0])lockNut(a);
translate([-10,0,0])flatWasher(a);
translate([0,10,0])capScrew(a,10);
translate([0,-10,0])setScrew(a,10);
translate([10,10,0])allThread(a,10);
translate([10,-10,0])hexScrew(a,10);
