bredd=(27+7+7+10)*2;
$fn=90;

difference(){
    hull(){
        translate([    5,   5]) cylinder(h=6,r=5);
        translate([    5,60-5]) cylinder(h=6,r=5);
        translate([bredd-5,   5]) cylinder(h=6,r=5);
        translate([bredd-5,60-5]) cylinder(h=6,r=5);
    }
    translate([0,0,4]){
        difference(){
            hull(){
                translate([    5,   5]) cylinder(h=22,r=5.1);
                translate([    5,60-5]) cylinder(h=22,r=5.1);
                translate([bredd-5,   5]) cylinder(h=22,r=5.1);
                translate([bredd-5,60-5]) cylinder(h=22,r=5.1);
            }
            hull(){
                translate([    5,   5]) cylinder(h=22,r=3.1);
                translate([    5,60-5]) cylinder(h=22,r=3.1);
                translate([bredd-5,   5]) cylinder(h=22,r=3.1);
                translate([bredd-5,60-5]) cylinder(h=22,r=3.1);
            }
        }
        translate([    5,   5]) cylinder(h=22,r=5.1);
        translate([    5,60-5]) cylinder(h=22,r=5.1);
        translate([bredd-5,   5]) cylinder(h=22,r=5.1);
        translate([bredd-5,60-5]) cylinder(h=22,r=5.1);
    }
    translate([0,0,1]) difference(){
                hull(){
                    translate([    5,   5]) cylinder(h=22,r=5.1);
                    translate([    5,60-5]) cylinder(h=22,r=5.1);
                    translate([bredd-5,   5]) cylinder(h=22,r=5.1);
                    translate([bredd-5,60-5]) cylinder(h=22,r=5.1);
                }
        union(){
            difference(){
                hull(){
                    translate([    5,   5]) cylinder(h=22,r=5.1);
                    translate([    5,60-5]) cylinder(h=22,r=5.1);
                    translate([bredd-5,   5]) cylinder(h=22,r=5.1);
                    translate([bredd-5,60-5]) cylinder(h=22,r=5.1);
                }
                hull(){
                    translate([    5,   5]) cylinder(h=22,r=1.1);
                    translate([    5,60-5]) cylinder(h=22,r=1.1);
                    translate([bredd-5,   5]) cylinder(h=22,r=1.1);
                    translate([bredd-5,60-5]) cylinder(h=22,r=1.1);
                }
            }
            translate([    5,   5]) cylinder(h=22,r=7);
            translate([    5,60-5]) cylinder(h=22,r=7);
            translate([bredd-5,   5]) cylinder(h=22,r=7);
            translate([bredd-5,60-5]) cylinder(h=22,r=7);
        }
    }
    translate([    5,   5]) cylinder(h=30,r=1.4);
    translate([    5,60-5]) cylinder(h=30,r=1.4);
    translate([bredd-5,   5]) cylinder(h=30,r=1.4);
    translate([bredd-5,60-5]) cylinder(h=30,r=1.4);
}

translate([0,100])
difference(){
    union(){
        //cube([100,100,5]);
        difference(){
            hull(){
                translate([    5,   5]) cylinder(h=22,r=5);
                translate([    5,60-5]) cylinder(h=22,r=5);
                translate([bredd-5,   5]) cylinder(h=22,r=5);
                translate([bredd-5,60-5]) cylinder(h=22,r=5);
            }
            translate([0,0,4]) hull(){
                translate([    5,   5]) cylinder(h=22,r=3);
                translate([    5,60-5]) cylinder(h=22,r=3);
                translate([bredd-5,   5]) cylinder(h=22,r=3);
                translate([bredd-5,60-5]) cylinder(h=22,r=3);
            }
        }
        translate([    5,   5]) cylinder(h=22,r=5);
        translate([    5,60-5]) cylinder(h=22,r=5);
        translate([bredd-5,   5]) cylinder(h=22,r=5);
        translate([bredd-5,60-5]) cylinder(h=22,r=5);
    }
    translate([bredd-30,60-30]) rotate([0,180,0]) screencut();
    translate([25,60-15]) cylinder(h=10,d=7);
    translate([25,60-15,9]) cube([14,14,14],center=true);

    translate([15,60-40]) cube([14,14,14],center=true);
    translate([35,60-40]) cube([14,14,14],center=true);

    translate([    5,   5]) cylinder(h=30,r=1.6);
    translate([    5,60-5]) cylinder(h=30,r=1.6);
    translate([bredd-5,   5]) cylinder(h=30,r=1.6);
    translate([bredd-5,60-5]) cylinder(h=30,r=1.6);

    translate([70,0,20-7.5]) rotate([90,0,0]) cylinder(h=10,d=6.2,center=true);
    translate([70,60,30]) rotate([90,0,0]) cylinder(h=10,r=15,center=true);
}

//translate([30,100-25]) screencover();

module screencut(){
    translate([-29/2,-27.5/2]) cube([29,27.5,2.5]);
    translate([-27/2,-19.5/2,2.5]) cube([27,19.5,2]);
    translate([-14/2,-27.5/2,2.5]) cube([14,27.5,2]);
    translate([-29/2,-10/2,-10]) cube([29,10,10]);
    translate([-12/2,(27.5/2)-4,-10]) cube([12,4,10]);
    translate([0,(19.5-12)/2-1]){
        hull(){
            translate([0,-0.5,10]) cube([23,13,10],center=true);
            translate([0,-0.5,20]) cube([23+10,13+10,10],center=true);
        }
    translate([0,-0.5,2.5]) cube([23,13,5],center=true);
    }
    //translate([-50,-50]) cube([100,100,1]);
    
    for(i=[90:90:360]) rotate([0,0,i]) translate([(27+7)/2,(27+7)/2]) cylinder(h=20,d=3.2);
    for(i=[90:90:360]) rotate([0,0,i]) translate([(27+7)/2,(27+7)/2,-10]) cylinder(h=20,d=2.8);
}

module screencover(){
    difference(){
        minkowski(){
            hull() for(i=[90:90:360]) rotate([0,0,i]) translate([(27+7)/2,(27+7)/2]) cylinder(h=1.5,d=7);
            sphere(4);
        }
        translate([-50,-50,-10]) cube([100,100,10]);
    }
}