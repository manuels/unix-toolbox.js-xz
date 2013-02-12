XZ_DEC_PATH=./src/src/xzdec/.libs
XZ_PATH=./src/src/xz/.libs


xzdec:
	cp ${XZ_DEC_PATH}/xzdec ${XZ_DEC_PATH}/xzdec.bc
	emcc -O2 -minify 1 --pre-js ./toolbox-base/pre.js ${XZ_DEC_PATH}/xzdec.bc -o xzdec.js

xz:
	cp ${XZ_PATH}/xz ${XZ_PATH}/xz.bc
	emcc -O2 -minify 1 --pre-js ./toolbox-base/pre.js ${XZ_PATH}/xz.bc -o xz.js

all: xz xzdec
