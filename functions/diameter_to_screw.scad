include <../hardware/dimensions.scad>;

// Assign screw array from diameter value
function diameter_to_screw(dia) = 
	(dia == 2) ? M2 : 
	(dia == 2.5) ? M2_5 : 
	(dia == 3) ? M3 : 
	(dia == 4) ? M4 : 
	(dia == 5) ? M5 : 
	(dia == 6) ? M6 : 
	(dia == 8) ? M8 : 
	"error";

