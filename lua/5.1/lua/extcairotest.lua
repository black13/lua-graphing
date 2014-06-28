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

cairoSurface = cairo_svg.cairo_svg_surface_create( "ext-cairo-test.svg", 720, 540 );
cairoContext = cairo_svg.cairo_create( cairoSurface );
--tell probram where to look for fonts
--c_plsdev( const char *devname );
plplot.c_plsdev("extcairo")
plplot.c_plinit()
plplot.pl_cmd(plplot.PLESC_DEVINIT,cairoContext)
plplot.c_plenv(0.0, 1.0, 0.0, 1.0, 1, 0)
plplot.c_pllab("x","y","title")
plplot.c_plend()

cairo_svg.cairo_destroy(cairoContext)
cairo_svg.cairo_surface_destroy(cairoSurface)