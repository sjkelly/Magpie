//(C) Nathan Zadoks 2012
//CC-BY-SA or GPLv2+, pick your poison.

module tslot_frame(wh=100,h=80,corners=true,fancycorners=true){
	d=tslot_d;
    translate([0,0,-tslot_d])
    translate([1,1]*wh/2) for(i=[1:4]) rotate([0,0,90*i]) translate([1,1]*(wh+tslot_d)/-2){
        tslot(h+tslot_d*2);
        for(z=[0,1]) translate([0,0,z*(h+tslot_d)]){
            translate([1,0,1]*tslot_d/2) rotate([0,90,0]) tslot(wh);
            if(corners) tslot_corner(fancy=fancycorners,flip=(z>0));
        }
    }
}
module tslot_coupling(h=10,nuts=true,bom=true){
    rotate([0,-90,0]) linear_extrude(height=h,center=true) polygon([[0,0],[1,0],[0,1]]*tslot_d*2);
    if(bom) bom_printed(1,"tslot-coupling",h);
}
module tslot_corner(fancy=true,bom=true,flip=false){
    mirror([0,0,(flip!=false)?1:0]) translate([0,0,(flip!=false)?-tslot_d:0]){
        if(fancy) intersection(){
            translate([0,tslot_d/2,tslot_d]) tslot_coupling(tslot_d*6,bom=false);
            translate([tslot_d/2,0,tslot_d]) rotate([0,0,-90]) tslot_coupling(tslot_d*6,bom=false);
            translate([1,1,1]*tslot_d/2) rotate([0,90,0]) tslot_coupling(tslot_d*6,bom=false);
        }
        translate([0,tslot_d/2,tslot_d]) tslot_coupling(bom=false);
        translate([tslot_d/2,0,tslot_d]) rotate([0,0,-90]) tslot_coupling(bom=false);
        translate([1,1,1]*tslot_d/2) rotate([0,90,0]) tslot_coupling(bom=false);
        if(bom) bom_printed(1,"tslot-corner");
    }
}
