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
H = 23;
D = R;
BH = 2.55;

TH = 4.5+H+BH+t;
THD = 4.5+4.5+2.5;
WD = (W2-W)/2;
gap3 = 0.75;


translate([0, 0, 0])
{
    difference()
    {
        union()
        {
            translate([-R2-WD+gap1, -R2-WD+gap1, -R2]) cube([TH+gap3-gap2, W2-gap2, R-gap1]);
            translate([-R2-WD, -R2-WD, -R-R2+gap1]) cube([W2, TH+gap3, R-gap1]);
        }
        #translate([-R2-WD, 0, 0]) rotate([90, 0, 0]) SG92R();
        translate([-R2-WD+4.5+H, 0, 0]) rotate([0, 0, 0]) BEARING4x7x2p5();
        translate([-R2-WD+4.5+H, 0, 0]) rotate([0 ,90, 0]) cylinder(BH+t+gap3+gap1, d=5, $fn=100);
        translate([-R2-WD-gap1, -R2-WD-gap1, 0-gap1]) cube([THD+gap2, W2+gap2, R2+gap2]);
        translate([-R2-WD+19, -R2-WD, 0-3]) cube([5, WD+gap2, 10]);

        #translate([0, -R2-WD, -R]) rotate([-90, 0, 90]) SG92R();
        translate([0, -R2-WD+4.5+H, -R]) rotate([0, 0, 90]) BEARING4x7x2p5();
        translate([0, -R2-WD+4.5+H, -R]) rotate([0 ,90, 90]) cylinder(BH+t+gap3+gap1, d=5, $fn=100);
        translate([-R2-WD-gap1, -R2-WD-gap1, -R-R2-gap1]) cube([W2+gap2, THD+gap2, R2]);
        translate([-R2-WD-gap1, -R2-WD+19, -R-10+3]) cube([WD+gap2, 5, 10]);
        
        translate([-R2-WD-gap1, -R2-WD-gap1, -R2-R-gap1]) cube([R2+WD+gap3/2+gap2, R2+WD+gap3/2+gap2, R*2]);
        
        //45deg
        translate([H-4.5, -50, R2]) rotate([0, 45, 0]) cube([10, 100, 10]);
        translate([-50, H-4.5, -R-R2]) rotate([-45, 0, 0]) cube([100, 10, 10]);
        translate([H-4.5, -R2-WD, -50]) rotate([0, 0, -45]) cube([10, 10, 100]);
        translate([H-4.5, W2-R2-WD, -50]) rotate([0, 0, -45]) cube([10, 10, 100]);
        translate([-2.5-4.5, W2-R2-WD, -50]) rotate([0, 0, 45+90]) cube([10, 10, 100]);
    }
}



module SG92R()
{
    translate([4.5, -R2, -W+R2]) cube([H, R, W]);
    translate([4.5+4.5, -R2, -W2+R2+((W2-W)/2)]) cube([2.5, R, W2]);

    translate([0, 0, 0]) rotate([0 ,90, 0]) cylinder(4.5, d=R, $fn=100);
    translate([-2.5, 0, 0]) rotate([0, 90, 0]) cylinder(2.5, d=5, $fn=100);
    translate([0, 0, -R2]) rotate([0, 90, 0]) cylinder(4.5, d=6, $fn=100);
    
    translate([4.5+4.5, 0, R2+((W2-W)/2)/2]) rotate([0, 90, 0]) cylinder(7, d=0.7, $fn=100);
    translate([0, 0, R2+((W2-W)/2)/2]) rotate([0, 90, 0]) cylinder(4.5+4.5, d=5.5, $fn=100);
    
    translate([4.5+4.5, 0, -W2+R2+((W2-W)/2)+((W2-W)/2)/2]) rotate([0, 90, 0]) cylinder(7, d=0.7, $fn=100);
    translate([0, 0, -W2+R2+((W2-W)/2)+((W2-W)/2)/2]) rotate([0, 90, 0]) cylinder(4.5+4.5, d=5.5, $fn=100);
    
    translate([4.5+4.5+2.5+9.5, -4/2, R2]) cube([1, 4, 5]);
}



module BEARING4x7x2p5()
{
    difference()
    {
        rotate([0, 90, 0]) cylinder(2.75, d=7.5, $fn=100);
        translate([-gap1, 0, 0]) rotate([0, 90, 0]) cylinder(BH+gap2, d=4, $fn=100);
    }
}
