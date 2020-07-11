//
// ktROBO1
//
//


gap1 = 0.001;
gap2 = 0.002;

t = 2;
R = 12.5;
R2 = 12.5/2;
Rt = R+t;
Rt2 = Rt/2;

HH = 4.5-1;
W = 23.5;
W2 = 33;
H = 23;
D = R;
BH = 2.55;

MH = HH+H;
TH = HH+H+BH+t;
THD = HH+4.5+2.5;
WD = (W2-W)/2;
WF = W2-R2-WD;
WC = -W2/2+R2+WD;
gap3 = 0.95;



A = 1;
B = 1;
B2 = 1;
B3 = 1;
C = 1;
C2 = 1;
C3 = 1;




if(A)
{
translate([0, 0, 0])
{
    difference()
    {
        union()
        {
            rotate([0, 0, 180]) UNIT_B();
            rotate([180, 0, -90]) UNIT_B();
        }
        //45deg
        translate([-W2/2, -50, R-3]) rotate([0, -45, 0]) cube([10, 100, 10]);
        translate([-50, -W2/2, -R+3]) rotate([180+45, 0, 0]) cube([100, 10, 10]);
        translate([W2/2, W2/2-3, -50]) rotate([0, 0, 45]) cube([10, 10, 100]);
        translate([-W2/2, -W2/2+3, -50]) rotate([0, 0, 180+45]) cube([10, 10, 100]);
        translate([W2/2, -W2/2+3, -50]) rotate([0, 0, 180+45]) cube([10, 10, 100]);
        translate([-W2/2, W2/2-3, -50]) rotate([0, 0, 45]) cube([10, 10, 100]);
    }
}
}
if(B)
{
translate([0, 0, -W2-WD-5])
{
    difference()
    {
        union()
        {
            translate([0, 10-R, WD]) rotate([90, 0, 180]) UNIT_A();
            translate([-W2/2, 10-R-t+gap1, -W2/2+WD]) cube([W2, t, W2]);
        }
        translate([W2/2-HH-4.5, 10-R2, W2-R2-WD-WD/2+WD-5.5]) rotate([0, 90, 0]) cylinder(HH+4.5+gap1, d=5.5, $fn=100);
    }
}
    difference()
    {
        union()
        {
            translate([-W2/2, -W2/2-1, -W2-5+W2/2]) cube([W2, W2+1*2, WD]);
            translate([-W2/2, -W2/2-WD-1, -W2-5+W2/2]) cube([W2, WD, WD+R2+5]);
            translate([-W2/2+R2+WD, -W2/2-1-WD+gap1, -R2]) rotate([0 ,90, 90]) cylinder(BH+t+gap3+gap1+5.75-1, d=3.8, $fn=100);
            translate([-W2/2+R2+WD, -W2/2-1-WD+gap1, -R2]) rotate([0 ,90, 90]) cylinder(WD, d=5.5, $fn=100);
        }
        translate([W2/2-HH-4.5, 10-R+R2, -W2-WD-5+WD+W2/2-WD/2]) rotate([0, 90, 0]) cylinder(HH+4.5+gap1, d=5.9, $fn=100);
        translate([-W2/2+R2+WD, -W2/2-1-WD-gap1, -R2]) rotate([0 ,90, 90]) cylinder(BH+t+gap3+gap1+5.75-0.2-2, d=2, $fn=100);
        translate([-W2/2+R2+WD, -W2/2-1-WD-gap1, -R2]) rotate([0 ,90, 90]) cylinder(1.5, d=4, $fn=100);
        
        translate([-W2/2+R2+WD, W2/2-1, -30]) rotate([0, 0, 45]) cube([3, 3, 30]);
        
        translate([-W2/2+WD, W2/2+WD+1+gap1, -W2/2-5+WD/2]) rotate([0, 0, 0]) BOLTNUTM3();
        translate([W2/2-WD, W2/2+WD+1+gap1, -W2/2-5+WD/2]) rotate([0, 0, 0]) BOLTNUTM3();
    }
}
if(B2)
{
    difference()
    {
        union()
        {
            translate([-W2/2, W2/2+1, -W2-5+W2/2-3]) cube([W2, WD, WD+R2+5+3]);
        }
        translate([-W2/2+R2+WD, W2/2+1-gap1, -R2]) #HORN();
        translate([-W2/2+R2+WD, W2/2+1-gap2, -R2]) HORN_UP();
        
        translate([-W2/2+WD, W2/2+WD+1+gap1, -W2/2-5+WD/2]) rotate([0, 0, 0]) BOLTNUTM3();
        translate([W2/2-WD, W2/2+WD+1+gap1, -W2/2-5+WD/2])  rotate([0, 0, 0]) BOLTNUTM3();
    }
}
if(B3)
{
translate([0, 0, -W2-WD-5])
{
        difference()
    {
        union()
        {
            translate([-W2/2, -4.5, -11.54]) rotate([35, 0, 0]) cube([W2, 30, 25]);
            translate([-W2/2, -18.84, 8.5]) rotate([15, 0, 0]) cube([W2, 30, 13.2]);
        }
        translate([-W2/2-gap1, -W2/2-1, WD+W2/2-gap1]) cube([W2+gap2, W2+1*2, 10]);
        translate([-W2/2-gap1, 10-R-t+gap1, -W2/2+WD]) cube([W2+gap2, 50, W2]);
    }
}
}



