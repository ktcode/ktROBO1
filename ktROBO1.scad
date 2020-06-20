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
BH = 2.75;

TH = 4.5+H+BH+t;
THD = 4.5+4.5+2.5;
WD = (W2-W)/2;
gap3 = 0.375;


translate([0, 0, 0])
{
    difference()
    {
        union()
        {
            translate([-TH/2-gap3, -R2-t-2, -R2-WD]) cube([TH+gap3*2, R+t+2-gap1, W2]);
            translate([R2-W/2-R2-WD, -TH/2, -R-((W2-W)/2)-R2+gap1]) cube([W2, TH, R-gap1]);
            translate([R2-W/2-R2-WD, -TH/2, -((W2-W)/2)-R2+gap1]) cube([W2, TH, t]);
        }
        translate([-TH/2-gap3, 0, 0]) rotate([180, 0, 0]) SG92R();
        translate([TH/2-BH-t-gap3, 0, 0]) rotate([0, 0, 0]) BEARING4x7x2p5();
        translate([TH/2-BH-t-gap3, 0, 0]) rotate([0 ,90, 0]) cylinder(BH+t+gap1+gap3*2, d=4.5, $fn=100);
        translate([-TH/2-gap1-gap3, -gap1, -R2-(W2-W)/2-gap1]) cube([THD+gap2, R2+gap2, W2+gap2]);
        translate([2.5-gap3, -3, -R2-WD]) cube([5, R*2, WD]);
        translate([-TH/2+4.5+4.5-gap3, -R2, -R2-WD]) cube([2.5, R*2, WD]);

        #translate([R2-W/2, -TH/2, -R-((W2-W)/2)]) rotate([-90, 0, 90]) SG92R();
        translate([R2-W/2, TH/2-BH-t, -R-((W2-W)/2)]) rotate([0, 0, 90]) BEARING4x7x2p5();
        translate([R2-W/2, TH/2-BH-t, -R-((W2-W)/2)]) rotate([0 ,90, 90]) cylinder(BH+t+gap1, d=4.5, $fn=100);
        translate([R2-W/2-R2-WD-gap1, -TH/2-gap1, -R-((W2-W)/2)-R2-gap1]) cube([W2+gap2, THD+gap2, R2]);
        translate([-W/2-5, 3, -R-((W2-W)/2)-7]) cube([5, 4, 10]);
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
        rotate([0, 90, 0]) cylinder(2.75, d=7.25, $fn=100);
        translate([-gap1, 0, 0]) rotate([0, 90, 0]) cylinder(BH+gap2, d=4, $fn=100);
    }
}
