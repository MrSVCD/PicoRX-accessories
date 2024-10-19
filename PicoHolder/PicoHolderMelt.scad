$fn=36;
array=[[4.8,2],[4.8,51-2],[4.8+11.4,2],[4.8+11.4,51-2]];
union(){
    hull() for(i=[0:3]) translate(array[i]) cylinder(h=1.5,d=5);
    for(i=[0:3]) translate(array[i]) cylinder(h=5,d=3.8);
    for(i=[0:3]) translate(array[i]) cylinder(h=8,d=1.9);
}