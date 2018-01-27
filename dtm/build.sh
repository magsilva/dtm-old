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
	STRIP="x86_64-w64-mingw32-strip" \
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
	STRIP="i686-w64-mingw32-strip" \
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

# Remember to remove the dynamic libraries from the libdir when compiling
# (otherwise the binary will require dynamic libraries as well)
make clean
PATH=/usr/x86_64-apple-darwin15/bin:$PATH make main \
	NM=x86_64-apple-darwin15-nm \
	RANLIB=x86_64-apple-darwin15-ranlib \
	CC=x86_64-apple-darwin15-clang \
	CCC=x86_64-apple-darwin15-clang++ \
	CXX=x86_64-apple-darwin15-clang++ \
	AS=x86_64-apple-darwin15-as \
	STRIP=x86_64-apple-darwin15-strip \
	OUTPUT_FILE="dtm-darwin64"
