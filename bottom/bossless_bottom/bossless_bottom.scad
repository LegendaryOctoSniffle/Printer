include <../../bossless/bossless.scad>;

side_length = 330;
text_1 = "OCTO";
text_2 = "SNIFFLE";
mounting_screw_length = 12;

connection_screw_size = 4.4;
mounting_screw_size = 4.4;
extrusion_width = 20.7;

thickness = 20;
bottom_thickness = 5;


difference() {
    bossless(
    side_length=side_length,
    connection_screw_size=connection_screw_size,
    mounting_screw_size=mounting_screw_size,
    text_1=text_1,
    text_2=text_2,
    thickness=thickness,
    bottom_thickness=bottom_thickness,
    mount_depth=mounting_screw_length-5
  );

  // Subtract out the big hole in the center
  translate([0, 135, 0])
  cylinder(d = 79, center = true, h = 50, $fn = 100);

  // Subtract accessory mounting rails
  translate([0, 0, -thickness])
  for (distance = [9 / 24, 11 / 24, 13 / 24])
    linear_extrude(height = thickness * 2) {
      hull() {
        translate([bossless_x(side_length) * distance - 15, bossless_y(side_length) * distance, 0])
        circle(d = 4.3, $fn = 100);

        translate([-bossless_x(side_length) * distance + 15, bossless_y(side_length) * distance, 0])
        circle(d = 4.3, $fn = 100);
      }

    }
  
  // Add accessory mounting rails
  translate([0, 0, -thickness])
  linear_extrude(height = thickness * 2) {
    hull() {
      translate([0, bossless_R(side_length) * 11 / 24, 0])
      circle(d = 4.3, $fn = 100);

      translate([0, bossless_R(side_length) * 7 / 24, 0])
      circle(d = 4.3, $fn = 100);
    }
  }
}