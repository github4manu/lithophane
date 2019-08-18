// source image
image="img.png";

// lithophane height
H = 2.6;

// dimensions
L = 90;
W = 60;

// border width
T = 1.2;

// bottom height
O = 0.2;

// border inset
C = 0.4;

// scale of image
S = 0.5;

module frame() {
    difference() {
        translate([-T/2, -T/2, 0])
            cube([L+T, W+T, H + O]);
        translate([C/2, C/2, 0])
            cube([L-C, W-C, H+O*2]);
    }
    
        cube([L, W, O]);
}

translate([L/2, W/2, O])
scale([S, S, H/100])
    surface(file = image, center = true, invert = false, convexity = 5);


frame();