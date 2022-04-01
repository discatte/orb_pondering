// PoVRay 3.7 Scene File " ... .pov"
// author:  @galacticfurball (discatte) / @raytracedvibes
// date: 03/22/2022   
// desc: An iridescent attempt at bryce3d aesthetics
//--------------------------------------------------------------------------
#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 
//--------------------------------------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"
//--------------------------------------------------------------------------
// camera ------------------------------------------------------------------
#declare Camera_0 = camera {perspective angle 75               // front view
                            location  <0.0 , 1.0 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_1 = camera {/*ultra_wide_angle*/ angle 90   // diagonal view
                            location  <2.0 , 2.5 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_2 = camera {/*ultra_wide_angle*/ angle 90  //right side view
                            location  <3.0 , 1.0 , 0.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_3 = camera {/*ultra_wide_angle*/ angle 90        // top view
                            location  <0.0 , 3.0 ,-0.001>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
camera{Camera_0}
// sun ----------------------------------------------------------------------
light_source{< 3000,3000,-3000> color White}
// sky ----------------------------------------------------------------------
sky_sphere { pigment { gradient <0,1,0>
                       color_map { [0.00 rgb <0,1,1>]
                                   [0.35 rgb <0,0,1>]
                                   [0.65 rgb <0,1,0>]
                                   [1.00 rgb <1,0,0>] 
                                 } 
                       scale 2         
                     } // end of pigment
           } //end of skysphere
           
           
fog{ fog_type   2
     distance   50
     color      Pink*2
     fog_offset 0.1
     fog_alt    0.5
     turbulence 1.8
} //----------------



plane{<0,1,0>,1 hollow  
       texture{ pigment{ bozo turbulence 0.92
                         color_map { [0.00 rgbt <0.20, 0.20, 1.0,1>]
                                     [0.50 rgbt <0.20, 0.20, 1.0,1>*0.9]
                                     [0.70 rgbt <1,1,1,0.7>]
                                     [0.85 rgbt <1,1,1,0.5>]
                                     [1.0 rgbt <1,1,1,0.0>]}
                        scale<1,1,2.5>*1  translate< 0,0,0>
                       }
                finish {ambient 1 diffuse 0} }      
       scale 10000}

// ground -------------------------------------------------------------------
plane{<0,1,0>, 0 
       texture{Polished_Chrome
               normal { bumps 0.15 scale <0.35,0.25,0.25> turbulence 0.05 } 
               finish { reflection 0.60}}}
//---------------------------------------------------------------------------
//---------------------------- objects in scene ----------------------------
//---------------------------------------------------------------------------

// sample sphere
sphere { <0,0,0>, 1.0 
            texture { T_Gold_1A
                   //normal { bumps 0.5 scale 0.15} 
                   finish { phong 1 }
                 } // end of texture 


          scale<1,1,1>  rotate<0,0,0>  translate<0,1.1,0>  
       }  // end of sphere ----------------------------------- 

//  +A0.0 +AM2 +THBNX
