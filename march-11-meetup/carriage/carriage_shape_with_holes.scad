
length = 40;
width = 50;
height = 30;

// The `difference` function subtracts the second thing from the first thing.
difference() {
    // Here's the basic shape. Union makes the multiple shapes into a single thing.
    union() {
        cube([width, length, height], center=true);
        translate([width/2, length/2, -height/2]) {
            rotate([90, 0, 0]) {
                linear_extrude(height=length) {
                    polygon([[0, 0],[0, height],[30, height]]);
                }
            }
        }
    }
    // Here are the cylinders that we're subtracting from the carriage.
    // I've unioned them together so that together they're the second
    // argument to the `difference` function.
    union() {
        // The $fn=100 is what makes this a nice smooth cylinder instead
        // of blocky garbage.
        cylinder(h = 100, r=5, center = true, $fn=100);
        translate([20, 5, 0]) {
            cylinder(h = 100, r=2, center = true, $fn=100);
        }
    }
}