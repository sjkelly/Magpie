include <../functions.scad>;
include <constants.scad>;

module pcb_sketch(type){
	eta = 0.1;
	pcbObj = object(type);
	nonHoleDims = 1; // the number of non hole dimensions before the hole listing
	difference(){
		square([pcbObj[BOARD_SIZE][X], pcbObj[BOARD_SIZE][Y]]);
		for(i = [nonHoleDims:len(pcbObj)-1])
			translate([pcbObj[i][X],pcbObj[i][Y]])circle(r=pcbObj[i][3]/2);
	}
}

module pcb(type){
	eta = 0.1;
	pcbObj = object(type);
	nonHoleDims = 1; // the number of non hole dimensions before the hole listing
	difference(){
		cube(pcbObj[BOARD_SIZE]);
		for(i = [nonHoleDims:len(pcbObj)-1])
			translate([pcbObj[i][X],pcbObj[i][Y],pcbObj[i][Z]-eta])cylinder(r=pcbObj[i][3]/2,h=pcbObj[BOARD_SIZE][Z]+eta*2);
	}
}

pcb_sketch("RAMBo");