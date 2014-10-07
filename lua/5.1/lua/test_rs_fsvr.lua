--test dsi reciever.
local ffi = require("ffi")

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


cairo_svg.cairo_destroy(cairoContext)
cairo_svg.cairo_surface_destroy(cairoSurface)

function freq_iter(start,stop,n)
	local step = (stop - start) / n
	local i=0
	return function()
		local freq = start + step*i
		i=i+1
		if i > n then 
			return nil
		end
		return freq
	end
end

local function main()
local analyzer = require 'rs_fsvr'

local ana = analyzer:new{connect='GPIB0::20::INSTR'}
--[[
cairoSurface = cairo_svg.cairo_svg_surface_create( "rs_fsvr.svg", 720, 540 );
cairoContext = cairo_svg.cairo_create( cairoSurface );
--tell probram where to look for fonts
--c_plsdev( const char *devname );
plplot.c_plsdev("extcairo")
plplot.c_plinit()
plplot.pl_cmd(plplot.PLESC_DEVINIT,cairoContext)
plplot.c_plenv(0.0, 1.0, 0.0, 1.0, 1, 0)
plplot.c_pllab("x","y","rs_fsvr")
plplot.c_plend()
--]]
ana:bus_init()
ana:trace{}
ana:close()
	
end
main()
