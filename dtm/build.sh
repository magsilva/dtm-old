make clean
make main-static \
	NM=x86_64-w64-mingw32-nm \
	RANLIB=x86_64-w64-mingw32-ranlib \
	CC=x86_64-w64-mingw32-gcc \
	CCC=x86_64-w64-mingw32-g++ \
	CXX=x86_64-w64-mingw32-g++ \
	AS=x86_64-w64-mingw32-as \
	OUTPUT_FILE="dtm-win32.exe"

make clean
make main-static \
	NM=i686-w64-mingw32-nm \
	RANLIB=i686-w64-mingw32-ranlib \
	CC=i686-w64-mingw32-gcc \
	CCC=i686-w64-mingw32-g++ \
	CXX=i686-w64-mingw32-g++ \
	AS=i686-w64-mingw32-as \
	OUTPUT_FILE="dtm-win64.exe"

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

make clean
make main \
	CFLAGS="-arch x86_64" \
	LDFLAGS="-arch x86_64" \
	NM=darwinx-nm \
	RANLIB=darwinx-ranlib \
	CC=darwinx-gcc \
	CCC=darwinx-g++ \
	CXX=darwinx-g++ \
	AS=darwinx-as \
	OUTPUT_FILE="dtm-darwin64"
