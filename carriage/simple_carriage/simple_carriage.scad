width = 65;
length = 15;
height = 23;

smooth_rod_inset_y = 27;
smooth_rod_offset_x = 23;
lead_screw_inset = 30;

// The distance that the carriage should maintain from the extrusion.
carriage_offset = 3;

extrusion_center = -length/2 - carriage_offset - 10;


linear_bearing_width = 16;
screw_width = 3.5;
screw_distance = 12;
screw_depth = 15;
lead_screw_width = 11.5;
lead_screw_flange_width = 24;

limit_switch_screw_offset_x = 2.7;
limit_switch_screw_offset_y = 6;
limit_switch_screw_width = 3.9;
limit_switch_screw_depth = 15;

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
    
    for (side = [-1, 1]) {
    translate([length + 10, side*45/2, 0])
    rotate([0, -45, 0])
    cylinder(d=13, h=7, $fn=100, center=true);
    }
    
    // Linear bearing holes
    for (side = [-1, 1]) {
        translate([extrusion_center + smooth_rod_inset_y, side*smooth_rod_offset_x, 0]) {
            cylinder(h = height*2, d=linear_bearing_width, center=true, $fn=100);
        }
    }
    
    // Lead screw
    translate([extrusion_center + lead_screw_inset, 0, 0]) {
        // Nut screw holes
        for (offsets = [[1, 1], [1, -1], [-1, 1], [-1, -1]]) {
            translate([offsets[0]*screw_distance/2, offsets[1]*screw_distance/2, height/2 - screw_depth/2 + 1]) {
                cylinder(h = screw_depth + .5, d=screw_width, center=true, $fn=100);
            }
        }
        // Lead screw hole
        cylinder(h = height*2, d=lead_screw_width, center=true, $fn=100);
        
        translate([0, 0, -height])
        cylinder(h = height*2, d=lead_screw_flange_width, center=true, $fn=100);
    }
    
    for (side = [-2, -1, 0, 1, 2]) {
    // Limit switch adjustment screw
        translate([-length/2 + limit_switch_screw_offset_x, side*limit_switch_screw_offset_y, height/2 - limit_switch_screw_depth/2 + 1]) {
            cylinder(h = limit_switch_screw_depth + .5, d=limit_switch_screw_width, center=true, $fn=100);
        }
    }

}