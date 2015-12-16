// PoVRay 3.7 Scene File " ... .pov"
// author:  ...
// date:    ...
//--------------------------------------------------------------------------  
// settings ----------------------------------------------------------------
#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 
//--------------------------------------------------------------------------
// includes ----------------------------------------------------------------
#include "colors.inc"
#include "textures.inc"
//--------------------------------------------------------------------------
// parameters and variables ------------------------------------------------
#declare time = clock;
#declare dist_z = 300; 
#declare dist_x = 5;
#declare dist_min =1.4;
//--------------------------------------------------------------------------
// light sources -----------------------------------------------------------
light_source
{
	<20, 35, -2>
	color rgb <1, 1, 1>
}
//--------------------------------------------------------------------------
// camera ------------------------------------------------------------------ 
camera
{
	location <0, dist_min, -dist_min-0.25-dist_z*(1-time)*(1-time)>
	right x*image_width/image_height
	look_at <10*sin(pi*time), dist_min, -10*cos(pi*time)>	
}
//--------------------------------------------------------------------------
// background --------------------------------------------------------------
sky_sphere
{
    pigment
    {   
        image_map
        {
            png "img/stars.png"
            map_type 1
        }
        scale 1000000
	}
}
//--------------------------------------------------------------------------
// earth -------------------------------------------------------------------
sphere
{
    <0, 0, 0>, 2
    pigment
    {
        image_map
        {
            jpeg "img/earth.jpg"
            map_type 1
        }
    }
    rotate -80*y
    rotate -10*x
}

//--------------------------------------------------------------------------
// glowing moving object ---------------------------------------------------
sphere
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
                    [0.5 rgb <0.75,0.5,0>]
                    [0.75 rgb <1,1,0>]
                    [1 rgb 1]
                }
            }
        }
    }
    //translate <dist_x*(1-time), 1.5, -1.5-dist_z*(1-sin(0.5*pi*time))>
    translate <0, dist_min, -dist_min-dist_z*(1-sin(0.5*pi*time))>
}
/*
sphere
{
    <0, 0, 0>, 0.01
    texture
    {
        pigment { color White }
        finish
        {
            ambient 100
        }
    }    
    interior { media { emission 100 } } 
    translate <dist_x*(1-time), 1.3, -1.3-dist_z*(1-sin(0.5*pi*time))>
}
*/