# Processing Week 3

We added a new layer to a sketch and add new features to a 'Make a dot-to-dot' program. The program drops a dot and a sequential number onto the canvas. Our sketch permitted a 'Toggle' of an underlying trace image through the implementation of a boolean variable and its opposite eg. `showImage = !showImage;`<br /><br/>
All of the following snippets are required, see the <a href="
        CreativeCoding2019Repo/Week 3/Dot_dot_backgroundToggle/Dot_dot_backgroundToggle.pde
      " >dot-to-dot sketch </a>to see where/how to use them:<br />
`PGraphics topLayer;`<br />
`boolean showImage;`
`createGraphics (topLayer);`<br />
`topLayer.size(600, 600);`<br />
<br />
`topLayer.beiginDraw ();`<br />
`topLayer.endDraw();`<br />
...<br />
`topLayer.ellipse (60, 60, 100, 100);`<br />
etc..

We developed a colour-wheel clock where the time displayed as R (hour), G (minutes) and B (seconds), in which we learned not only how to work with data, but we also put into practice our new found skill of how to toggle display with our Boolean values.

