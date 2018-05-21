side_length = 330;
extrusion_inset = 25;
thickness = 20;
bottom_thickness = 5;

smooth_rod_inset = 22;
lead_screw_inset = 37;

smooth_rod_width = 9;
lead_screw_width = 15;
stepper_motor_screw_distance = 31;
stepper_motor_screw_width = 3.7;


center_distance = side_length*sqrt(3)/3;
wing_x = cos(60)*side_length/2;
wing_y = sin(60)*side_length/2;

difference() {

// The main bulk of the body
linear_extrude(height=thickness) {
hull() {
    circle(d=5, center=true, $fn=100);
    translate([0, side_length*sqrt(3)/3, 0]) {
        circle(d=5, center=true, $fn=100);
    }
    translate([cos(60)*side_length/2, sin(60)*side_length/2, 0]) {
        circle(d=1, center=true, $fn=100);
    }
    translate([-cos(60)*side_length/2, sin(60)*side_length/2, 0]) {
        circle(d=1, center=true, $fn=100);
    }
}
}

// Subtracting the smooth rod
translate([0, extrusion_inset + smooth_rod_inset, 0]) {
    cylinder(d=smooth_rod_width, h = 100, $fn=100, center=true);
}

// Subtracting the extrusion
translate([0, -500 + extrusion_inset + 21/2, 0]) {
    cube(size=[21, 1000, 50], center=true);
}

// Subtracting the screw to the left and right of the extrusion
translate([0, extrusion_inset, thickness/2]) {
rotate([90, 0, 90]) {
    cylinder(d=4.8, h=100, center=true, $fn=100);
    translate([0, 0, 50 + 21/2 + 5]) {
        cylinder(d=10, h=100, center=true, $fn=100);
    }
    translate([0, 0, -(50 + 21/2 + 5)]) {
        cylinder(d=10, h=100, center=true, $fn=100);
    }
}
}

// Subtracting the screw to the front of the extrusion
translate([0, -50 + 30/2 + extrusion_inset + 28, thickness/2]) {
rotate([90, 0, 0]) {
    cylinder(d=4.8, h=100, center=true, $fn=100);
    translate([0, 0, -35]) {
        cylinder(d=7, h=30, center=true, $fn=100);
    } 
}
}

// Subtracting the "hollow center" of the main bulk
translate([0, 0, bottom_thickness]) {
linear_extrude(height = thickness) {
hull() {
translate([0, center_distance - 8, 0]) {
    circle(d=3, center=true, $fn=100);
}
translate([wing_x - 11.5, wing_y - 4, 0]) {
    circle(d=3, center=true, $fn=100);
}
translate([wing_x/2.8 - 11.5, wing_y/2.8 - 4, 0]) {
    circle(d=3, center=true, $fn=100);
}
translate([-(wing_x - 11.5), wing_y - 4, 0]) {
    circle(d=3, center=true, $fn=100);
}
translate([-(wing_x/2.8 - 11.5), wing_y/2.8 - 4, 0]) {
    circle(d=3, center=true, $fn=100);
}
}
}
}

// Subtracting the screw holes that connect the three "tops"
for (extension = [1/4, 5/9]) {
    for (side = [1, -1]) {
        translate([side*wing_x*(1 - extension), wing_y*(1 - extension) + center_distance*(extension), thickness/2]) {
            rotate([90, 0, -30*side]) {
                cylinder(d=3.5, h=20, $fn = 100, center=true);
            }
            if (side == -1 ) {
                rotate([90, 30, -30*side]) {
                    translate([0, 0, 7])
                    cylinder(d = 5.5 / cos(180 / 6) + 0.2, h=4, $fn = 6, center=true);
                }
            }
            
        }
    }
}

// Subtracting the hole of the lead screw and the mounting
// screws for the motor.
translate([0, extrusion_inset + lead_screw_inset, 0]) {
    for (offset = [[1, 1], [-1, 1], [1, -1], [-1, -1]]) {
        translate([offset[0]*stepper_motor_screw_distance/2, offset[1]*stepper_motor_screw_distance/2, 0]) {
            cylinder(d=stepper_motor_screw_width, h = 100, $fn=100, center=true);
            translate([0, 0, bottom_thickness]) {
                cylinder(d=7, h=100, $fn=100);
            }
        }
    }
    cylinder(d=lead_screw_width, h = 20, $fn=100, center=true);
}

// Subtracting the "LEGEN" text
translate([-wing_x, wing_y, thickness/2]) {
rotate([90, 180, -60]) {
linear_extrude(height=2) {
translate([-1, 0, 0])
text("LEGEN", font="Helvetica:style=Bold", valign="center", halign="right");
}
}
}

// Subtracting the "DARY" text
translate([wing_x, wing_y, thickness/2]) {
rotate([90, 180, 60]) {
linear_extrude(height=2) {
translate([.8, 0, 0])
text("DARY", font="Helvetica:style=Bold", valign="center", halign="left");
}
}
}

// Subtracting out the big cylindrical holes for routing
// wires
for(side = [1, -1]) {
translate([side*wing_x*7/18, center_distance*2/3, 0]) {
    cylinder(r=23, h=100, center=true, $fn=100);
}
}

}

// Adding the guide for the smooth rod
difference() {
translate([0, extrusion_inset + smooth_rod_inset, thickness/2]) {
    cylinder(d=smooth_rod_width + 5, h = thickness, $fn=100, center=true);
}
translate([0, extrusion_inset + smooth_rod_inset, 0]) {
    cylinder(d=smooth_rod_width, h = 100, $fn=100, center=true);
}

cube([6.8, 1000, 1000], center=true);

}



