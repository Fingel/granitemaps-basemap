.hillshade[zoom <= 15] {
[zoom>=15] { raster-opacity: 0.20; }
[zoom>=13] { raster-opacity: 0.25; }
[zoom=12] { raster-opacity:0.2;}
[zoom<=11] { raster-opacity: 0.12; }
[zoom<=8] { raster-opacity: 0.3; }

raster-scaling:bilinear;
raster-comp-op:multiply;
}

// not really convinced about the value of slope shading
.slopescale[zoom <= 16][zoom >= 10] {
raster-opacity:0.2;
raster-scaling:lanczos;
raster-colorizer-default-mode: linear;
raster-colorizer-default-color: transparent;

// this combo is ok
raster-colorizer-stops:
stop(0, white)
stop(50, #404040)
stop(100, black);
raster-comp-op:color-burn;

}

// colour-graded elevation model
.heightmap { 
[zoom >= 10] { raster-opacity: 0.2; }
[zoom = 9] { raster-opacity: 0.225; }
[zoom = 8] { raster-opacity: 0.25; }
[zoom <= 7] { raster-opacity: 0.3; }
raster-scaling:bilinear;
raster-colorizer-default-mode: linear;
raster-colorizer-default-color: #E6F0E2;
// hay, forest, rocks, snow

// if using the srtm-3785-scale.tif file, these stops should be in the range 0-255.
raster-colorizer-stops:
stop(50, #C6CFC3)
stop(100, #ABB3A8)
stop(200, #3B6430)
stop(400, #294521)
stop(1000,white);
}
  /*

*/
.contour {
  	[zoom >=13] {
      line-smooth:1.0;
      line-width:0.75;
      line-color:hsla(100,30%,50%,80%);
    	[elev > 0] {
		text-face-name:@sans;
        text-size:8;
    	text-fill: @poi_text;
        text-name:'[elev]';
    	text-placement:line;
    	}
    }

}