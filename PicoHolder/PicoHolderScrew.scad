$fn=36;
Screw=1.9;
array=[[4.8,2],[4.8,51-2],[4.8+11.4,2],[4.8+11.4,51-2]];
difference(){
    union(){
        hull() for(i=[0:3]) translate(array[i]) cylinder(h=1.5,d=5);
        for(i=[0:3]) translate(array[i]) cylinder(h=5,d=3.8);
    }
    for(i=[0:3]) translate(array[i]) translate([0,0,1.5]) cylinder(h=8,d=Screw);
}