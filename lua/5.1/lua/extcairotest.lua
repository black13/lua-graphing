--ext-cairo-test
local ffi = require 'ffi'
local cairo_svg = require 'cairo'
local plplot = require 'plplot_def'
local kernel32 = ffi.load("kernel32")

ffi.cdef[[
int printf(const char *fmt, ...);
int SetEnvironmentVariableA(const char * lpName,const char *  lpValue);
]]

--[[
    cairo_surface_t *cairoSurface;
    cairo_t         *cairoContext;

    cairoSurface = cairo_svg_surface_create( "ext-cairo-test.svg", 720, 540 );
    cairoContext = cairo_create( cairoSurface );
--]]

--[[
#include "plcdemos.h"
#define NSIZE    101

int
main( int argc, const char *argv[] )
{
    PLFLT x[NSIZE], y[NSIZE];
    PLFLT xmin = 0., xmax = 1., ymin = 0., ymax = 100.;
    int   i;

    // Prepare data to be plotted.
    for ( i = 0; i < NSIZE; i++ )
    {
        x[i] = (PLFLT) ( i ) / (PLFLT) ( NSIZE - 1 );
        y[i] = ymax * x[i] * x[i];
    }

    // Parse and process command line arguments
    plparseopts( &argc, argv, PL_PARSE_FULL );

    // Initialize plplot
    plinit();

    // Create a labelled box to hold the plot.
    plenv( xmin, xmax, ymin, ymax, 0, 0 );
    pllab( "x", "y=100 x#u2#d", "Simple PLplot demo of a 2D line plot" );

    // Plot the data that was prepared above.
    plline( NSIZE, x, y );

    // Close PLplot library
    plend();

    exit( 0 );
}
--]]
cairoSurface = cairo_svg.cairo_svg_surface_create( "ext-cairo-test.svg", 720, 540 );
cairoContext = cairo_svg.cairo_create( cairoSurface );
--tell probram where to look for fonts
--c_plsdev( const char *devname );
plplot.c_plsdev("extcairo")
plplot.c_plinit()

local N   = 10000
local xx  = ffi.new("PLFLT[?]",N) 
local yy  = ffi.new("PLFLT[?]",N) 

plplot.pl_cmd(plplot.PLESC_DEVINIT,cairoContext)
plplot.c_plenv(0.0, 1.0, 0.0, N, 0, 0)

for i = 0 , N - 1 do
	xx[i] = (1.0*i)/(1.0*N);
	yy[i] = i;
	print(xx[i])
end

plplot.c_pllab("x","y","title")
plplot.c_plline( N, xx, yy );
plplot.c_plend()

cairo_svg.cairo_destroy(cairoContext)
cairo_svg.cairo_surface_destroy(cairoSurface)