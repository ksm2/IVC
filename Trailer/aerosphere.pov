//--------------------------------------------------------------------------
// scene -------------------------------------------------------------------
// PoVRay 3.7 Scene File " ... .pov"
// author:  ...
// date:    ...
//--------------------------------------------------------------------------
#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//--------------------------------------------------------------------------
// includes ----------------------------------------------------------------
#include "inc/minimon.inc"
//--------------------------------------------------------------------------
// parameters and variables ------------------------------------------------ 
#declare time = clock;
//--------------------------------------------------------------------------
// camera ------------------------------------------------------------------ 
camera
{
    //location <5, 5, 5>
    //look_at <10*sin(2*pi*time), 0, 10*cos(2*pi*time)>
	/*location <0, 0, 95>
	look_at <0, 0, 100>
	rotate <0, 360*time, 0>
	translate <0, 0, 95*(1-time)>*/
	location <0, 3, 5>
	look_at <0, 0, 0> 
	//rotate <0, 360*time, 0>
}
//--------------------------------------------------------------------------
// sky ---------------------------------------------------------------------

sky_sphere
{
    pigment
    {   
        image_map
        {
            jpeg "img/sky4.jpg"
            map_type 1
        }
	}
} 


/*sphere
{
    0, 0.5
    pigment { rgbt 1 }
    hollow
    interior
    {
        media
        {
            emission 1
            density
            {
                spherical density_map
                {
                    [0 rgb 0]
                    //[0.4 rgb <1,0,0>]
                    [0.8 rgb <1,1,0.5>]
                    [1 rgb 1]
                }
            }
        }
    }
    //translate <0, 1.5, -1.75-dist_z*(1-sin(0.5*pi*time))>
} */




     
/*     
// Choosing random series:
#declare Random_0 = seed (91125); // use: "rand(Random_0)"
#declare Random_1 = seed (52655); // use: "rand(Random_1)"
#declare Random_2 = seed (3133);  // use: "rand(Random_2)"


union{
 // outer loop
 #declare NrX = -3;   // start x
 #declare EndNrX = 3; // end   x
 #while (NrX< EndNrX+1)
    // more inner loop
    #declare NrY = -3;   // start y
    #declare EndNrY = 3; // end   y
    #while (NrY< EndNrY+1)
       // innerst loop
       #declare NrZ = -3;   // start z
       #declare EndNrZ = 3; // end   z
       #while (NrZ< EndNrZ+1)

       sphere{ <0,0,0>,0.15 scale <1,1,1>
               texture { pigment{ color rgb< 1.0, 0.65, 0.0> }
                         finish { phong 1}
                       } // end of texture

               // translate<NrX*0.5 NrY*0.5 NrZ*0.5>

               translate < 0.5*NrX + 0.25*(-0.5+rand(Random_0)) ,
                           0.5*NrY + 0.25*(-0.5+rand(Random_1)) ,
                           0.5*NrZ + 0.25*(-0.5+rand(Random_2))
                         >

       } // end of sphere --------------------------------------------

       #declare NrZ = NrZ + 1;  // next Nr z
       #end // --------------- end of loop z
       // end innerst loop
    #declare NrY = NrY + 1;  // next Nr y
    #end // --------------- end of loop y
    // end more inner loop
 #declare NrX = NrX + 1;  // next Nr x
 #end // --------------- end of loop x
 // end of outer loop

rotate<0,-40,0>
translate<0,2,2>} // end of union

 */





