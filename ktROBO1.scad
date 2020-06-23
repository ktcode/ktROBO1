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
gap3 = 0.95;



A = 1;
B = 1;


if(A)
{
translate([0, 0, 0])
{
    difference()
    {
        union()
        {
            translate([-W2+R2+WD+gap1, -R2-WD+gap1, -R2]) cube([TH+gap3-gap2, W2-gap2, R-gap1]);
            translate([-W2+R2+WD, -R2-WD, -R-R2+gap1]) cube([W2, TH+gap3, R-gap1]);
        }
        #translate([-W2+R2+WD, 0, 0]) rotate([90, 0, 0]) SG92R();
        translate([-W2+R2+WD+4.5+H, 0, 0]) rotate([0, 0, 0]) BEARING4x7x2p5();
        translate([-W2+R2+WD+4.5+H, 0, 0]) rotate([0 ,90, 0]) cylinder(BH+t+gap3+gap1, d=5, $fn=100);
        translate([-W2+R2+WD-gap1, -R2-WD-gap1, 0-gap1]) cube([THD+gap2, W2+gap2, R2+gap2]);
        translate([-W2+R2+WD+19, -R2-WD, 0-3]) cube([5, WD+gap2, 10]);

        #translate([0, -R2-WD, -R]) rotate([90, 0, 90]) SG92R();
        translate([0, -R2-WD+4.5+H, -R]) rotate([0, 0, 90]) BEARING4x7x2p5();
        translate([0, -R2-WD+4.5+H, -R]) rotate([0 ,90, 90]) cylinder(BH+t+gap3+gap1, d=5, $fn=100);
        translate([-W2+R2+WD-gap1, -R2-WD-gap1, -R-R2-gap1]) cube([W2+gap2, THD+gap2, R2]);
        translate([-WD+R2+WD-gap1, -R2-WD+19, -R-10+3]) cube([WD+gap2, 5, 10]);
        
        translate([-W2+R2+WD-gap1, -R2-WD-gap1, -R2-R-gap1]) cube([R2+WD+gap3/2+gap2, R2+WD+gap3/2+gap2, R*2]);
        
        //45deg
        translate([R2+1.25, -50, R2]) rotate([0, 45, 0]) cube([10, 100, 10]);
        translate([-50, H-4.5, -R-R2]) rotate([-45, 0, 0]) cube([100, 10, 10]);
        translate([R2+WD+1.25, -R2, -50]) rotate([0, 0, -45-90]) cube([10, 10, 100]);
        translate([R2, W2-R2-WD+1.25, -50]) rotate([0, 0, -45]) cube([10, 10, 100]);
        translate([-W2+R2+WD, H-4.5, -50]) rotate([0, 0, 45]) cube([10, 10, 100]);
    }
}
}

if(B)
{
translate([-18, 0, -W2+R2+WD-R2-R-5])
{
    difference()
    {
        union()
        {
            translate([0, -R2-t, -R2-WD]) cube([TH, R+t-gap1, W2]);
            translate([0, -R2-WD-t, W2-R2-WD-WD]) cube([TH, W2+t*2, WD]);
        }
        #translate([0, 0, 0]) rotate([180, 0, 0]) SG92R();
        translate([H+4.5, 0, 0]) rotate([0, 0, 0]) BEARING4x7x2p5();
        translate([H+4.5, 0, 0]) rotate([0 ,90, 0]) cylinder(BH+t+gap1, d=5, $fn=100);
        translate([0-gap1, 0+gap1, -R2-WD-gap1]) cube([THD+gap2, R2+gap2, W2-12.5+gap2]);
        translate([19, 0-3, -R2-WD-gap1]) cube([5, 10, WD+gap2]);
        
        translate([4.5+4.5-0.5, R2, -R2-WD+W2-WD-gap1]) cube([2.5+1, R+1, WD+gap2]);
    }
    
    difference()
    {
        union()
        {
            translate([0, W2-R2-WD+1, -R2-WD+W2-WD]) cube([TH, WD, WD+R2+5]);
            translate([0, -R2-WD-t-WD, -R2-WD+W2-WD]) cube([TH, WD, WD+R2+5]);
        }
    }
}
    difference()
    {
        union()
        {
            translate([0, -R2-WD+4.5+H+0.2, -R]) rotate([0 ,90, 90]) cylinder(BH+t+gap3+gap1+5.75-0.2, d=3.5, $fn=100);
        }
        translate([0, -R2-WD+4.5+H+0.2, -R]) rotate([0 ,90, 90]) cylinder(BH+t+gap3+gap1+5.75-0.2, d=0.7, $fn=100);
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
