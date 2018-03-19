
length = 40;
width = 50;
height = 30;


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
