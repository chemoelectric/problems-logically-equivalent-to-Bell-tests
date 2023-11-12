/*-*- mode: indented-text; tab-width: 2; -*-*/

defaultpen(linewidth(2bp));

real bigpt = 1/72;
real width=8.5;
real height=11.0;

draw((0,0)--(width/bigpt,0));
draw((0,0)--(0,height/bigpt));
draw((width/bigpt,0)--(width/bigpt,height/bigpt));
draw((0,height/bigpt)--(width/bigpt,height/bigpt));

real diameter = 5.9;

real[] deg = { 0.0, 22.5, 45.0, 67.5, 90.0, 112.5, 135.0, 157.5, 180.0 };
for (real d : deg)
  {
    real theta = (pi/180) * d;
    real x = (width - (width - diameter)/2 - diameter * (sin (theta / 2) ** 2)) / bigpt;
    draw((x, 1/bigpt)--(x, (height - 1)/bigpt));
  }

    
