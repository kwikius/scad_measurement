//example.scad

use <measurement.scad>

pos = [20,100,20];
translate(pos){
   cube([20,20,20]);
   
   color("blue")
     x_measurement(20,[0,10,10]);
     
   color("red")
     y_measurement(20,[10,0,10]);
     
   color("green")
     z_measurement(20,[10,10,0]);
}