if(C)
{
translate([0, 0, -W2-5-W2/2+WD+R2])
{
    difference()
    {
        union()
        {
            translate([W2/2+1, -W2/2, -(WD+R2+5+3)]) cube([WD, W2, WD+R2+5+3]);
            translate([-W2/2-WD-1, -W2/2, -(WD+R2+5+3)]) cube([WD, W2, WD+R2+5+3]);
            translate([-W2/2-1, -W2/2, -(WD+R2+5+3)]) cube([W2+1*2, W2, WD]);
        }
        translate([W2/2, 10-R2, 0]) rotate([0, 0, -90]) #HORN();
        translate([W2/2, 10-R2, 0]) rotate([0, 0, -90]) HORN_UP();
        translate([-50, 12, -25]) rotate([0, 0, 0]) cube([100, 20, 30]);
        translate([-24, -40, -25]) rotate([0, 0, 15]) cube([10, 50, 30]);
    }
    
    translate([0, -8, 0]) rotate([0, 0, 15])//15
    {
    translate([-10/2, -10/2, -(WD+R2+5+3)-51.5]) cube([10, 10, 51.5]);
    translate([-10/2+10, 15-10/2+10, -(WD+R2+5+3)-50]) rotate([-70, 0, 180]) cube([10, 10, 23]);
    translate([-10/2, 15-10/2, -(WD+R2+5+3)-70]) cube([10, 10, 20,]);
    translate([0, 15, -(WD+R2+5+3)-75])
    hull()
    {
        translate([-10/2,-10/2,10/2]) cube([10, 10, 1]);
        translate([0,0,0]) cylinder(1, d=10);;
    }
    //#translate([0, 15, -(WD+R2+5+3)-80+10/2]) sphere(d=10);
    }
}
}
if(C3)
{
translate([0, -8, -W2-5-W2/2+WD+R2]) rotate([0, 0, 15])//15
{
    difference()
    {
        union()
        {
            translate([0, 10, -95]) C3_A();
            translate([0, -11, -75]) C3_B();
            //translate([0, -11, -75]) C3_C();

            translate([-40/2, -0, -80]) rotate([110, 0, 0]) cube([40, 14, 40]);
        }
        #translate([0, 15, -(WD+R2+5+3)-80+10/2]) sphere(d=10);
    }

}
}
module C3_A()
{
    scale(2)
    translate([-12/2, 0, 0])
    rotate([0, -90, 180])
    linear_extrude(12)
    polygon(points=[[0,0],[0,-5],[10,-6],[12,-9],[22,-7],[19,-3],[11,-2],[10,0]]);
}
module C3_B()
{
    scale(1.7)
    rotate([90, 0, 90])
    {
        translate([0, 0, -16/2])
        linear_extrude(16)
        polygon(points=[[4,0],[10,4],[10,9],[7,12],[7,17],[14,24],[10,31],[-5,35],[3,26],[3,11],[-1,6],[4,0]]);
        translate([0, 0, -24/2])
        linear_extrude(24)
        polygon(points=[[15,28],[-7,58],[-11,51],[-6,33],[15,28]]);
    }
}
module C3_C()
{
    scale(1.7)
    rotate([90, 0, 90])
    {
        translate([0, 0, -28/2])
        linear_extrude(28)
        polygon(points=[[19,26],[19,35],[6,50],[-2,50],[-1,42],[9,28]]);
    }
}



module UNIT_A ()
{
    translate([-W2/2, R2+WD-W2/2, R2-gap1])
    difference()
    {
        union()
        {
            translate([gap1, -R2-WD+gap1, -R2+gap1]) cube([W2, W2-gap2, R-gap2]);
        }
        #translate([0, 0, 0]) rotate([0, 0, 0]) SG92R();
        translate([MH-gap1, 0, 0]) rotate([0, 0, 0]) BEARING4x7x2p5();
        translate([HH+H-gap1, 0, 0]) rotate([0 ,90, 0]) cylinder(W2-H+gap2, d=5, $fn=100);
        translate([-gap1, -R2-WD-gap1, gap1]) cube([THD+gap2, W2+gap2, R2+gap2]);
        translate([19, -R2-WD, 0-3]) cube([5, WD+gap2, 10]);
    }
}
module UNIT_B ()
{
    translate([-W2/2, -R2-WD+W2/2, R2-gap1])
    difference()
    {
        union()
        {
            translate([gap1, -W2+R2+WD+gap1, -R2+gap1]) cube([W2, W2-gap2, R-gap2]);
        }
        #translate([0, 0, 0]) rotate([180, 0, 0]) SG92R();
        translate([MH-gap1, 0, 0]) rotate([0, 0, 0]) BEARING4x7x2p5();
        translate([HH+H-gap1, 0, 0]) rotate([0 ,90, 0]) cylinder(W2-H+gap2, d=5, $fn=100);
        translate([-gap1, -W2+R2+WD-gap1, gap1]) cube([THD+gap2, W2+gap2, R2+gap2]);
        translate([19, R2-gap1, 0-3]) cube([5, WD+gap2, 10]);
    }
}

