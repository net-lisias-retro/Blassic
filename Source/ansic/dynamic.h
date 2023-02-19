// dynamic.h

#if defined __unix__ || defined __linux__ // Kylix defines only __linux__

#ifdef __hpux__

#include <dl.h>

typedef shl_t DynamicHandle;

inline DynamicHandle dynamicload (const std::string & str)
	{ return shl_load (str.c_str (), BIND_DEFERRED, 0); }

inline void * dynamicaddr (DynamicHandle & handle, const std::string & str)
{
	void * value;
	if (shl_findsym (& handle, str.c_str (), TYPE_UNDEFINED, & value) == 0)
		return value;
	else return NULL;
}

inline void dynamicclose (DynamicHandle handle)
	{ shl_unload (handle); }

#else

#include <dlfcn.h>

typedef void * DynamicHandle;

inline DynamicHandle dynamicload (const std::string & str)
        { return dlopen (str.c_str (), RTLD_LAZY); }

inline void * dynamicaddr (DynamicHandle handle, const std::string & str)
        { return dlsym (handle, str.c_str () ); }

inline void dynamicclose (DynamicHandle handle)
        { dlclose (handle); }

#endif

#elif defined __WIN32__

typedef HMODULE DynamicHandle;

inline DynamicHandle dynamicload (const std::string & str)
        { return LoadLibrary (str.c_str () ); }

inline void * dynamicaddr (DynamicHandle handle, const std::string & str)
        { return GetProcAddress (handle, str.c_str () ); }

inline void dynamicclose (DynamicHandle handle)
        { FreeLibrary (handle); }

#else
	#error Unknown operating system
#endif

#ifdef __WIN32__

typedef __declspec (dllimport) int (* DynamicUsrFunc)
	(int nparams, int * param);

#else

typedef int (* DynamicUsrFunc) (int nparams, int * param);

#endif

// Fin de dymanic.h
