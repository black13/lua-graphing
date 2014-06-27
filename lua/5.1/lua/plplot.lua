local ffi = require 'ffi'

ffi.cdef[[
       
typedef unsigned int size_t;
typedef short unsigned int wchar_t;
typedef short unsigned int wint_t;
typedef __builtin_va_list __gnuc_va_list;
typedef struct _iobuf
{
 char* _ptr;
 int _cnt;
 char* _base;
 int _flag;
 int _file;
 int _charbuf;
 int _bufsiz;
 char* _tmpfname;
} FILE;

typedef double PLFLT;
typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;
typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;
typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef long long int_fast64_t;
typedef unsigned long long uint_fast64_t;
  typedef int intptr_t;
  typedef unsigned int uintptr_t;
typedef long long intmax_t;
typedef unsigned long long uintmax_t;
typedef uint32_t PLUINT;
typedef int32_t PLINT;
typedef int64_t PLINT64;
typedef PLUINT PLUNICODE;
typedef PLINT PLBOOL;
typedef void* PLPointer;
typedef struct
{
    const char *opt;
    int ( *handler )( const char *, const char *, void * );
    void *client_data;
    void *var;
    long mode;
    const char *syntax;
    const char *desc;
} PLOptionTable;
typedef struct
{
    int type;
    unsigned int state;
    unsigned int keysym;
    unsigned int button;
    PLINT subwindow;
    char string[16];
    int pX, pY;
    PLFLT dX, dY;
    PLFLT wX, wY;
} PLGraphicsIn;
typedef struct
{
    PLFLT dxmi, dxma, dymi, dyma;
    PLFLT wxmi, wxma, wymi, wyma;
} PLWindow;
typedef struct
{
    unsigned int x, y;
    unsigned int width, height;
} PLDisplay;
typedef struct
{
    PLFLT *f;
    PLINT nx, ny, nz;
} PLfGrid;
typedef struct
{
    PLFLT **f;
    PLINT nx, ny;
} PLfGrid2;
typedef struct
{
    PLFLT *xg, *yg, *zg;
    PLINT nx, ny, nz;
} PLcGrid;






typedef struct
{
    PLFLT **xg, **yg, **zg;
    PLINT nx, ny;
} PLcGrid2;
typedef struct
{
    unsigned char r;
    unsigned char g;
    unsigned char b;
    PLFLT a;
    const char *name;
} PLColor;
typedef struct
{
    PLFLT h;
    PLFLT l;
    PLFLT s;
    PLFLT p;
    PLFLT a;
    int rev;
} PLControlPt;
typedef struct
{
    PLINT cmd;
    PLINT result;
} PLBufferingCB;
typedef struct
{
    PLFLT exp_label_disp;
    PLFLT exp_label_pos;
    PLFLT exp_label_just;
} PLLabelDefaults;
enum PLAttributeName
{
    PL_CMAP0,
    PL_CMAP1,
    PL_CURCHARSIZE,
    PL_CURCOLOR0,
    PL_CURMAJORTICK,
    PL_CURMINORTICK,
    PL_DEFCHARSIZE,
    PL_DEFMAJORTICK,
    PL_DEFMINORTICK,
    PL_ICOL0,
    PL_ICOL1,
    PL_NCOL0,
    PL_NCOL1,
    PL_PENWIDTH,
    PL_PRECISION,
    PL_SETPRECISION,
    PL_XDIGITS,
    PL_XDIGMAX,
    PL_YDIGITS,
    PL_YDIGMAX,
    PL_ZDIGITS,
    PL_ZDIGMAX
};
enum PLAttributeType
{
    PL_COLOR,
    PL_COLORPTR,
    PL_FLT,
    PL_FLTPTR,
    PL_INT,
    PL_INTPTR
};
typedef struct
{
    PLINT attributeType;
    PLINT intValue;
    PLINT *intValues;
    PLFLT fltValue;
    PLFLT *fltValues;
    PLColor colorValue;
    PLColor *colorValues;
    PLINT nValues;
} PLAttribute;
typedef struct
{
    PLFLT ( *get )( PLPointer p, PLINT ix, PLINT iy );
    PLFLT ( *set )( PLPointer p, PLINT ix, PLINT iy, PLFLT z );
    PLFLT ( *add )( PLPointer p, PLINT ix, PLINT iy, PLFLT z );
    PLFLT ( *sub )( PLPointer p, PLINT ix, PLINT iy, PLFLT z );
    PLFLT ( *mul )( PLPointer p, PLINT ix, PLINT iy, PLFLT z );
    PLFLT ( *div )( PLPointer p, PLINT ix, PLINT iy, PLFLT z );
    PLINT ( *is_nan )( PLPointer p, PLINT ix, PLINT iy );
    void ( *minmax )( PLPointer p, PLINT nx, PLINT ny, PLFLT *zmim, PLFLT *zmax );
    PLFLT ( *f2eval )( PLINT ix, PLINT iy, PLPointer p );
} plf2ops_t;
typedef plf2ops_t * PLF2OPS;
 void
c_pl_setcontlabelformat( PLINT lexp, PLINT sigdig );
 void
c_pl_setcontlabelparam( PLFLT offset, PLFLT size, PLFLT spacing, PLINT active );
 void
c_pladv( PLINT page );
 void
c_plarc( PLFLT x, PLFLT y, PLFLT a, PLFLT b, PLFLT angle1, PLFLT angle2,
         PLBOOL fill );
 void
c_plaxes( PLFLT x0, PLFLT y0, const char *xopt, PLFLT xtick, PLINT nxsub,
          const char *yopt, PLFLT ytick, PLINT nysub );
 void
c_plbin( PLINT nbin, PLFLT *x, PLFLT *y, PLINT opt );
 void
c_plbtime( PLINT *year, PLINT *month, PLINT *day, PLINT *hour, PLINT *min, PLFLT *sec, PLFLT ctime );
 void
c_plbop( void );
 void
c_plbox( const char *xopt, PLFLT xtick, PLINT nxsub,
         const char *yopt, PLFLT ytick, PLINT nysub );
 void
c_plbox3( const char *xopt, const char *xlabel, PLFLT xtick, PLINT nsubx,
          const char *yopt, const char *ylabel, PLFLT ytick, PLINT nsuby,
          const char *zopt, const char *zlabel, PLFLT ztick, PLINT nsubz );
 void
c_plcalc_world( PLFLT rx, PLFLT ry, PLFLT *wx, PLFLT *wy, PLINT *window );
 void
c_plclear( void );
 void
c_plcol0( PLINT icol0 );
 void
c_plcol1( PLFLT col1 );
 void
c_plconfigtime( PLFLT scale, PLFLT offset1, PLFLT offset2, PLINT ccontrol, PLBOOL ifbtime_offset, PLINT year, PLINT month, PLINT day, PLINT hour, PLINT min, PLFLT sec );
 void
c_plcont( PLFLT **f, PLINT nx, PLINT ny, PLINT kx, PLINT lx,
          PLINT ky, PLINT ly, PLFLT *clevel, PLINT nlevel,
          void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
          PLPointer pltr_data );
 void
plfcont( PLFLT ( *f2eval )( PLINT, PLINT, PLPointer ),
         PLPointer f2eval_data,
         PLINT nx, PLINT ny, PLINT kx, PLINT lx,
         PLINT ky, PLINT ly, PLFLT *clevel, PLINT nlevel,
         void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
         PLPointer pltr_data );
 void
c_plcpstrm( PLINT iplsr, PLBOOL flags );
 void
c_plctime( PLINT year, PLINT month, PLINT day, PLINT hour, PLINT min, PLFLT sec, PLFLT *ctime );
 void
pldid2pc( PLFLT *xmin, PLFLT *ymin, PLFLT *xmax, PLFLT *ymax );
 void
pldip2dc( PLFLT *xmin, PLFLT *ymin, PLFLT *xmax, PLFLT *ymax );
 void
c_plend( void );
 void
c_plend1( void );
 void
c_plenv( PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax,
         PLINT just, PLINT axis );
 void
c_plenv0( PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax,
          PLINT just, PLINT axis );
 void
c_pleop( void );
 void
c_plerrx( PLINT n, PLFLT *xmin, PLFLT *xmax, PLFLT *y );
 void
c_plerry( PLINT n, PLFLT *x, PLFLT *ymin, PLFLT *ymax );
 void
c_plfamadv( void );
 void
c_plfill( PLINT n, PLFLT *x, PLFLT *y );
 void
c_plfill3( PLINT n, PLFLT *x, PLFLT *y, PLFLT *z );
 void
c_plflush( void );
 void
c_plfont( PLINT ifont );
 void
c_plfontld( PLINT fnt );
 void
c_plgchr( PLFLT *p_def, PLFLT *p_ht );
 void
c_plgcol0( PLINT icol0, PLINT *r, PLINT *g, PLINT *b );
 void
c_plgcol0a( PLINT icol0, PLINT *r, PLINT *g, PLINT *b, PLFLT *a );
 void
c_plgcolbg( PLINT *r, PLINT *g, PLINT *b );
 void
c_plgcolbga( PLINT *r, PLINT *g, PLINT *b, PLFLT *a );
 void
c_plgcompression( PLINT *compression );
 void
c_plgdev( char *p_dev );
 void
c_plgdidev( PLFLT *p_mar, PLFLT *p_aspect, PLFLT *p_jx, PLFLT *p_jy );
 void
c_plgdiori( PLFLT *p_rot );
 void
c_plgdiplt( PLFLT *p_xmin, PLFLT *p_ymin, PLFLT *p_xmax, PLFLT *p_ymax );
 void
c_plgfci( PLUNICODE *pfci );
 void
c_plgfam( PLINT *p_fam, PLINT *p_num, PLINT *p_bmax );
 void
c_plgfnam( char *fnam );
 void
c_plgfont( PLINT *p_family, PLINT *p_style, PLINT *p_weight );
 void
c_plglevel( PLINT *p_level );
 void
c_plgpage( PLFLT *p_xp, PLFLT *p_yp,
           PLINT *p_xleng, PLINT *p_yleng, PLINT *p_xoff, PLINT *p_yoff );
 void
c_plgra( void );
 void
c_plgradient( PLINT n, PLFLT *x, PLFLT *y, PLFLT angle );
 void
c_plgriddata( PLFLT *x, PLFLT *y, PLFLT *z, PLINT npts,
              PLFLT *xg, PLINT nptsx, PLFLT *yg, PLINT nptsy,
              PLFLT **zg, PLINT type, PLFLT data );
 void
plfgriddata( PLFLT *x, PLFLT *y, PLFLT *z, PLINT npts,
             PLFLT *xg, PLINT nptsx, PLFLT *yg, PLINT nptsy,
             PLF2OPS zops, PLPointer zgp, PLINT type, PLFLT data );
 void
c_plgspa( PLFLT *xmin, PLFLT *xmax, PLFLT *ymin, PLFLT *ymax );
 void
c_plgstrm( PLINT *p_strm );
 void
c_plgver( char *p_ver );
 void
c_plgvpd( PLFLT *p_xmin, PLFLT *p_xmax, PLFLT *p_ymin, PLFLT *p_ymax );
 void
c_plgvpw( PLFLT *p_xmin, PLFLT *p_xmax, PLFLT *p_ymin, PLFLT *p_ymax );
 void
c_plgxax( PLINT *p_digmax, PLINT *p_digits );
 void
c_plgyax( PLINT *p_digmax, PLINT *p_digits );
 void
c_plgzax( PLINT *p_digmax, PLINT *p_digits );
 void
c_plhist( PLINT n, PLFLT *data, PLFLT datmin, PLFLT datmax,
          PLINT nbin, PLINT opt );
 void
c_plhlsrgb( PLFLT h, PLFLT l, PLFLT s, PLFLT *p_r, PLFLT *p_g, PLFLT *p_b );
 void
c_plinit( void );
 void
c_pljoin( PLFLT x1, PLFLT y1, PLFLT x2, PLFLT y2 );
 void
c_pllab( const char *xlabel, const char *ylabel, const char *tlabel );
 void
c_pllightsource( PLFLT x, PLFLT y, PLFLT z );
 void
c_plline( PLINT n, PLFLT *x, PLFLT *y );
 void
c_plline3( PLINT n, PLFLT *x, PLFLT *y, PLFLT *z );
 void
c_pllsty( PLINT lin );
 void
c_plmap( void ( *mapform )( PLINT, PLFLT *, PLFLT * ), const char *type,
         PLFLT minlong, PLFLT maxlong, PLFLT minlat, PLFLT maxlat );
 void
c_plmeridians( void ( *mapform )( PLINT, PLFLT *, PLFLT * ),
               PLFLT dlong, PLFLT dlat,
               PLFLT minlong, PLFLT maxlong, PLFLT minlat, PLFLT maxlat );
 void
c_plmesh( PLFLT *x, PLFLT *y, PLFLT **z, PLINT nx, PLINT ny, PLINT opt );
 void
plfmesh( PLFLT *x, PLFLT *y, PLF2OPS zops, PLPointer zp,
         PLINT nx, PLINT ny, PLINT opt );
 void
c_plmeshc( PLFLT *x, PLFLT *y, PLFLT **z, PLINT nx, PLINT ny, PLINT opt,
           PLFLT *clevel, PLINT nlevel );
 void
plfmeshc( PLFLT *x, PLFLT *y, PLF2OPS zops, PLPointer zp,
          PLINT nx, PLINT ny, PLINT opt, PLFLT *clevel, PLINT nlevel );
 void
c_plmkstrm( PLINT *p_strm );
 void
c_plmtex( const char *side, PLFLT disp, PLFLT pos, PLFLT just,
          const char *text );
 void
c_plmtex3( const char *side, PLFLT disp, PLFLT pos, PLFLT just,
           const char *text );
 void
c_plot3d( PLFLT *x, PLFLT *y, PLFLT **z,
          PLINT nx, PLINT ny, PLINT opt, PLBOOL side );
 void
plfplot3d( PLFLT *x, PLFLT *y, PLF2OPS zops, PLPointer zp,
           PLINT nx, PLINT ny, PLINT opt, PLBOOL side );
 void
c_plot3dc( PLFLT *x, PLFLT *y, PLFLT **z,
           PLINT nx, PLINT ny, PLINT opt,
           PLFLT *clevel, PLINT nlevel );
 void
plfplot3dc( PLFLT *x, PLFLT *y, PLF2OPS zops, PLPointer zp,
            PLINT nx, PLINT ny, PLINT opt, PLFLT *clevel, PLINT nlevel );
 void
c_plot3dcl( PLFLT *x, PLFLT *y, PLFLT **z,
            PLINT nx, PLINT ny, PLINT opt,
            PLFLT *clevel, PLINT nlevel,
            PLINT ixstart, PLINT ixn, PLINT *indexymin, PLINT*indexymax );
 void
plfplot3dcl( PLFLT *x, PLFLT *y, PLF2OPS zops, PLPointer zp,
             PLINT nx, PLINT ny, PLINT opt,
             PLFLT *clevel, PLINT nlevel,
             PLINT ixstart, PLINT ixn, PLINT *indexymin, PLINT *indexymax );
 void
c_plpat( PLINT nlin, PLINT *inc, PLINT *del );
 void
c_plpath( PLINT n, PLFLT x1, PLFLT y1, PLFLT x2, PLFLT y2 );
 void
c_plpoin( PLINT n, PLFLT *x, PLFLT *y, PLINT code );
 void
c_plpoin3( PLINT n, PLFLT *x, PLFLT *y, PLFLT *z, PLINT code );
 void
c_plpoly3( PLINT n, PLFLT *x, PLFLT *y, PLFLT *z, PLBOOL *draw, PLBOOL ifcc );
 void
c_plprec( PLINT setp, PLINT prec );
 void
c_plpsty( PLINT patt );
 void
c_plptex( PLFLT x, PLFLT y, PLFLT dx, PLFLT dy, PLFLT just, const char *text );
 void
c_plptex3( PLFLT wx, PLFLT wy, PLFLT wz, PLFLT dx, PLFLT dy, PLFLT dz,
           PLFLT sx, PLFLT sy, PLFLT sz, PLFLT just, const char *text );
 PLFLT
c_plrandd( void );
 void
c_plreplot( void );
 void
c_plrgbhls( PLFLT r, PLFLT g, PLFLT b, PLFLT *p_h, PLFLT *p_l, PLFLT *p_s );
 void
c_plschr( PLFLT def, PLFLT scale );
 void
c_plscmap0( PLINT *r, PLINT *g, PLINT *b, PLINT ncol0 );
 void
c_plscmap0a( PLINT *r, PLINT *g, PLINT *b, PLFLT *a, PLINT ncol0 );
 void
c_plscmap0n( PLINT ncol0 );
 void
c_plscmap1( PLINT *r, PLINT *g, PLINT *b, PLINT ncol1 );
 void
c_plscmap1a( PLINT *r, PLINT *g, PLINT *b, PLFLT *a, PLINT ncol1 );
 void
c_plscmap1l( PLBOOL itype, PLINT npts, PLFLT *intensity,
             PLFLT *coord1, PLFLT *coord2, PLFLT *coord3, PLBOOL *rev );
 void
c_plscmap1la( PLBOOL itype, PLINT npts, PLFLT *intensity,
              PLFLT *coord1, PLFLT *coord2, PLFLT *coord3, PLFLT *a, PLBOOL *rev );
 void
c_plscmap1n( PLINT ncol1 );
 void
c_plscol0( PLINT icol0, PLINT r, PLINT g, PLINT b );
 void
c_plscol0a( PLINT icol0, PLINT r, PLINT g, PLINT b, PLFLT a );
 void
c_plscolbg( PLINT r, PLINT g, PLINT b );
 void
c_plscolbga( PLINT r, PLINT g, PLINT b, PLFLT a );
 void
c_plscolor( PLINT color );
 void
c_plscompression( PLINT compression );
 void
c_plsdev( const char *devname );
 void
c_plsdidev( PLFLT mar, PLFLT aspect, PLFLT jx, PLFLT jy );
 void
c_plsdimap( PLINT dimxmin, PLINT dimxmax, PLINT dimymin, PLINT dimymax,
            PLFLT dimxpmm, PLFLT dimypmm );
 void
c_plsdiori( PLFLT rot );
 void
c_plsdiplt( PLFLT xmin, PLFLT ymin, PLFLT xmax, PLFLT ymax );
 void
c_plsdiplz( PLFLT xmin, PLFLT ymin, PLFLT xmax, PLFLT ymax );
 void
c_plseed( unsigned int s );
 void
c_plsesc( char esc );
 void
c_plsfam( PLINT fam, PLINT num, PLINT bmax );
 void
c_plsfci( PLUNICODE fci );
 void
c_plsfnam( const char *fnam );
 void
c_plsfont( PLINT family, PLINT style, PLINT weight );
 void
c_plshade( PLFLT **a, PLINT nx, PLINT ny, PLINT ( *defined )( PLFLT, PLFLT ),
           PLFLT left, PLFLT right, PLFLT bottom, PLFLT top,
           PLFLT shade_min, PLFLT shade_max,
           PLINT sh_cmap, PLFLT sh_color, PLINT sh_width,
           PLINT min_color, PLINT min_width,
           PLINT max_color, PLINT max_width,
           void ( *fill )( PLINT, PLFLT *, PLFLT * ), PLBOOL rectangular,
           void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
           PLPointer pltr_data );
 void
c_plshade1( PLFLT *a, PLINT nx, PLINT ny, PLINT ( *defined )( PLFLT, PLFLT ),
            PLFLT left, PLFLT right, PLFLT bottom, PLFLT top,
            PLFLT shade_min, PLFLT shade_max,
            PLINT sh_cmap, PLFLT sh_color, PLINT sh_width,
            PLINT min_color, PLINT min_width,
            PLINT max_color, PLINT max_width,
            void ( *fill )( PLINT, PLFLT *, PLFLT * ), PLBOOL rectangular,
            void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
            PLPointer pltr_data );
 void
c_plshades( PLFLT **a, PLINT nx, PLINT ny, PLINT ( *defined )( PLFLT, PLFLT ),
            PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax,
            PLFLT *clevel, PLINT nlevel, PLINT fill_width,
            PLINT cont_color, PLINT cont_width,
            void ( *fill )( PLINT, PLFLT *, PLFLT * ), PLBOOL rectangular,
            void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
            PLPointer pltr_data );
 void
plfshades( PLF2OPS zops, PLPointer zp, PLINT nx, PLINT ny,
           PLINT ( *defined )( PLFLT, PLFLT ),
           PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax,
           PLFLT *clevel, PLINT nlevel, PLINT fill_width,
           PLINT cont_color, PLINT cont_width,
           void ( *fill )( PLINT, PLFLT *, PLFLT * ), PLINT rectangular,
           void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
           PLPointer pltr_data );
 void
plfshade( PLFLT ( *f2eval )( PLINT, PLINT, PLPointer ),
          PLPointer f2eval_data,
          PLFLT ( *c2eval )( PLINT, PLINT, PLPointer ),
          PLPointer c2eval_data,
          PLINT nx, PLINT ny,
          PLFLT left, PLFLT right, PLFLT bottom, PLFLT top,
          PLFLT shade_min, PLFLT shade_max,
          PLINT sh_cmap, PLFLT sh_color, PLINT sh_width,
          PLINT min_color, PLINT min_width,
          PLINT max_color, PLINT max_width,
          void ( *fill )( PLINT, PLFLT *, PLFLT * ), PLBOOL rectangular,
          void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
          PLPointer pltr_data );
 void
plfshade1( PLF2OPS zops, PLPointer zp, PLINT nx, PLINT ny,
           PLINT ( *defined )( PLFLT, PLFLT ),
           PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax,
           PLFLT shade_min, PLFLT shade_max,
           PLINT sh_cmap, PLFLT sh_color, PLINT sh_width,
           PLINT min_color, PLINT min_width,
           PLINT max_color, PLINT max_width,
           void ( *fill )( PLINT, PLFLT *, PLFLT * ), PLINT rectangular,
           void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
           PLPointer pltr_data );
 void
c_plslabelfunc( void ( *label_func )( PLINT, PLFLT, char *, PLINT, PLPointer ),
                PLPointer label_data );
 void
c_plsmaj( PLFLT def, PLFLT scale );
 void
c_plsmem( PLINT maxx, PLINT maxy, void *plotmem );
 void
c_plsmin( PLFLT def, PLFLT scale );
 void
c_plsori( PLINT ori );
 void
c_plspage( PLFLT xp, PLFLT yp, PLINT xleng, PLINT yleng,
           PLINT xoff, PLINT yoff );
 void
c_plspal0( const char *filename );
 void
c_plspal1( const char *filename, PLBOOL interpolate );
 void
c_plspause( PLBOOL pause );
 void
c_plsstrm( PLINT strm );
 void
c_plssub( PLINT nx, PLINT ny );
 void
c_plssym( PLFLT def, PLFLT scale );
 void
c_plstar( PLINT nx, PLINT ny );
 void
c_plstart( const char *devname, PLINT nx, PLINT ny );
 void
c_plstransform( void ( *coordinate_transform )( PLFLT, PLFLT, PLFLT*, PLFLT*, PLPointer ), PLPointer coordinate_transform_data );
 void
c_plstripa( PLINT id, PLINT pen, PLFLT x, PLFLT y );
 void
c_plstripc( PLINT *id, const char *xspec, const char *yspec,
            PLFLT xmin, PLFLT xmax, PLFLT xjump, PLFLT ymin, PLFLT ymax,
            PLFLT xlpos, PLFLT ylpos,
            PLBOOL y_ascl, PLBOOL acc,
            PLINT colbox, PLINT collab,
            PLINT colline[], PLINT styline[], const char *legline[],
            const char *labx, const char *laby, const char *labtop );
 void
c_plstripd( PLINT id );
 void
c_plimagefr( PLFLT **idata, PLINT nx, PLINT ny,
             PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax, PLFLT zmin, PLFLT zmax,
             PLFLT valuemin, PLFLT valuemax,
             void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
             PLPointer pltr_data );
 void
plfimagefr( PLF2OPS idataops, PLPointer idatap, PLINT nx, PLINT ny,
            PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax, PLFLT zmin, PLFLT zmax,
            PLFLT valuemin, PLFLT valuemax,
            void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
            PLPointer pltr_data );
 void
c_plimage( PLFLT **idata, PLINT nx, PLINT ny,
           PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax, PLFLT zmin, PLFLT zmax,
           PLFLT Dxmin, PLFLT Dxmax, PLFLT Dymin, PLFLT Dymax );
 void
plfimage( PLF2OPS idataops, PLPointer idatap, PLINT nx, PLINT ny,
          PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax, PLFLT zmin, PLFLT zmax,
          PLFLT Dxmin, PLFLT Dxmax, PLFLT Dymin, PLFLT Dymax );
 void
c_plstyl( PLINT nms, PLINT *mark, PLINT *space );
 void
c_plsurf3d( PLFLT *x, PLFLT *y, PLFLT **z, PLINT nx, PLINT ny,
            PLINT opt, PLFLT *clevel, PLINT nlevel );
 void
plfsurf3d( PLFLT *x, PLFLT *y, PLF2OPS zops, PLPointer zp,
           PLINT nx, PLINT ny, PLINT opt, PLFLT *clevel, PLINT nlevel );
 void
c_plsurf3dl( PLFLT *x, PLFLT *y, PLFLT **z, PLINT nx, PLINT ny,
             PLINT opt, PLFLT *clevel, PLINT nlevel,
             PLINT ixstart, PLINT ixn, PLINT *indexymin, PLINT*indexymax );
 void
plfsurf3dl( PLFLT *x, PLFLT *y, PLF2OPS zops, PLPointer zp, PLINT nx, PLINT ny,
            PLINT opt, PLFLT *clevel, PLINT nlevel,
            PLINT ixstart, PLINT ixn, PLINT *indexymin, PLINT *indexymax );
 void
c_plsvect( PLFLT *arrowx, PLFLT *arrowy, PLINT npts, PLBOOL fill );
 void
c_plsvpa( PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax );
 void
c_plsxax( PLINT digmax, PLINT digits );
 void
plsxwin( PLINT window_id );
 void
c_plsyax( PLINT digmax, PLINT digits );
 void
c_plsym( PLINT n, PLFLT *x, PLFLT *y, PLINT code );
 void
c_plszax( PLINT digmax, PLINT digits );
 void
c_pltext( void );
 void
c_pltimefmt( const char *fmt );
 void
c_plvasp( PLFLT aspect );
 void
c_plvect( PLFLT **u, PLFLT **v, PLINT nx, PLINT ny, PLFLT scale,
          void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
          PLPointer pltr_data );
 void
plfvect( PLFLT ( *getuv )( PLINT, PLINT, PLPointer ),
         PLPointer up, PLPointer vp,
         PLINT nx, PLINT ny, PLFLT scale,
         void ( *pltr )( PLFLT, PLFLT, PLFLT *, PLFLT *, PLPointer ),
         PLPointer pltr_data );
 void
c_plvpas( PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax, PLFLT aspect );
 void
c_plvpor( PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax );
 void
c_plvsta( void );
 void
c_plw3d( PLFLT basex, PLFLT basey, PLFLT height, PLFLT xmin0,
         PLFLT xmax0, PLFLT ymin0, PLFLT ymax0, PLFLT zmin0,
         PLFLT zmax0, PLFLT alt, PLFLT az );
 void
c_plwid( PLINT width );
 void
c_plwind( PLFLT xmin, PLFLT xmax, PLFLT ymin, PLFLT ymax );
 void
c_plxormod( PLBOOL mode, PLBOOL *status );
 void
c_plget( enum PLAttributeName attrName, PLAttribute *attr );
 void
c_plset( enum PLAttributeName attrName, PLAttribute attr );
 void
plgFileDevs( const char ***p_menustr, const char ***p_devname, int *p_ndev );
 void
plgDevs( const char ***p_menustr, const char ***p_devname, int *p_ndev );
 void
plsKeyEH( void ( *KeyEH )( PLGraphicsIn *, void *, int * ), void *KeyEH_data );
 void
plsButtonEH( void ( *ButtonEH )( PLGraphicsIn *, void *, int * ),
             void *ButtonEH_data );
 void
plsbopH( void ( *handler )( void *, int * ), void *handler_data );
 void
plseopH( void ( *handler )( void *, int * ), void *handler_data );
 void
plsError( PLINT *errcode, char *errmsg );
 void
plsexit( int ( *handler )( const char * ) );
 void
plsabort( void ( *handler )( const char * ) );
 void
pltr0( PLFLT x, PLFLT y, PLFLT *tx, PLFLT *ty, PLPointer pltr_data );
 void
pltr1( PLFLT x, PLFLT y, PLFLT *tx, PLFLT *ty, PLPointer pltr_data );
 void
pltr2( PLFLT x, PLFLT y, PLFLT *tx, PLFLT *ty, PLPointer pltr_data );
 void
pltr2p( PLFLT x, PLFLT y, PLFLT *tx, PLFLT *ty, PLPointer pltr_data );
 void
pltr2f( PLFLT x, PLFLT y, PLFLT *tx, PLFLT *ty, void *pltr_data );
 PLF2OPS
plf2ops_c();
 PLF2OPS
plf2ops_grid_c();
 PLF2OPS
plf2ops_grid_row_major();
 PLF2OPS
plf2ops_grid_col_major();
 PLFLT
plf2eval1( PLINT ix, PLINT iy, PLPointer plf2eval_data );
 PLFLT
plf2eval2( PLINT ix, PLINT iy, PLPointer plf2eval_data );
 PLFLT
plf2eval( PLINT ix, PLINT iy, PLPointer plf2eval_data );
 PLFLT
plf2evalr( PLINT ix, PLINT iy, PLPointer plf2eval_data );
 void
plClearOpts( void );
 void
plResetOpts( void );
 int
plMergeOpts( PLOptionTable *options, const char *name, const char **notes );
 void
plSetUsage( const char *program_string, const char *usage_string );
 int
c_plsetopt( const char *opt, const char *optarg );
 int
plSetOpt( const char *opt, const char *optarg );
 int
c_plparseopts( int *p_argc, const char **argv, PLINT mode );
 void
plOptUsage( void );
 void
plgfile( FILE **p_file );
 void
plsfile( FILE *file );
 void
plgesc( char *p_esc );
 void
pl_cmd( PLINT op, void *ptr );
 int
plFindName( char *p );
 char *
plFindCommand( const char *fn );
 void
plGetName( const char *dir, const char *subdir, const char *filename, char **filespec );
 PLINT
plGetInt( const char *s );
 PLFLT
plGetFlt( const char *s );
 void
plAlloc2dGrid( PLFLT ***f, PLINT nx, PLINT ny );
 void
plFree2dGrid( PLFLT **f, PLINT nx, PLINT ny );
 void
plMinMax2dGrid( PLFLT **f, PLINT nx, PLINT ny, PLFLT *fmax, PLFLT *fmin );
 int
plGetCursor( PLGraphicsIn *gin );
 int
plTranslateCursor( PLGraphicsIn *gin );
 int
plParseOpts( int *p_argc, const char **argv, PLINT mode );
 void
plHLS_RGB( PLFLT h, PLFLT l, PLFLT s, PLFLT *p_r, PLFLT *p_g, PLFLT *p_b );
 void
plRGB_HLS( PLFLT r, PLFLT g, PLFLT b, PLFLT *p_h, PLFLT *p_l, PLFLT *p_s );
 void
plarrows( PLFLT *u, PLFLT *v, PLFLT *x, PLFLT *y, PLINT n,
          PLFLT scale, PLFLT dx, PLFLT dy );
 void
c_plhls( PLFLT h, PLFLT l, PLFLT s );
 void
c_plrgb( PLFLT r, PLFLT g, PLFLT b );
 void
c_plrgb1( PLINT r, PLINT g, PLINT b );

static const PLINT PLESC_DOUBLEBUFFERING_ENABLE = 1;
static const PLINT PLESC_DOUBLEBUFFERING_DISABLE = 2;
static const PLINT PLESC_DOUBLEBUFFERING_QUERY = 3;

static const PLINT PLESC_SET_RGB = 1;
static const PLINT PLESC_ALLOC_NCOL = 2;
static const PLINT PLESC_SET_LPB = 3;
static const PLINT PLESC_EXPOSE = 4;
static const PLINT PLESC_RESIZE = 5;
static const PLINT PLESC_REDRAW = 6;
static const PLINT PLESC_TEXT = 7;
static const PLINT PLESC_GRAPH = 8;
static const PLINT PLESC_FILL = 9;
static const PLINT PLESC_DI = 10;
static const PLINT PLESC_FLUSH = 11;
static const PLINT PLESC_EH = 12;
static const PLINT PLESC_GETC = 13;
static const PLINT PLESC_SWIN = 14;
static const PLINT PLESC_DOUBLEBUFFERING = 15;
static const PLINT PLESC_XORMOD = 16;
static const PLINT PLESC_SET_COMPRESSION = 17;
static const PLINT PLESC_CLEAR = 18;
static const PLINT PLESC_DASH = 19;
static const PLINT PLESC_HAS_TEXT = 20;
static const PLINT PLESC_IMAGE = 21;
static const PLINT PLESC_IMAGEOPS = 22;
static const PLINT PLESC_PL2DEVCOL = 23;
static const PLINT PLESC_DEV2PLCOL = 24;
static const PLINT PLESC_SETBGFG = 25;
static const PLINT PLESC_DEVINIT = 26;
static const PLINT PLESC_GETBACKEND = 27;
static const PLINT PLESC_BEGIN_TEXT = 28;
static const PLINT PLESC_TEXT_CHAR = 29;
static const PLINT PLESC_CONTROL_CHAR = 30;
static const PLINT PLESC_END_TEXT = 31;
static const PLINT PLESC_START_RASTERIZE = 32;
static const PLINT PLESC_END_RASTERIZE = 33;
static const PLINT PLESC_ARC = 34;
static const PLINT PLESC_GRADIENT = 35;
static const PLINT PLESC_MODESET = 36;
static const PLINT PLESC_MODEGET = 37;

static const PLINT PL_HIST_NOSCALING = 1;
static const PLINT PL_HIST_IGNORE_OUTLIERS = 2;
static const PLINT PL_HIST_NOEXPAND = 8;
static const PLINT PL_HIST_NOEMPTY = 16;
static const PLINT PL_HIST_DEFAULT = 0;
]]

return ffi.load 'plplotd'