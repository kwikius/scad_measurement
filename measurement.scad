
/*
   dist is along x
*/

module x_measurement_impl(dist)
{
  if ( dist >= 0){
     translate([-20,0,0]){
        rotate([0,90,0]){
            cylinder(r1 = 5, r2= 0, h = 20);
        }
     }
     translate([dist +20,0,0]){
        rotate([0,-90,0]){
            cylinder(r1 = 5, r2= 0, h = 20);
        }
     }
   } else{
     translate([20,0,0]){
        rotate([0,-90,0]){
            cylinder(r1 = 5, r2= 0, h = 20);
        }
     }
     translate([dist-20,0,0]){
        rotate([0,90,0]){
            cylinder(r2 = 0, r1= 5, h = 20);
        }
     }
   }
}

/*
   dist is along x, pos is 3d starting coord
*/

module x_measurement(dist, pos = [0,0,0])
{
   translate(pos){
     x_measurement_impl(dist);
   }
}

/*
   dist is along y, pos is 3d starting coord
*/
module y_measurement(dist, pos = [0,0,0])
{
   translate(pos){
      rotate([0,0,90]){
         x_measurement_impl(dist);
      }
   }
}

/*
   dist is along z, pos is 3d starting coord
*/

module z_measurement(dist, pos = [0,0,0])
{
   translate(pos){
      rotate([0,-90,0]){
         x_measurement_impl(dist);
      }
   }
}

//y_measurement(-5,[10,0,0]);