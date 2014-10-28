
#-------------------------------------------------
# Compiler options

SOLUTION_DIR=$${PWD}/

INCLUDEPATH += $${SOLUTION_DIR}../lib
INCLUDEPATH += $${SOLUTION_DIR}../lib/util/include
INCLUDEPATH += $${SOLUTION_DIR}../include
INCLUDEPATH += $${SOLUTION_DIR}..
INCLUDEPATH += $${SOLUTION_DIR}../lib/expat/xmlparse
INCLUDEPATH += $${SOLUTION_DIR}../lib/abyss/src
INCLUDEPATH += $${SOLUTION_DIR}../lib/wininet_transport
INCLUDEPATH += $${SOLUTION_DIR}../../regex-2.7-bin/include


#-------------------------------------------------
# Output



win32:{
	#INCLUDEPATH += $${SOLUTION_DIR}../src/curl/include
	#INCLUDEPATH += $${SOLUTION_DIR}../src/libidn/libidn
	#INCLUDEPATH += $${SOLUTION_DIR}../src/libidn/windows/include

	!contains(QMAKE_HOST.arch, x86_64):{
		CONFIG(debug, debug|release):{
			DESTDIR = $${SOLUTION_DIR}../bin/Win32/Debug
		}
		else:{
			DESTDIR = $${SOLUTION_DIR}../bin/Win32/Release
		}
	}
	else:{
		CONFIG(debug, debug|release):{
			DESTDIR = $${SOLUTION_DIR}../bin/x64/Debug
		}
		else:{
			DESTDIR = $${SOLUTION_DIR}../bin/x64/Release
		}
	}
}
