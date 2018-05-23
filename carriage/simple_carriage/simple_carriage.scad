
width = 65;
length = 15;
height = 23;


linear_bearing_width = 16;
screw_width = 3.7;
screw_distance = 12;
screw_depth = 10;
lead_screw_width = 11.5;

linear_bearing_offset = 13.5;
lead_screw_offset = 28.5;

limit_switch_screw_offset = 2.7;
limit_switch_screw_width = 4.1;
limit_switch_screw_depth = 10;

// The `difference` function starts with the first thing and
// subtracts everything that follows.
difference() {
    // Here's the basic shape. Union makes the multiple shapes
    // into a single thing.
    union() {
        cube([length, width, height], center=true);
        translate([length/2, width/2, -height/2]) {
            rotate([90, 0, 0]) {
                linear_extrude(height=width) {
                    polygon([[0, 0],[0, height],[30, height]]);
                }
            }
        }
    }
    
    // Linear bearing hole
    translate([-length/2 + linear_bearing_offset, 0, 0]) {
        cylinder(h = height*2, d=linear_bearing_width, center=true, $fn=100);
    }
    
    // Lead screw
    translate([-length/2 + lead_screw_offset, 0, 0]) {
        // Nut screw holes
        for (offsets = [[1, 1], [1, -1], [-1, 1], [-1, -1]]) {
            translate([offsets[0]*screw_distance/2, offsets[1]*screw_distance/2, height/2 - screw_depth/2 + 1]) {
                cylinder(h = screw_depth + .5, d=screw_width, center=true, $fn=100);
            }
        }
        // Lead screw hole
        cylinder(h = height*2, d=lead_screw_width, center=true, $fn=100);
    }
    
    // Limit switch adjustment screw
    translate([-length/2 + limit_switch_screw_offset, 0, height/2 - limit_switch_screw_depth/2 + 1]) {
        cylinder(h = limit_switch_screw_depth + .5, d=limit_switch_screw_width, center=true, $fn=100);
    }

}