total_height = 30;
total_width = 29;

screw_holes = [
    [4.2, 0, 20],
    [4.4, 90, 20],
    [4.6, 180, 20],
    [4.8, 270, 20],
    [3.2, 0, 10],
    [3.4, 90, 10],
    [3.6, 180, 10],
    [3.8, 270, 10]
];

SCREW_HOLE_WIDTH = 0;
SCREW_HOLE_ANGLE = 1;
SCREW_HOLE_HEIGHT = 2;

square_holes = [
    [20.2, 0],
    [20.5, 10],
    [21, 20],
    [21.5, 27]
];

SQUARE_HOLE_WIDTH = 0;
SQUARE_HOLE_HEIGHT = 1;


difference() {
    translate([0, 0, total_height/2]) {
        cube([total_width, total_width, total_height], center=true);
    }
    
    for (square_hole=square_holes) {
        width = square_hole[SQUARE_HOLE_WIDTH];
        height = square_hole[SQUARE_HOLE_HEIGHT];
        
        translate([0, 0, total_height + height]) {
            cube([width, width, total_height*2], center=true);
        }
    }
    
    for (screw_hole=screw_holes) {
        translate([0, 0, screw_hole[SCREW_HOLE_HEIGHT]]) {
            rotate([0, 0, screw_hole[SCREW_HOLE_ANGLE]]) {
                rotate([90, 0, 0]) {
                    cylinder(d=screw_hole[SCREW_HOLE_WIDTH], h=50, $fn=100);
                }
            }
        }
    }
}