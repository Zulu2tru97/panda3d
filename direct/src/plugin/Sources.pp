// This directory is still experimental.  Define HAVE_P3D_PLUGIN in
// your Config.pp to build it.
#define BUILD_DIRECTORY $[and $[HAVE_P3D_PLUGIN],$[HAVE_PYTHON],$[HAVE_TINYXML]]

#begin lib_target
  #define USE_PACKAGES tinyxml
  #define TARGET p3d_plugin

  #define COMBINED_SOURCES \
    $[TARGET]_composite1.cxx

  #define SOURCES \
    handleStream.cxx handleStream.h handleStream.I \
    handleStreamBuf.cxx handleStreamBuf.h \
    p3d_lock.h p3d_plugin.h \
    p3d_plugin_common.h \
    p3dInstance.h p3dInstance.I \
    p3dInstanceManager.h p3dInstanceManager.I \
    p3dSession.h p3dSession.I

  #define INCLUDED_SOURCES \
    p3d_plugin.cxx \
    p3dInstance.cxx \
    p3dInstanceManager.cxx \
    p3dSession.cxx

  #define INSTALL_HEADERS \
    p3d_plugin.h

#end lib_target

#begin bin_target
  #define USE_PACKAGES tinyxml python
  #define TARGET p3dpython

  #define OTHER_LIBS \
    dtoolutil:c dtoolbase:c dtool:m \
    interrogatedb:c dconfig:c dtoolconfig:m \
    express:c pandaexpress:m \
    prc:c pstatclient:c pandabase:c linmath:c putil:c \
    pipeline:c panda:m

  #define SOURCES \
    handleStream.cxx handleStream.h handleStream.I \
    handleStreamBuf.cxx handleStreamBuf.h \
    p3d_lock.h p3d_plugin.h \
    p3dCInstance.cxx \
    p3dCInstance.h p3dCInstance.I \
    p3dPythonRun.cxx p3dPythonRun.h p3dPythonRun.I

#end bin_target

#begin bin_target
  #define USE_PACKAGES openssl
  #define TARGET panda3d

  #define OTHER_LIBS \
    prc:c dtoolutil:c dtoolbase:c dtool:m \
    interrogatedb:c dconfig:c dtoolconfig:m \
    express:c pandaexpress:m \
    pstatclient:c pandabase:c linmath:c putil:c \
    pipeline:c panda:m \
    pystub

  #define SOURCES \
    panda3d.cxx

  #define WIN_SYS_LIBS user32.lib gdi32.lib

#end bin_target
