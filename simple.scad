//example.scad

use <measurement.scad>

cube([20,20,20]);

color("blue")
  x_measurement(20,[0,10,22]);
  
color("red")
  y_measurement(20,[10,0,22]);
  
color("green")
  z_measurement(20,[0,0,0]);