$fn=300;
zero=0.001;

d1=8.05;
d2=11;
d3=17;
h=3;
t1=0.5;
t2=2;
nozzle=0.3;
support=true;

difference()
{  union()
   {
      cylinder(d=d1,h=h+t1+t2);
      translate([0,0,h]) cylinder(d=d2,h=t1);
      intersection()
      {
         translate([0,0,h+t1]) cylinder(d=d3,h=t2);
         translate([0,0,-5]) sphere(d=26);
      }
   }
   translate([0,0,30+h+t1+t2-0.8]) sphere(r=30);
}


if(support)
{ 
  difference()
  { cylinder(d=d2,h=h); 
    translate([0,0,-zero])cylinder(d=d2-2*nozzle*4/3,h=h+2*zero); 
  }  
  difference()
  { cylinder(d=d3-nozzle,h=h+t1); 
    translate([0,0,-zero])cylinder(d=d3-nozzle-2*nozzle*4/3,h=h+t1+2*zero); 
  }  
}