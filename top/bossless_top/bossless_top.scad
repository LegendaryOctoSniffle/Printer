include <../../bossless/bossless.scad>;
include <../../settings/settings.scad>;

side_length = 330;
extrusion_inset = 29;
thickness = 20;
bottom_thickness = 5;

smooth_rod_inset_y = 27;
smooth_rod_offset_x = 23;
lead_screw_inset = 30;

smooth_rod_width = 9;
lead_screw_width = 23.3;
stepper_motor_screw_distance = 31;
stepper_motor_screw_width = 3.9;

mounting_screw_length = 12;

connection_screw_size = 4.4;
mounting_screw_size = 4.4;
extrusion_width = 21;

text_1 = "LEGEN";
text_2 = "DARY";

difference() {
  bossless(
    side_length=side_length,
    connection_screw_size=connection_screw_size,
    mounting_screw_size=mounting_screw_size,
    extrusion_width=extrusion_width,
    text_1=text_1,
    text_2=text_2,
    thickness=thickness,
    bottom_thickness=bottom_thickness,
    mount_depth=mounting_screw_length-5
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
  for (side = [-1, 1]) {
    translate([side*smooth_rod_offset_x, extrusion_inset + smooth_rod_inset_y, 0]) {
      cylinder(d = smooth_rod_width, h = 100, $fn = 100, center = true);
    }
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

      translate([0, bossless_R(side_length) * 15 / 24, 0])
      circle(d = 4.3, $fn = 100);
    }
    for (side = [-1, 1]) {
      hull() {
        translate([side * bossless_x(side_length) * 23 / 24 - side * 15, bossless_y(side_length) * 23 / 24, 0])
        circle(d = 4.3, $fn = 100);

        translate([side * bossless_x(side_length) * 14 / 24 - side * 15, bossless_y(side_length) * 14 / 24, 0])
        circle(d = 4.3, $fn = 100);
      }
    }
  }

}

// Adding the guides for the smooth rod
for (side = [-1, 1]) {
difference() {
    translate([side*smooth_rod_offset_x, extrusion_inset + smooth_rod_inset_y, thickness / 2]) {
      cylinder(d = smooth_rod_width + 5, h = thickness, $fn = 100, center = true);
    }
    translate([side*smooth_rod_offset_x, extrusion_inset + smooth_rod_inset_y, 0]) {
      cylinder(d = smooth_rod_width, h = 100, $fn = 100, center = true);
    }
  }
}