module SG92R()
{
    translate([HH, -R2, -R2]) cube([H, W, R]);
    translate([HH+4.5, -R2-WD, -R2]) cube([2.5, W2, R]);

    translate([0, 0, 0]) rotate([0 ,90, 0]) cylinder(HH+gap1, d=R, $fn=100);
    translate([-2.5, 0, 0]) rotate([0, 90, 0]) cylinder(2.5, d=5, $fn=100);
    translate([0, R2, 0]) rotate([0, 90, 0]) cylinder(HH+gap1, d=6, $fn=100);
    
    //translate([HH+4.5, -R2-WD/2, 0]) rotate([0, 90, 0]) cylinder(7, d=0.7, $fn=100);
    translate([HH+4.5, -R2-WD/2, 0]) rotate([0, 90, 0]) cylinder(7, d=1.2, $fn=100);
    translate([0, -R2-WD/2, 0]) rotate([0, 90, 0]) cylinder(HH+4.5+gap1, d=5.9, $fn=100);
    
    //translate([HH+4.5, W2-R2-WD-WD/2, 0]) rotate([0, 90, 0]) cylinder(7, d=0.7, $fn=100);
    translate([HH+4.5, W2-R2-WD-WD/2, 0]) rotate([0, 90, 0]) cylinder(7, d=1.2, $fn=100);
    translate([0, W2-R2-WD-WD/2, 0]) rotate([0, 90, 0]) cylinder(HH+4.5+gap1, d=5.9, $fn=100);
    
    translate([HH+4.5+2.5+9.5, -5-R2+gap1, -4/2]) cube([1, 5, 4]);
}



module HORN()
{
    translate([0, 0, 0]) rotate([-90, 0, 0]) cylinder(4, d=8.5, $fn=100);
    translate([0, 2.5, -15]) rotate([-90, 0, 0]) cylinder(1.5, d=4.5, $fn=100);
    translate([-4.5/2, 2.5, -15]) rotate([0, 4, 0]) cube([4.5, 1.5, 15]);
    translate([-4.5/2, 2.5, -15]) rotate([0, -4, 0]) cube([4.5, 1.5, 15]);
    translate([0, 2.5-(4-1.5)+gap1, -15]) rotate([-90, 0, 0]) cylinder(4-1.5, d=0.7, $fn=100);
    translate([0, 2.5-(4-1.5)+gap1, -15+8.2]) rotate([-90, 0, 0]) cylinder(4-1.5, d=0.7, $fn=100);
}
module HORN_UP()
{
    translate([0, 4-gap1, 0])
    {
        translate([0, 0, 0]) rotate([-90, 0, 0]) cylinder(10, d=8.5, $fn=100);
            translate([0, 0, -15]) rotate([-90, 0, 0]) cylinder(10, d=4.5, $fn=100);
            translate([-4.5/2, 0, -15]) rotate([0, 4, 0]) cube([4.5, 10, 15]);
            translate([-4.5/2, 0, -15]) rotate([0, -4, 0]) cube([4.5, 10, 15]);
    }
}


module BEARING4x7x2p5()
{
    difference()
    {
        rotate([0, 90, 0]) cylinder(2.75, d=7.5, $fn=100);
        translate([-gap1, 0, 0]) rotate([0, 90, 0]) cylinder(BH+gap2, d=4, $fn=100);
    }
}


module BOLTNUTM3()
{
    BLL = 10;
    BL = 3;
    NW = 6.5;
    NH = 3;
    translate([0, 0, 0]) rotate([90, 0, 0]) cylinder(BL, d=5.5, $fn=100);
    translate([0, -BL+gap1, 0]) rotate([90, 0, 0]) cylinder(BLL, d=3.5, $fn=100);
    #translate([0, -(BLL-1), 0]) rotate([90, 0, 0]) cylinder(NH, d=NW, $fn=6);
    translate([-NW/2, -(BLL-1)-NH, 0]) cube([NW, NH, NW/2+gap1]);
}


module TRAPEZOID
(
TZX1 = 10,
TZY1 = 10,
TZX2 = 10,
TZY2 = 10,
TZZ = 10,
SX = 0,
SY = 0
)
{
    translate([-TZX2/2, 0, 0])
    hull()
    {
        translate([TZX2/2-TZX1/2+SX, TZY2/2-TZY1/2+SY, TZZ]) cube([TZX1, TZY1, gap1]);
        cube([TZX2, TZY2, gap1]);
    }
}