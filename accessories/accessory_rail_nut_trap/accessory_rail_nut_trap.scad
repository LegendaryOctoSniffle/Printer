// Length of the larger puck and the smaller puck
lengths = [10, 14];

// Width of the larger puck and the smaller puck
widths = [3, 9];

// Height of the larger puck and the smaller puck
heights = [6, 3];

nut_trap_depth = 2;

// on_the_side: 1 for putting the hole on the side, 0 for the center
on_the_side=0;

difference() {
  // Create the larger puck and smaller puck
  for(i = [0, 1]) {
    linear_extrude(height=heights[i]) {
      hull() {
        translate([-lengths[i]/2, 0, 0])
        circle(d = widths[i], $fn = 100);

        translate([lengths[i]/2, 0, 0])
        circle(d = widths[i], $fn = 100);
      }
    }
  }

  translate([on_the_side*lengths[0]/2, 0, 0]) {
    // Subtract out the screw hole
    cylinder(d = 4, h = 20, $fn = 100, center = true);
      
    // Subtract out the nut trap
    cylinder(d = 5.5 / cos(180 / 6) + 0.2, h = nut_trap_depth*2, $fn = 6, center = true);
  }
  
}