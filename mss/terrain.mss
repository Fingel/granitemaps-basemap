.hillshade {
 	raster-opacity: 0.4;
 	raster-scaling:bilinear;
	raster-colorizer-stops:
   		stop(0, #90A590)
   		stop(200, transparent);
	raster-comp-op: multiply;
}

.slopescale[zoom <= 16][zoom >= 10] {
	raster-opacity:0.1;
	raster-scaling:lanczos;
	raster-colorizer-default-mode: linear;
	raster-colorizer-default-color: transparent;
	raster-colorizer-stops:
		stop(0, white)
		stop(5, white)
		stop(80, black);
	raster-comp-op:color-burn;
}

.heightmap { 
	[zoom >= 10] { raster-opacity: 0.2; }
	[zoom = 9] { raster-opacity: 0.225; }
	[zoom = 8] { raster-opacity: 0.25; }
	[zoom <= 7] { raster-opacity: 0.3; }
	raster-scaling:bilinear;
	raster-colorizer-default-mode: linear;
	raster-colorizer-default-color: #E6F0E2;

	// if using the srtm-3785-scale.tif file, these stops should be in the range 0-255.
	raster-colorizer-stops:
		stop(50, #C6CFC3)
		stop(100, #ABB3A8)
		stop(200, #3B6430)
		stop(400, #294521)
		stop(1000,white);
}

.contour {
	[zoom >=13] {
    	line-smooth:1.0;
    	line-width:0.75;
    	line-color:hsla(100,30%,50%,60%);
    	[elev > 0] {
          text-face-name:@sans;
          text-size:8;
          text-fill: @poi_text;
          text-name:'[elev]';
          text-placement:line;
    	}
    }
}