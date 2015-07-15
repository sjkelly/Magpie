include <../hardware/dimensions.scad>;
include <../electronics/dimensions.scad>;

// Assign object array
function object(object) = 
	(object=="M2") ? M2 : 
	(object=="M2.5") ? M2_5 : 
	(object=="M3") ? M3 : 
	(object=="M4") ? M4 : 
	(object=="M5") ? M5 : 
	(object=="M6") ? M6 : 
	(object=="M8") ? M8 : 
	(object=="NEMA8") ? NEMA8 : 
	(object=="NEMA11") ? NEMA11 : 
	(object=="NEMA14") ? NEMA14 : 
	(object=="NEMA17") ? NEMA17 : 
	(object=="Pololu 35x26") ? Pololu35x26 :
	(object=="NEMA17_TR8X8_210mm") ? NEMA17_TR8X8_210mm :
	// (object=="Melzi") ? melzi : 
	// (object=="Mega") ? mega : 
	// (object=="Printrboard") ? printrboard : 
	// (object=="Sanguinololu") ? sanguinololu :
	(object=="RAMBo") ? RAMBo :
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
	(object == "LM5UU") ? LM5UU :
	(object == "LM6UU") ? LM6UU :
	(object == "LM8UU") ? LM8UU :
	(object == "LME8UU") ? LME8UU :
	(object == "LM10UU") ? LM10UU :
	(object == "LME12UU") ? LME12UU :
	(object == "LM16UU") ? LM16UU :
	(object == "LME20UU") ? LME20UU :
	(object == "625ZZ") ? 625zz :
	(object == "683ZZ") ? 683zz :
	(object == "693ZZ") ? 693zz :
	(object == "603ZZ") ? 603zz :
	(object == "623ZZ") ? 623zz :
	(object == "684ZZ") ? 684zz :
	(object == "694ZZ") ? 694zz :
	(object == "604ZZ") ? 604zz :
	(object == "624ZZ") ? 624zz :
	(object == "634ZZ") ? 634zz :
	(object == "685ZZ") ? 685zz :
	(object == "695ZZ") ? 695zz :
	(object == "605ZZ") ? 605zz :
	(object == "625ZZ") ? 625zz :
	(object == "635ZZ") ? 635zz :
	(object == "686ZZ") ? 686zz :
	(object == "696ZZ") ? 696zz :
	(object == "606ZZ") ? 606zz :
	(object == "626ZZ") ? 626zz :
	(object == "687ZZ") ? 687zz :
	(object == "697ZZ") ? 697zz :
	(object == "607ZZ") ? 607zz :
	(object == "627ZZ") ? 627zz :
	(object == "688ZZ") ? 688zz :
	(object == "698ZZ") ? 698zz :
	(object == "608ZZ") ? 608zz :
	(object == "689ZZ") ? 689zz :
	(object == "699ZZ") ? 699zz :
	"error";

