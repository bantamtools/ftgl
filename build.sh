export FT2_CONFIG_DIR=`(cd ../freetype2/builds/unix && pwd)`
export FT2_CONFIG=$FT2_CONFIG_DIR/freetype-config
mkdir -p build
cd build
../configure --disable-freetypetest --srcdir=.. CXX=clang++ CC=clang CPPFLAGS=-I`(cd ../../freetype2/include && pwd)` LDFLAGS=-L`(cd ../../freetype2/objs/.libs && pwd)`
make
