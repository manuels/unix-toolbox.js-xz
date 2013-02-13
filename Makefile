XZ_DEC_PATH=./src/src/xzdec/.libs
XZ_PATH=./src/src/xz/.libs


xzdec:
	cp ${XZ_DEC_PATH}/xzdec ${XZ_DEC_PATH}/xzdec.bc
	emcc -O3 -minify 1 --pre-js ./toolbox-base/pre.js ${XZ_DEC_PATH}/xzdec.bc -o xzdec-worker.js

xz:
	cp ${XZ_PATH}/xz ${XZ_PATH}/xz.bc
	emcc -O3 -minify 1 --pre-js ./toolbox-base/pre.js ${XZ_PATH}/xz.bc -o xz-worker.js

all: xz xzdec
