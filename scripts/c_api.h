       
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
extern __attribute__ ((__dllimport__)) FILE _iob[];
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) freopen (const char*, const char*, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fflush (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fclose (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) remove (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rename (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpfile (void);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpnam (char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _unlink (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) unlink (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setvbuf (FILE*, char*, int, size_t);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setbuf (FILE*, char*);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vfprintf(FILE*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vprintf(const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsprintf(char*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsnprintf(char*, size_t, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fprintf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) printf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sprintf (char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfprintf (FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vprintf (const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsprintf (char*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_fprintf(FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_printf(const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_sprintf(char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vfprintf(FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vprintf(const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vsprintf(char*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snprintf (char*, size_t, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnprintf (char*, size_t, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscprintf (const char*, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snprintf (char *, size_t, const char *, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnprintf (char *, size_t, const char *, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vscanf (const char * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfscanf (FILE * __restrict__, const char * __restrict__,
       __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsscanf (const char * __restrict__,
       const char * __restrict__, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fscanf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) scanf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sscanf (const char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetc (FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgets (char*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputc (int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputs (const char*, FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gets (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) puts (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetc (int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filbuf (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flsbuf (int, FILE*);
extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getc (FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}
extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putc (int __c, FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}
extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}
extern __inline__ int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fread (void*, size_t, size_t, FILE*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwrite (const void*, size_t, size_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseek (FILE*, long, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftell (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rewind (FILE*);
typedef long long fpos_t;
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetpos (FILE*, fpos_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fsetpos (FILE*, const fpos_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clearerr (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) perror (const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _pclose (FILE*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) pclose (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flushall (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fileno (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcloseall (void);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fsopen (const char*, const char*, int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getmaxstdio (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _setmaxstdio (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fileno (FILE*);
typedef int ptrdiff_t;
typedef long __time32_t;
typedef long long __time64_t;
typedef __time32_t time_t;
typedef long _off_t;
typedef _off_t off_t;
typedef unsigned int _dev_t;
typedef _dev_t dev_t;
typedef short _ino_t;
typedef _ino_t ino_t;
typedef int _pid_t;
typedef _pid_t pid_t;
typedef unsigned short _mode_t;
typedef _mode_t mode_t;
typedef int _sigset_t;
typedef _sigset_t sigset_t;
typedef int _ssize_t;
typedef _ssize_t ssize_t;
typedef long long fpos64_t;
typedef long long off64_t;
typedef unsigned int useconds_t;
extern __inline__ FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen64 (const char* filename, const char* mode)
{
  return fopen (filename, mode);
}
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseeko64 (FILE*, off64_t, int);
extern __inline__ off64_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftello64 (FILE * stream)
{
  fpos_t pos;
  if (fgetpos(stream, &pos))
    return -1LL;
  else
   return ((off64_t) pos);
}
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwprintf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wprintf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snwprintf (wchar_t*, size_t, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwprintf (FILE*, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnwprintf (wchar_t*, size_t, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwscanf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wscanf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swscanf (const wchar_t*, const wchar_t*, ...);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwc (wchar_t, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetwc (wchar_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swprintf (wchar_t*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswprintf (wchar_t*, const wchar_t*, __gnuc_va_list);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetws (wchar_t*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputws (const wchar_t*, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwchar (void);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getws (wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwc (wint_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putws (const wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwchar (wint_t);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfdopen(int, const wchar_t *);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfopen (const wchar_t*, const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfreopen (const wchar_t*, const wchar_t*, FILE*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfsopen (const wchar_t*, const wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtmpnam (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtempnam (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wrename (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wremove (const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wperror (const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wpopen (const wchar_t*, const wchar_t*);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snwprintf (wchar_t* s, size_t n, const wchar_t* format, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnwprintf (wchar_t* s, size_t n, const wchar_t* format, __gnuc_va_list arg);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwscanf (const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwscanf (FILE * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswscanf (const wchar_t * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wpopen (const wchar_t*, const wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putw (int, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putw (int, FILE*);
extern int _argc;
extern char** _argv;
extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argc(void);
extern char*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argv(void);
extern wchar_t*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___wargv(void);
   extern __attribute__ ((__dllimport__)) int __mb_cur_max;
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _errno(void);
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __doserrno(void);
  extern char *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__environ(void);
  extern wchar_t *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wenviron(void);
  extern __attribute__ ((__dllimport__)) int _sys_nerr;
extern __attribute__ ((__dllimport__)) char* _sys_errlist[];
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__osver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winmajor(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winminor(void);
extern __attribute__ ((__dllimport__)) unsigned int _osver;
extern __attribute__ ((__dllimport__)) unsigned int _winver;
extern __attribute__ ((__dllimport__)) unsigned int _winmajor;
extern __attribute__ ((__dllimport__)) unsigned int _winminor;
 char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__pgmptr(void);
 wchar_t** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wpgmptr(void);
extern __attribute__ ((__dllimport__)) int _fmode;
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atof (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoi (const char*);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atol (const char*);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtof (const wchar_t *);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi (const wchar_t *);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtol (const wchar_t *);
double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __strtod (const char*, char**);
extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strtod (const char* __restrict__ __nptr, char** __restrict__ __endptr);
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof (const char * __restrict__, char ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold (const char * __restrict__, char ** __restrict__);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtol (const char*, char**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoul (const char*, char**, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstol (const wchar_t*, wchar_t**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstoul (const wchar_t*, wchar_t**, int);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstod (const wchar_t*, wchar_t**);
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstof( const wchar_t * __restrict__, wchar_t ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstold (const wchar_t * __restrict__, wchar_t ** __restrict__);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wgetenv(const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wputenv(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsearchenv(const wchar_t*, const wchar_t*, wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsystem(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wmakepath(wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsplitpath (const wchar_t*, wchar_t*, wchar_t*, wchar_t*, wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfullpath (wchar_t*, const wchar_t*, size_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstombs (char*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wctomb (char*, wchar_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mblen (const char*, size_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbstowcs (wchar_t*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbtowc (wchar_t*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rand (void);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) srand (unsigned int);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) calloc (size_t, size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) malloc (size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) realloc (void*, size_t);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) free (void*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abort (void) __attribute__ ((__noreturn__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit (int) __attribute__ ((__noreturn__));
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atexit (void (*)(void));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) system (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getenv (const char*);
 void* __attribute__((__cdecl__)) bsearch (const void*, const void*, size_t, size_t,
          int (*)(const void*, const void*));
 void __attribute__((__cdecl__)) qsort(void*, size_t, size_t,
      int (*)(const void*, const void*));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abs (int) __attribute__ ((__const__));
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) labs (long) __attribute__ ((__const__));
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
 div_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) div (int, int) __attribute__ ((__const__));
 ldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ldiv (long, long) __attribute__ ((__const__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _beep (unsigned int, unsigned int) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _seterrormode (int) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _sleep (unsigned long) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit (int) __attribute__ ((__noreturn__));
typedef int (* _onexit_t)(void);
_onexit_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _onexit( _onexit_t );
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _searchenv (const char*, const char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _gcvt (double, int, char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _makepath (char*, const char*, const char*, const char*, const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _splitpath (const char*, char*, char*, char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fullpath (char*, const char*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltoa (long, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultoa(unsigned long, char*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itow (int, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltow (long, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultow (unsigned long, wchar_t*, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _atoi64(const char *);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64toa(long long, char *, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64toa(unsigned long long, char *, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi64(const wchar_t *);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64tow(long long, wchar_t *, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64tow(unsigned long long, wchar_t *, int);
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotl)(unsigned int, int) __attribute__ ((__const__));
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotr)(unsigned int, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotl)(unsigned long, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotr)(unsigned long, int) __attribute__ ((__const__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _set_error_mode (int);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) searchenv (const char*, const char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ltoa (long, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gcvt (double, int, char*);
void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _Exit(int) __attribute__ ((__noreturn__));
typedef struct { long long quot, rem; } lldiv_t;
lldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lldiv (long long, long long) __attribute__ ((__const__));
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) llabs(long long);
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoll (const char* __restrict__, char** __restrict, int);
unsigned long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoull (const char* __restrict__, char** __restrict__, int);
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoll (const char *);
long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wtoll (const wchar_t *);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltoa (long long, char *, int);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltoa (unsigned long long , char *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltow (long long, wchar_t *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltow (unsigned long long, wchar_t *, int);
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
