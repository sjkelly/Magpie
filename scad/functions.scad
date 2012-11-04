include <hardware_dims.scad>

// Assign Screw array
function getScrewDims(screw) = (screw=="M2") ? m2 : (screw=="M2.5") ? m2_5 : (screw=="M3") ? m3 : (screw=="M4") ? m4 : (screw=="M5") ? m5 : (screw=="M6") ? m6 : (screw=="M8") ? m8 : "error";

function getStepperDims(motor) = (motor=="NEMA8") ? nema8 : (motor=="NEMA11") ? nema11 : (motor=="NEMA14") ? nema14 : (motor=="NEMA17") ? nema17 : (motor=="Pololu35x26") ? pololu35x26 :"error";

function getElectronicsHoles(electronics) = (electronics=="Melzi") ? melzi : (electronics=="Mega") ? mega : (electronics=="Printrboard") ? printrboard : (electronics=="Sanguinololu") ? sanguinololu :"error";

function getExtruderGearDims(extruderGear) = (extruderGear=="Arcol8x5") ? arcol8x5 : (extruderGear=="Arcol11x8") ? arcol11x8 : (extruderGear=="Arcol11x5") ? arcol11x5 : (extruderGear=="Arcol13x8") ? arcol13x8 : "error";
