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

translate([0, 0, 25])
{
    difference()
    {
        union()
        {
            translate([-Rt2, -9+2.5, -11.5]) cube([Rt, 10, 33]);
        }
        #translate([0, 9, 0]) rotate([0, -90, 90]) SG92R();
        #translate([-2, -6.5, -8.25]) cube([4, 10, 2]);
    }
}



translate([-9, 0, 0]) rotate([0, 90, 0]) SG92R();



/*difference()
{
    union()
    {
        cube([100, 100, 100]);
    }
    SG92R();
}*/

module SG92R()
{
    translate([-R2, -R2, 0]) cube([23, R, 22.5]);
    translate([-R2-5, -R2, 15.5]) cube([33, R, 2.5]);
    translate([-R2-5, -4/2, 4.5]) cube([5, 4, 1]);
    translate([-R2-2.5, 0, 11]) cylinder(7, d=0.7, $fn=100);
    translate([23-R2+2.5, 0, 11]) cylinder(7, d=0.7, $fn=100);
    translate([0, 0, 22.5]) cylinder(4.5, d=R, $fn=100);
    translate([0, 0, 22.5+4.5]) cylinder(2.5, d=5, $fn=100);
    translate([R2, 0, 22.5]) cylinder(4.5, d=5.5, $fn=100);
}
