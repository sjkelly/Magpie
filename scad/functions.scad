include <hardware_dims.scad>

// Assign Screw array
function getScrewDims(screw) = (screw=="M2") ? m2 : (screw=="M2.5") ? m2_5 : (screw=="M3") ? m3 : (screw=="M4") ? m4 : (screw=="M5") ? m5 : (screw=="M6") ? m6 : (screw=="M8") ? m8 : "error";

function get_screw_dims(screw) = getScrewDims(screw);

function getStepperDims(motor) = (motor=="NEMA8") ? nema8 : (motor=="NEMA11") ? nema11 : (motor=="NEMA14") ? nema14 : (motor=="NEMA17") ? nema17 : (motor=="Pololu 35x26") ? pololu35x26 :"error";

function get_stepper_dims(motor) = getStepperDims(motor);

function getElectronicsHoles(electronics) = (electronics=="Melzi") ? melzi : (electronics=="Mega") ? mega : (electronics=="Printrboard") ? printrboard : (electronics=="Sanguinololu") ? sanguinololu :"error";

function get_electronics_holes(electronics) = getElectronicsHoles(electronics);

function getExtruderGearDims(extruderGear) = (extruderGear=="Arcol8x5") ? arcol8x5 : (extruderGear=="Arcol11x8") ? arcol11x8 : (extruderGear=="Arcol11x5") ? arcol11x5 : (extruderGear=="Arcol13x8") ? arcol13x8 : "error";

function get_extruder_gear_dims(extruderGear) = getExtruderGearDims(extruderGear);

function get_drive_roller_dims(roller) = (roller == "A_7T_5MUR1405") ? A_7T_5MUR1405 : (roller == "A_7T_5MUR1606") ? A_7T_5MUR1606 : (roller == "A_7T_5MUR1905") ? A_7T_5MUR1905 : (roller == "A_7T_5MUR1906") ? A_7T_5MUR1906 : (roller == "A_7T_5MUR2206") ? A_7T_5MUR2206 : (roller == "A_7T_5MUR2510") ? A_7T_5MUR2510 : (roller == "A_7T_5MUR3210") ? A_7T_5MUR3210 : (roller == "A_7T_5MUR3810") ? A_7T_5MUR3810 : (roller == "A_7T_5MUR3812") ? A_7T_5MUR3812 : (roller == "A_7T_5MUR4412") ? A_7T_5MUR4412 : (roller == "A_7T_5MUR5012") ? A_7T_5MUR5012 : (roller == "A_7M_5MUR1206A") ? A_7M_5MUR1206A : (roller == "A_7M_5MUR1206B") ? A_7M_5MUR1206B : "error";

