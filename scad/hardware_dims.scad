//Screw Dimension arrays
//[Diameter, Head Height, Head Diameter, nut across flats, lock nut height, nut height, washer od, washer thick]
m2 = [2, 2, 3.8, 4, 2.8, 1.6, 5, 0.3];
m2_5 = [2.5, 2.5, 4.5, 5, 3.8, 2, 6, 0.5];
m3 = [3, 3, 5.5, 5.5, 4, 2.4, 7, 0.6];
m4 = [4, 4, 7, 7, 5, 3.2, 9, 0.9];
m5 = [5, 5, 8.5, 8, 5, 4, 10, 1.1];
m6 = [6, 6, 10, 10, 6, 5, 12.5, 1.8];
m8 = [8, 8, 13, 13, 8, 6.5, 17, 1.8];

//motor dimension arrays
//[width, length, hole spacing, hole diameter, flange diameter, flange height, shaft length, shaft diameter]
nema8 = [20.3, 30, 16, 2, 15, 1.5, 14, 4];
nema11 = [28.1, 27, 23, 2.5, 21, 2, 20, 5];
nema14 = [35.2, 36, 26, 3, 22, 2, 21, 5];
nema17 = [42.3, 48, 31, 3, 22, 2, 23, 5];
pololu_35x26 = [35.2, 26, 26, 3, 22, 2, 21, 5];

//electronics dimension arrays
//[[x,y,z],etc..]
melzi = [[0,0,0],[200,0,0],[0,42,0],[200,42,0]];
mega = [[0,0,0],[80,0,0],[1.3,48.3,0],[76.2,48.3,0]];//TODO: second entry needs fixing
printrboard = [[0,0,0],[91,0,0],[0,52.75,0],[91,52.75,0]];
sanguinololu = [[0,0,0],[94,0,0],[0,44,0],[94,44,0]];

//extruder drive gear dimensions arrays
//[outer diameter, inner diameter, hobb diameter, teeth diameter(torus inside to inside), teeth offset(from bottom), height]
arcol8x5 = [8,5,5,6,5,13];
arcol11x5 = [11.1,5,5,9.1,6,13];
arcol11x8 = [11.1,8,5,9.1,6,13];
arcol13x8 = [13.3,8,5,11.3,6,13];

// Assign Screw array
function get_screw_dims(screw) = (screw=="M2") ? m2 : (screw=="M2.5") ? m2_5 : (screw=="M3") ? m3 : (screw=="M4") ? m4 : (screw=="M5") ? m5 : (screw=="M6") ? m6 : (screw=="M8") ? m8 : "error";

function get_stepper_dims(motor) = (motor=="NEMA8") ? nema8 : (motor=="NEMA11") ? nema11 : (motor=="NEMA14") ? nema14 : (motor=="NEMA17") ? nema17 : (motor=="Pololu 35x26") ? pololu_35x26 :"error";

function get_electronics_holes(electronics) = (electronics=="Melzi") ? melzi : (electronics=="Mega") ? mega : (electronics=="Printrboard") ? printrboard : (electronics=="Sanguinololu") ? sanguinololu :"error";

function get_extruder_gear_dims(extruder_gear) = (extruder_gear=="Arcol8x5") ? arcol8x5 : (extruder_gear=="Arcol11x8") ? arcol11x8 : (extruder_gear=="Arcol11x5") ? arcol11x5 : (extruder_gear=="Arcol13x8") ? arcol13x8 : "error";
