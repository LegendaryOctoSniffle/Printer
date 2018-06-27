include <../../bossless/bossless.scad>;

side_length = 330;
thickness = 20;
bottom_thickness = 5;


difference() {
    bossless(
    side_length=side_length,
    text_1="OCTO",
    text_2 = "SNIFFLE"
  );

  // Subtract out the big hole in the center
  translate([0, 135, 0])
  cylinder(d = 80, center = true, h = 50, $fn = 100);

  // Subtract accessory mounting rails
  translate([0, 0, -thickness])
  for (distance = [9 / 24, 11 / 24, 13 / 24, 15 / 24])
    linear_extrude(height = thickness * 2) {
      hull() {
        translate([bossless_x(side_length) * distance - 15, bossless_y(side_length) * distance, 0])
        circle(d = 4.3, $fn = 100);

        translate([-bossless_x(side_length) * distance + 15, bossless_y(side_length) * distance, 0])
        circle(d = 4.3, $fn = 100);
      }

    }
}