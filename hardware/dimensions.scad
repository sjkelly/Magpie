//Screw Dimension arrays
//[Diameter, Cap Head Height, Head Diameter, nut across flats, lock nut height, nut height, washer od, washer thick, pan head diameter]
M2 = [2, 2, 3.8, 4, 2.8, 1.6, 5, 0.3, 4];
m2_5 = [2.5, 2.5, 4.5, 5, 3.8, 2, 6, 0.5, 5];
m3 = [3, 3, 5.5, 5.5, 4, 2.4, 7, 0.6, 6];
m4 = [4, 4, 7, 7, 5, 3.2, 9, 0.9, 8];
m5 = [5, 5, 8.5, 8, 5, 4, 10, 1.1, 10];
m6 = [6, 6, 10, 10, 6, 5, 12.5, 1.8, 12];
m8 = [8, 8, 13, 13, 8, 6.5, 17, 1.8, 16];

//stepper dimension arrays
//[width, length, hole spacing, hole diameter, flange diameter, flange height, shaft length, shaft diameter]
nema8 = [20.3, 30, 16, 2, 15, 1.5, 14, 4];
nema11 = [28.1, 27, 23, 2.5, 21, 2, 20, 5];
nema14 = [35.2, 36, 26, 3, 22, 2, 21, 5];
nema17 = [42.3, 48, 31, 3, 22, 2, 23, 5];
pololu35x26 = [35.2, 26, 26, 3, 22, 2, 21, 5];

//extruder drive gear dimensions arrays
//[outer diameter, length, inner diameter, hobb diameter, teeth diameter(torus inside to inside), teeth offset(from bottom)]
arcol8x5 = [8,13,5,5,6,5];
arcol11x5 = [11.1,13,5,5,9.1,6];
arcol11x8 = [11.1,13,8,5,9.1,6];
arcol13x8 = [13.3,13,8,5,11.3,6];


//Feed roller with hub 
// [Outside dia, bore, face width, hub projection, hub diameter]
A_7T_5MUR1405 = [14,5,6.35,6.35,11.1];
A_7T_5MUR1606 = [16,6,9.52,6.35,12.7];
A_7T_5MUR1905 = [19,5,6.35,6.35,11.1];
A_7T_5MUR1906 = [19,6,9.52,6.35,12.7];
A_7T_5MUR2206 = [22,6,9.52,6.35,12.7];
A_7T_5MUR2510 = [25,10,9.52,9.52,19];
A_7T_5MUR3210 = [32,10,9.52,9.52,20.62];
A_7T_5MUR3810 = [38,10,9.52,9.52,25.4];
A_7T_5MUR3812 = [38,12,12.7,12.7,25.4];
A_7T_5MUR4412 = [44,12,12.7,12.7,31.75];
A_7T_5MUR5012 = [50,12,12.7,12.7,34.9];

//hubless feed roller
// [outside dia, bore, face width, 0(use same constructor as above), sleeve diameter]
A_7M_5MUR1206A = [12, 6, 6.35, 0, 8.74];
A_7M_5MUR1206B = [12, 6, 18.2, 0, 8.74];
A_7M_5MUR1206C = [12, 6, 12.7, 0, 8.74];
A_7M_5MUR1710 = [17, 10, 6.35, 0, 12.7];
A_7M_5MUR1910 = [19, 10, 12.7, 0, 12.7];
A_7M_5MUR2010 = [20, 10, 12.7, 0, 12.7];
A_7M_5MUR2310 = [23, 10, 12.3, 0, 17.47];
A_7M_5MUR2810A = [28, 10, 11.12, 0, 12.7];
A_7M_5MUR2810B = [28, 10, 17.47, 0, 12.7];
A_7M_5MUR5010 = [50, 10, 17.47, 0, 34.92];
A_7M_5MUR5012A = [50, 12, 19.05, 0, 34.92];	
A_7M_5MUR5012B = [50, 12, 25.4, 0, 34.92];

//linear bearings
// [outside dia,length, inside dia]
LM5UU = [10,15,5];
LM6UU = [12,20,6];
LM8UU = [15,24,8];
LME8UU = [16,25,8];
LM10UU = [19,29,10];
LME12UU = [22,32,12];
LM16UU = [28,37,16];
LME20UU = [32,45,20];

//bearings
// [outside dia,length, inside dia]
625zz = [16,5,5];
