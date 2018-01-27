make clean
PATH=/usr/x86_64-w64-mingw32/bin:$PATH make main \
	NM=nm \
	RANLIB=ranlib \
	CC=x86_64-w64-mingw32-gcc \
	CCC=x86_64-w64-mingw32-g++ \
	CXX=x86_64-w64-mingw32-g++ \
	AS=as \
	OPTFLAGS="-O2 -static" \
	EXTRA_LDFLAGS="-lshlwapi" \
	OUTPUT_FILE="dtm-win64.exe"

make clean
PATH=/usr/i686-w64-mingw32/bin:$PATH make main \
	NM=nm \
	RANLIB=ranlib \
	CC=i686-w64-mingw32-gcc \
	CCC=i686-w64-mingw32-g++ \
	CXX=i686-w64-mingw32-g++ \
	AS=as \
	OPTFLAGS="-O2 -static" \
	EXTRA_LDFLAGS="-lshlwapi" \
	OUTPUT_FILE="dtm-win32.exe"

make clean
make main \
	NM=nm \
	RANLIB=ranlib \
	CC=gcc \
	CCC=g++ \
	CXX=g++ \
	AS=as \
	CFLAGS="-m32" \
	CXXFLAGS="-m32" \
	OUTPUT_FILE="dtm-linux32"

make clean
make main \
	NM=nm \
	RANLIB=ranlib \
	CC=gcc \
	CCC=g++ \
	CXX=g++ \
	AS=as \
	OUTPUT_FILE="dtm-linux64"

# make clean
# make main \
#	CFLAGS="-arch x86_64" \
#	LDFLAGS="-arch x86_64" \
#	EXTRA_INCLUDE_FLAGS="-I /usr/darwinx/usr/include/ 
#	EXTRA_LD_FLAGS="-L /usr/darwinx/usr/lib"
#	NM=darwinx-nm \
#	RANLIB=darwinx-ranlib \
#	CC=darwinx-gcc \
#	CCC=darwinx-g++ \
#	CXX=darwinx-g++ \
#	AS=darwinx-as \
#	OUTPUT_FILE="dtm-darwin64"
