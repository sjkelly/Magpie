include <hardware_dims.scad>

// Assign object array
function object(object) = 
	(object=="M2") ? m2 : 
	(object=="M2.5") ? m2_5 : 
	(object=="M3") ? m3 : 
	(object=="M4") ? m4 : 
	(object=="M5") ? m5 : 
	(object=="M6") ? m6 : 
	(object=="M8") ? m8 : 
	(object=="NEMA8") ? nema8 : 
	(object=="NEMA11") ? nema11 : 
	(object=="NEMA14") ? nema14 : 
	(object=="NEMA17") ? nema17 : 
	(object=="Pololu 35x26") ? pololu35x26 :
	(object=="Melzi") ? melzi : 
	(object=="Mega") ? mega : 
	(object=="Printrboard") ? printrboard : 
	(object=="Sanguinololu") ? sanguinololu :
	(object=="Arcol8x5") ? arcol8x5 : 
	(object=="Arcol11x8") ? arcol11x8 : 
	(object=="Arcol11x5") ? arcol11x5 : 
	(object=="Arcol13x8") ? arcol13x8 : 
	(object == "A_7T_5MUR1405") ? A_7T_5MUR1405 : 
	(object == "A_7T_5MUR1606") ? A_7T_5MUR1606 : 
	(object == "A_7T_5MUR1905") ? A_7T_5MUR1905 : 
	(object == "A_7T_5MUR1906") ? A_7T_5MUR1906 : 
	(object == "A_7T_5MUR2206") ? A_7T_5MUR2206 : 
	(object == "A_7T_5MUR2510") ? A_7T_5MUR2510 : 
	(object == "A_7T_5MUR3210") ? A_7T_5MUR3210 : 
	(object == "A_7T_5MUR3810") ? A_7T_5MUR3810 : 
	(object == "A_7T_5MUR3812") ? A_7T_5MUR3812 : 
	(object == "A_7T_5MUR4412") ? A_7T_5MUR4412 : 
	(object == "A_7T_5MUR5012") ? A_7T_5MUR5012 : 
	(object == "A_7M_5MUR1206A") ? A_7M_5MUR1206A : 	
	(object == "A_7M_5MUR1206B") ? A_7M_5MUR1206B : 
	"error";
	
