PATH=%PATH%;c:\SWIGcvs\SWIG
swig -javascript -c++ -node -DV8_VERSION=0x031110 -o example_wrap.cxx example.i
