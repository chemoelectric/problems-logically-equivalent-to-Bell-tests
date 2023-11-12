/*-*- mode: indented-text; tab-width: 2; -*-*/
/*
  The graduations for a Stern-Gerlach Beads box.
*/

/*
  This is free and unencumbered software released into the public domain.

  Anyone is free to copy, modify, publish, use, compile, sell, or
  distribute this software, either in source code form or as a compiled
  binary, for any purpose, commercial or non-commercial, and by any
  means.

  In jurisdictions that recognize copyright laws, the author or authors
  of this software dedicate any and all copyright interest in the
  software to the public domain. We make this dedication for the benefit
  of the public at large and to the detriment of our heirs and
  successors. We intend this dedication to be an overt act of
  relinquishment in perpetuity of all present and future rights to this
  software under copyright law.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
  OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
  ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  OTHER DEALINGS IN THE SOFTWARE.
*/

real box_width = 5.9;           /* Change this to fit your box. */

defaultpen(linewidth(0.8bp));

real bigpt = 1/72;
real width = 8.5;               /* For U.S. letter. */
real height = 11.0;             /* For U.S. letter. */
real diameter = box_width;

draw((0,0)--(width/bigpt,0));
draw((0,0)--(0,height/bigpt));
draw((width/bigpt,0)--(width/bigpt,height/bigpt));
draw((0,height/bigpt)--(width/bigpt,height/bigpt));

for (real d = 0.0; d <= 180.0; d += 10.0)
  {
    real theta = (pi/180) * d;
    real x = (width - (width - diameter)/2 - diameter * (sin (theta / 2) ** 2)) / bigpt;
    draw((x, 1/bigpt)--(x, (height - 1)/bigpt));
    for (real y = 1/bigpt; y <= (height - 1)/bigpt; y += 1.2/bigpt)
      {
        if (30.0 <= d && d <= 150.0)
          {
            if (d < 90.0)
              label("{\footnotesize$" + (string) d + "\kern-2pt$}", (x, y), left);
            else
              label("{\footnotesize$\kern-2pt" + (string) d + "$}", (x, y), right);
          }
      }
  }
