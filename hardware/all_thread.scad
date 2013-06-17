include <../functions.scad>;
use <materials.scad>;
include <constants.scad>;

module allThread(type, length){
	$fn = 16;
	a = object(type);

	//don't round up on all thread
	difference(){
		union(){
			steel()cylinder(r = a[DIAMETER]/2, h = round(length));
		}
	}
	echo(str(MAGPIE_OUT, type, "x", round(length), " threaded rod")); 
}

module all_thread(type,length){
	allThread(type,length);
}
