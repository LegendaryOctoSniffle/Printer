// From the middle of the extrusion to the middle of the lead screw is 30.

// Take away 10 for the extrusion
// Take away 15 for the bearing height
// That leaves 5

difference() {
    cube([55, 12, 5], center=true);
    cylinder(d=4, h=100, center=true, $fn=100);
    for (side = [-1, 1]) {
        translate([side*21, 0, 0]) {
            cylinder(d=3, h=100, center=true, $fn=100);
        }
    }
}