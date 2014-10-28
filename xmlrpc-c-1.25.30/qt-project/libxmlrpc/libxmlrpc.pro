#-------------------------------------------------
#
# Project created by QtCreator 2014-10-03T08:45:32
#
#-------------------------------------------------

QT       -= core gui
TARGET	 = libxmlrpc
TEMPLATE = lib

#--------------------------------------------
# compiler options

DEFINES += LIBXMLRPC_LIBRARY
DEFINES += ABYSS_WIN32 CURL_STATICLIB

include(../common.pri)

#----------------------------------------------
# Source files

SOURCES += \
    ../../src/double.c \
    ../../src/parse_value.c \
    ../../src/resource.c \
    ../../src/trace.c \
    ../../src/version.c \
    ../../src/xmlrpc_array.c \
    ../../src/xmlrpc_base64.c \
    ../../src/xmlrpc_build.c \
    ../../src/xmlrpc_data.c \
    ../../src/xmlrpc_datetime.c \
    ../../src/xmlrpc_decompose.c \
    ../../src/xmlrpc_expat.c \
    ../../src/xmlrpc_parse.c \
    ../../src/xmlrpc_serialize.c \
    ../../src/xmlrpc_string.c \
    ../../src/xmlrpc_struct.c \
    ../../src/parse_datetime.c

HEADERS += \
    ../../include/xmlrpc-c/base.h \
    ../../include/xmlrpc-c/base_int.h \
    ../../include/xmlrpc-c/c_util.h \
    ../../include/xmlrpc-c/config.h \
    ../../src/double.h \
    ../../src/parse_datetime.h \
    ../../src/parse_value.h \
    ../../src/registry.h \
    ../../include/xmlrpc-c/string_int.h \
    ../../include/xmlrpc-c/util.h \
    ../../src/system_method.h

unix {
	target.path = /usr/lib
	INSTALLS += target
}

#--------------------------------------------------
# Linker options

# libxmlrpc_util
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_util
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_util
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/               -llibxmlrpc_util


# libxmlrpc_parse
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../libxmlrpc_xmlparse/release/ -llibxmlrpc_xmlparse
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../libxmlrpc_xmlparse/debug/   -llibxmlrpc_xmlparse
else:unix:                               LIBS += -L$$OUT_PWD/../../libxmlrpc_xmlparse/         -llibxmlrpc_xmlparse

