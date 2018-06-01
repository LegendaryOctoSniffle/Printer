include <../../bossless/bossless.scad>;

side_length = 340;
extrusion_inset = 29;
thickness = 20;
bottom_thickness = 5;

smooth_rod_inset = 22;
lead_screw_inset = 37;

smooth_rod_width = 9;
lead_screw_width = 23.3;
stepper_motor_screw_distance = 31;
stepper_motor_screw_width = 3.9;

difference() {
  bossless(
    side_length=side_length,
    text_1="LEGEN",
    text_2 = "DARY"
  );

  // Subtracting the hole of the lead screw and the mounting
  // screws for the motor.
  translate([0, extrusion_inset + lead_screw_inset, 0]) {
    for (offset = [
        [1, 1],
        [-1, 1],
        [1, -1],
        [-1, -1]
      ]) {
      translate([offset[0] * stepper_motor_screw_distance / 2, offset[1] * stepper_motor_screw_distance / 2, 0]) {
        cylinder(d = stepper_motor_screw_width, h = 100, $fn = 100, center = true);
        translate([0, 0, bottom_thickness]) {
          cylinder(d = 7, h = 100, $fn = 100);
        }
      }
    }
    cylinder(d = lead_screw_width, h = 200, $fn = 100, center = true);
  }

  // Subtracting the smooth rod
  translate([0, extrusion_inset + smooth_rod_inset, 0]) {
    cylinder(d = smooth_rod_width, h = 100, $fn = 100, center = true);
  }

  // Subtracting out the big cylindrical holes for routing wires
  for (side = [1, -1]) {
    translate([side * bossless_x(side_length) * 6 / 18, bossless_R(side_length) * 2 / 3, 0]) {
      cylinder(r = 20, h = 100, center = true, $fn = 100);
    }
  }

  // Add accessory mounting rails
  translate([0, 0, -thickness])
  linear_extrude(height = thickness * 2) {
    hull() {
      translate([0, bossless_R(side_length) * 22 / 24, 0])
      circle(d = 4.3, $fn = 100);

      translate([0, bossless_R(side_length) * 17 / 24, 0])
      circle(d = 4.3, $fn = 100);
    }
    for (side = [-1, 1]) {
      hull() {
        translate([side * bossless_x(side_length) * 23 / 24 - side * 15, bossless_y(side_length) * 23 / 24, 0])
        circle(d = 4.3, $fn = 100);

        translate([side * bossless_x(side_length) * 18 / 24 - side * 15, bossless_y(side_length) * 18 / 24, 0])
        circle(d = 4.3, $fn = 100);
      }
    }
  }

}

// Adding the guide for the smooth rod
difference() {
  translate([0, extrusion_inset + smooth_rod_inset, thickness / 2]) {
    cylinder(d = smooth_rod_width + 5, h = thickness, $fn = 100, center = true);
  }
  translate([0, extrusion_inset + smooth_rod_inset, 0]) {
    cylinder(d = smooth_rod_width, h = 100, $fn = 100, center = true);
  }
  // Subtracting the hole of the lead screw and the mounting
  // screws for the motor.
  translate([0, extrusion_inset + lead_screw_inset, 0]) {
    cylinder(d = lead_screw_width, h = 200, $fn = 100, center = true);
  }

  cube([6.8, 1000, 1000], center = true);

}