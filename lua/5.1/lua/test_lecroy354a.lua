--test dsi reciever.
local ffi = require("ffi")
local cairo_svg = require 'cairo'
local plplot = require 'plplot_def'
local kernel32 = ffi.load("kernel32")

ffi.cdef[[
int printf(const char *fmt, ...);
int SetEnvironmentVariableA(const char * lpName,const char *  lpValue);
]]

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
local scope = require 'lecroy354a'
local siggen = require 'ag_n5181a'

local scope = scope:new{connect='GPIB0::1::INSTR'}
local siggen = siggen:new{connect='GPIB0::19::INSTR'}

	--siggen:bus_init()
	--scope:bus_init()

	--scope:trace{frequency=50.0e6}
	siggen:freq(250.0e6)
	siggen:power(-20.0,'DBM')
	siggen:stat('1')
	ret = scope:trace{frequency=250.0e6}
	
	print(#ret.values)
	
	local N   = #ret.values
	local xx  = ffi.new("PLFLT[?]",N) 
	local yy  = ffi.new("PLFLT[?]",N) 

	for i = 0 , N - 1 do
		xx[i] = (1.0*i)/(1.0*N);
		yy[i] = 10.0*ret.values[i+1];
	end
	--[[	
		sleep(1000)
		local start=30.0e6
		local stop=500.0e6
		local steps=100
		
		for freq in freq_iter(start,stop,steps) do
			siggen:freq(freq)
			siggen:power(-20.0,'DBM')
			siggen:stat('1')
			scope:trace{frequency=freq}
		end
	-]]

	cairoSurface = cairo_svg.cairo_svg_surface_create( "lecroy-plot.svg", 720, 540 );
	cairoContext = cairo_svg.cairo_create( cairoSurface );
	--tell probram where to look for fonts
	--c_plsdev( const char *devname );
	plplot.c_plsdev("extcairo")
	plplot.c_plinit()
	plplot.pl_cmd(plplot.PLESC_DEVINIT,cairoContext)
	--plplot.c_plenv(0.0, 1.0, 0.0, 1.0, 1, 0)
	plplot.c_plenv(0.0, 1.0, -0.40, 0.40, 0, 0)
	plplot.c_pllab("x","y","lecroy-345")
	plplot.c_plline( N, xx, yy );
	plplot.c_plend()

	cairo_svg.cairo_destroy(cairoContext)
	cairo_svg.cairo_surface_destroy(cairoSurface)
	scope:close()
	siggen:close()	
end
main()
