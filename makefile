INTERFACE=example
CFLAGS=	-fpic \
	'-DNODE_GYP_MODULE_NAME=$(INTERFACE)' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'



CXXFLAGS=-I/home/colin/.node-gyp/6.14.2/include/node \
	-I/home/colin/.node-gyp/6.14.2/src \
	-I/home/colin/.node-gyp/6.14.2/deps/uv/include \
	-I/home/colin/.node-gyp/6.14.2/deps/v8/include \

CXXFLAGS+=	-std=gnu++0x

LDFLAGS=-L/home/colin/safeqp -lsafeqp 
SWIG=/home/colin/SWIGcvs/SWIG/swig

$(INTERFACE).node:	$(INTERFACE)_wrap.o $(INTERFACE).o
	gcc -shared $(INTERFACE)_wrap.o $(INTERFACE).o $(LDFLAGS) -o $@

$(INTERFACE)_wrap.cxx:	$(INTERFACE).i
	$(SWIG) -version
	$(SWIG) -javascript -c++ -node -DV8_VERSION=0x031110 -module $(INTERFACE) -o $@ $(INTERFACE).i

clean:
	$(RM) $(INTERFACE)_wrap.cxx $(INTERFACE).o $(INTERFACE)_wrap.o $(INTERFACE).node

$(INTERFACE)_wrap.o:	$(INTERFACE)_wrap.cxx
	g++ $(CFLAGS) $(CXXFLAGS) -c $< -o $@
$(INTERFACE).o:	$(INTERFACE).cxx
	g++ $(CFLAGS) $(CXXFLAGS) -c $< -o $@

test:
	npm test