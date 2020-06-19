//
// ktROBO1
//
//


gap1 = 0.001;
gap2 = 0.002;

t = 2;
R = 12.5;
R2 = 12.5/2;
Rt = R+t*2;
Rt2 = Rt/2;

W = 23.5;
W2 = 33;
H = 22.5;
D = R;


translate([0, 0, 0])
{
    difference()
    {
        union()
        {
            translate([-H-R2+2.5, -R2-t, -W2+R2+((W2-W)/2)]) cube([Rt+H-2.5, Rt, W2]);
            translate([-R2-t, -(H+4.5+2.5+t)/2+4.5+2.5, -W2+R2+((W2-W)/2)]) cube([Rt, (H+4.5+2.5+t)-4.5-2.5, W2]);
        }
        translate([-4.5-H-R2, 0, 0]) rotate([0, 0, 0]) SG92R();
        translate([0, -(H+4.5+2.5+t)/2, 0]) rotate([0, 0, 90]) SG92R();
        translate([R2-gap1, 0, 0]) BEARING4x7x2p5();
        translate([R2-gap2, 0, 0]) rotate([0 ,90, 0]) cylinder(10, d=4.5, $fn=100);
        translate([0, (H+4.5+2.5+t)/2-2.75-t, 0]) rotate([0, 0, 90]) BEARING4x7x2p5();
        translate([0, (H+4.5+2.5+t)/2-2.75-t, 0]) rotate([0 ,90, 90]) cylinder(10, d=4.5, $fn=100);
        
        #translate([-H-R2-gap1, -R2-t-gap1-5, -W+R2-10]) cube([H+gap2, t+gap2+5, 50]);
        translate([-R2-11, -15+5, 0]) cube([11, 15, 15]);
        translate([-8, -1, 0]) cube([11, 6, 15]);
    }
    translate([-8, -3.75, R2+((W2-W)/2)]) cube([11+4, 4+4*2, 4]);
    translate([-R2-11-4, -R2-t, R2+((W2-W)/2)]) cube([11+4+4, Rt, 4]);
    
}



module SG92R()
{
    translate([4.5, -R2, -W+R2]) cube([H, R, W]);
    translate([4.5, -R2, -W2+R2+((W2-W)/2)]) cube([2.5, R, W2]);
    translate([4.5, 0, R2+((W2-W)/2)/2]) rotate([0, 90, 0]) cylinder(7, d=0.7, $fn=100);
    translate([4.5, 0, -W2+R2+((W2-W)/2)+((W2-W)/2)/2]) rotate([0, 90, 0]) cylinder(7, d=0.7, $fn=100);
    translate([0, 0, 0]) rotate([0 ,90, 0]) cylinder(4.5, d=R, $fn=100);
    translate([-2.5, 0, 0]) rotate([0, 90, 0]) cylinder(2.5, d=5, $fn=100);
    translate([0, 0, -R2]) rotate([0, 90, 0]) cylinder(4.5, d=5.5, $fn=100);
    translate([4.5+2.5+9.5, -4/2, R2]) cube([1, 4, 5]);
}


module BEARING4x7x2p5()
{
    difference()
    {
        rotate([0, 90, 0]) cylinder(2.75, d=7.25, $fn=100);
        translate([-gap1, 0, 0]) rotate([0, 90, 0]) cylinder(2.75+gap2, d=4, $fn=100);
    }
}
