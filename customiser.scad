use <measurement.scad>

xangle = -35;
yangle = 45;
distance = 34;

cube([20,20,20]);

rotate([0,yangle,0])
  rotate([xangle,0,0])
    color("green")
      z_measurement(distance,[0,0,0]);