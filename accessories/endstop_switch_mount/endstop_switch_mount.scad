lengths = [8, 12];
widths = [3.5, 9];
heights = [6, 3];

nut_trap_depth = 1.2;
thickness = 3;

difference() {
    union() {
        translate([0, -4, 1.5]) cube(size=[10, 38, thickness], center=true);
        translate([0, -(21 + thickness/2), 18/2]) cube(size=[10, thickness, 18], center=true);
        translate([0, thickness/2, 10/2]) cube(size=[10, thickness, 10], center=true);
    }
//translate([-8, -10]) {
//    cylinder(d = 5, h = 20, $fn = 100, center = true);  
//}
translate([0, 0, thickness + 10.5]) rotate([90, 0, 0]) cylinder(h=100, d=5, $fn=100, center=true);
for (offsets = [[0, -10], [0, 10]]) {
    translate([offsets[0], offsets[1]]) {
        cylinder(d = 3.8, h = 20, $fn = 100, center = true);  
        translate([0, 0, 3 - nut_trap_depth]) cylinder(d = 6 / cos(180 / 6) + 0.2, h = nut_trap_depth + 1, $fn = 6);
    }
}
}