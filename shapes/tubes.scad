eps = 0.001;

module cutTube(inner=1, outer=2, h=10, start=0, finish=80, round=false){
    union(){
        difference(){
            cylinder(r=outer,h=h);
            translate([0,0,-1])cylinder(r=inner,h=h+2);
            for(i=[0:5]){
            hull(){
                rotate([0,0,start+(finish-start)*i/6])translate([0,0,-1])cube([outer*5,eps,h+2]);
                // get rid of nasty render overlap
                if(i<5){
                    rotate([0,0,start+(finish-start)*(i+1)/6])translate([0,0,-1])cube([outer*5,1,h+2]);
                }
                else{
                    rotate([0,0,start+(finish-start)*(i+1)/6])translate([0,0,-1])cube([outer*5,eps,h+2]);
                }
            }
            }
        }
        if(round){
            r = (outer-inner)/2;
            rotate([0,0,start])translate([outer-r,0,0])cylinder(r=r,h=h);
            rotate([0,0,finish])translate([outer-r,0,0])cylinder(r=r,h=h);
        }
    }
}
