use <MCAD/involute_gears.scad>;
use <MCAD/bearing.scad>;

zero = 0.01;
$fn  = 70;
o    = 0.1;

// gear parameters
m        = 1.5;
pitch    = 180*m;
teeth    = 18;
hTeeth   = 2.25*m;
clearance= 0.3;
angle    = 21;

// bearing parameters
d608     = 22.1;
dIn608   =  8.0;
dHub     = 24;
t        =  7;

// frame parameters
r        = (dHub+ dHub*(teeth+1)/teeth)/2 +hTeeth+clearance;
e        = 0.5;
tc       = 1;
f        = 1;

// bolts parameters
dM3      = 3.3;
dBolt    = 6.2;
hNut     = 2.4 ;        // height of nut
dNut     = 5.7/cos(30); // diameter of nut

support  = true;
bearing  = false;
bevel    = false;


spinner();
//gearside();
//gearcenter();
//rotate([180,0,0])frame(0);
//rotate([180,0,0])frame(1);



module spinner()
{  rotate([0,0,360/3/19-1.5]) gearcenter();
   for(a=[$t*120:120:$t*120+240]) 
     translate([sin(a)*r,cos(a)*r,0]) 
       rotate([0,0,-a*37/18-180/teeth]) gearside(); 
    
   frame(0);
   translate([0,0,t]) rotate([0,180,0]) mirror() frame(1); 
}


module gearside()
{
   intersection()
   {  gear(	
        number_of_teeth = teeth,
		circular_pitch =  pitch,
		pressure_angle = angle,
		clearance = 0,
		gear_thickness = 0,
		rim_thickness = t,
		rim_width = 1,
		hub_thickness = t,
		hub_diameter = dHub,
		bore_diameter = d608,
	    backlash = 0.3,
		involute_facets = 20
           );
     if(bevel) translate([0,0,-1])toroid(31,9);   
   }
   if(bearing) bearing();
}


module gearcenter()
{
   intersection()
   {  gear(	
        number_of_teeth = teeth+1,
		circular_pitch =  pitch,
		pressure_angle = angle,
		clearance = 0,
		gear_thickness = 0,
		rim_thickness = t,
		rim_width = 1,
		hub_thickness = t,
		hub_diameter = dHub*(teeth+1)/teeth,
		bore_diameter = d608+2*e,
	    backlash = 0.3,
		involute_facets = 20
           );
     if(bevel) translate([0,0,-1]) toroid(32.5,9);          
   }
      
   translate([0,0,t/2-tc/2+0.2]) cylinder(d=dHub,h=tc-0.2);
   translate([0,0,t/2-tc/2-e])   cylinder(d=12,h=tc+2*e);
   translate([0,0,0])            cylinder(d=dIn608, h=t);   

   if(support) 
     { difference() 
          {  cylinder(d=12,h=t/2);
             translate([0,0,-zero]) cylinder(d=12-0.6,h=t/2+2*zero);
          }
       difference() 
          {  cylinder(d=18,h=t/2);
             translate([0,0,-zero]) cylinder(d=18-0.6,h=t/2+2*zero);
          }
     }
    
   if(bearing)
     {  translate([0,0,t/2-tc/2-e-t-o]) bearing();
        translate([0,0,t/2+tc/2+e+o])   bearing();
     }    
}




module frame(side)
{
   for(a=[$t*120:120:$t*120+240]) 
      rotate([0,0,-a]) framepart(side);
}

module framepart(side=0)
{ tx = t/2+tc/2+e-f;

  difference()
  { union()
     {  translate([0,r,t/2+o]) cylinder(d=dIn608,h=t/2+f-o) ;
        translate([0,r,t+f])   cylinder(d1=11,d2=9,h=tx) ; 
        translate([0,r,t+o])   cylinder(d=11, h=f-o) ;
           
        translate([0,0,t+f])   cylinder(d=d608+tx, h=tx); 
        
        for(i=[-10:4:10])
         hull()
           { translate([i/3-0.5,r,t+f]) 
                    full_rounded_box(1,zero,tx,4); 
             translate([i-0.5,0,t+f]) 
                    full_rounded_box(1,zero,tx,4); 
           }
     }  
    translate([0,0,t+f-zero])cylinder(d=d608,h=tx+2*zero);
    translate([0,r,t/2]) cylinder(d=dM3,h=t/2+f+tx+zero) ;  
    
     if(side==0) 
       translate([0,r,t+f+tx+zero-3.2])
          cylinder(d=dBolt,h=3.2) ;   
    else 
       translate([0,r,t+f+tx+zero-4.2])  
          cylinder(h=4.2, d1=dNut, d2=dNut-0.2, $fn=6);
          
  }
  if(support)
     translate([0,r,t+f+tx+zero-3.2])
     difference()
     {  cylinder(d=dM3+0.6,h=3.2) ;  
        translate([0,0,-zero])cylinder(d=dM3,h=3.2+2*zero) ;  
     }
}


module full_rounded_box(l, r, t, d)
{ scale([l/(l+d), r/(r+d), t/(t+d)]) 
    minkowski() { cube([l,r,t]);  translate([d/2,d/2,d/2]) sphere(d=d);}
}  

module toroid(d,t) 
{ 
  translate([0,0,t/2]) rotate_extrude(convexity = 10) translate([(d-t)/2, 0, 0]) circle(d=t); 
}
