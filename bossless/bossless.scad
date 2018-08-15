function bossless_x(side_length) = cos(60) * side_length / 2;
function bossless_y(side_length) = sin(60) * side_length / 2;
function bossless_R(side_length) = side_length * sqrt(3) / 3;

module bossless(
    side_length,
    text_1="",
    text_2="",
    thickness=20,
    bottom_thickness=5,
    extrusion_inset=29,
    font_size_factor=2/3,
    extrusion_width=21
  ) {
  difference() {

    // The main bulk of the body
    linear_extrude(height = thickness) {
      polygon(points = [
        [-bossless_x(side_length)*.1, bossless_y(side_length)*.1],
        [bossless_x(side_length)*.1, bossless_y(side_length)*.1],
        [bossless_x(side_length) * 2, bossless_y(side_length) * 2],
        [-bossless_x(side_length) * 2, bossless_y(side_length) * 2]
      ]);
        
      translate([0, extrusion_inset, 0]) circle(d=42, $fn=100);

    }

    // Subtracting the other thirds of the triangle
    translate([0, 0, -.1 / 2])
    linear_extrude(height = thickness + .1) {
      polygon(
        points = [
          [-bossless_x(side_length) * 2 - .1, bossless_y(side_length) * 2],
          [bossless_x(side_length) * 2 + .1, bossless_y(side_length) * 2],
          [bossless_x(side_length), bossless_y(side_length)],
          [0, bossless_R(side_length)],
          [-bossless_x(side_length), bossless_y(side_length)],
        ]
      );

    }

    // Subtracting the extrusion
    translate([0, -extrusion_width/2 + extrusion_inset + extrusion_width / 2, 0]) {
      cube(size = [extrusion_width, extrusion_width, 50], center = true);
    }

    // Subtracting the screw to the left and right of the extrusion
    translate([0, extrusion_inset, thickness / 2]) {
      rotate([90, 0, 90]) {
        cylinder(d = 4.8, h = 100, center = true, $fn = 100);
        translate([0, 0, 50 + extrusion_width / 2 + 5]) {
          cylinder(d = 10, h = 100, center = true, $fn = 100);
        }
        translate([0, 0, -(50 + extrusion_width / 2 + 5)]) {
          cylinder(d = 10, h = 100, center = true, $fn = 100);
        }
      }
    }

    // Subtracting the screw to the front and back of the extrusion
    translate([0, extrusion_inset, thickness / 2]) {
      rotate([90, 0, 0]) {
        cylinder(d = 4.8, h = 100, center = true, $fn = 100);
        translate([0, 0, -(30/2 + extrusion_width/2 + 3)]) {
          cylinder(d = 9, h = 30, center = true, $fn = 100);
        }
        translate([0, 0, 30/2 + extrusion_width/2 + 3]) {
          cylinder(d = 9, h = 30, center = true, $fn = 100);
        }
      }
    }


    // Subtracting the "hollow center" of the main bulk
    translate([0, 0, bottom_thickness]) {
      linear_extrude(height = thickness) {
        hull() {
          translate([0, bossless_R(side_length) - side_length / 42.5, 0]) {
            circle(d = 3, center = true, $fn = 100);
          }
          translate([bossless_x(side_length) - side_length / 35, bossless_y(side_length) - side_length / 120, 0]) {
            circle(d = 3, center = true, $fn = 100);
          }
          translate([bossless_x(side_length) / 2.8 - side_length / 35, bossless_y(side_length) / 2.8 - side_length / 85, 0]) {
            circle(d = 3, center = true, $fn = 100);
          }
          translate([-(bossless_x(side_length) - side_length / 35), bossless_y(side_length) - side_length / 120, 0]) {
            circle(d = 3, center = true, $fn = 100);
          }
          translate([-(bossless_x(side_length) / 2.8 - side_length / 35), bossless_y(side_length) / 2.8 - side_length / 85, 0]) {
            circle(d = 3, center = true, $fn = 100);
          }
        }
      }
    }

    // Subtracting the screw holes that connect the three "tops"
    for (placement = [[1/5, bottom_thickness + 4], [1/2, bottom_thickness + 4], [15/18, thickness - 5]]) {
      screw_extension = placement[0];
      screw_height = placement[1];
      for (side = [1, -1]) {
        translate([
          side * bossless_x(side_length) * (1 - screw_extension),
          bossless_y(side_length) * (1 - screw_extension) + bossless_R(side_length) * (screw_extension),
          screw_height
        ]) {
          rotate([90, 0, -30 * side]) {
            cylinder(d = 3.5, h = 20, $fn = 100, center = true);
          }
          if (side == -1) {
            rotate([90, 30, -30 * side]) {
              translate([0, 0, 7])
              cylinder(d = 5.5 / cos(180 / 6) + 0.2, h = 5.5, $fn = 6, center = true);
            }
          }

        }
      }
    }

    // Subtracting the "LEGEN" text
    translate([-bossless_x(side_length), bossless_y(side_length), thickness / 2]) {
      rotate([90, 180, -60]) {
        translate([-1, 0, -1.5])
        linear_extrude(height = 8) {
          text(text_1, size=thickness*font_size_factor, font = "Helvetica:style=Bold", valign = "center", halign = "right");
        }
      }
    }

    // Subtracting the "DARY" text
    translate([bossless_x(side_length), bossless_y(side_length), thickness / 2]) {
      rotate([90, 180, 60]) {
        translate([.8, 0, -1.5])
        linear_extrude(height = 8) {
          text(text_2, size=thickness*font_size_factor, font = "Helvetica:style=Bold", valign = "center", halign = "left");
        }
      }
    }

  }
} // END MODULE

// Uncomment to test design:
// bossless(330);
