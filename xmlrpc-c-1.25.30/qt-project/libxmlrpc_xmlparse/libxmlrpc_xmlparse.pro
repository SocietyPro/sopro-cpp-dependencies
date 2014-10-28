#-------------------------------------------------
#
# Project created by QtCreator 2014-10-03T12:02:06
#
#-------------------------------------------------

QT       -= core gui

TARGET = libxmlrpc_xmlparse
TEMPLATE = lib

DEFINES += LIBXMLRPC_XMLPARSE_LIBRARY

include(../common.pri)

#--------------------------------------------
# Compiler options
INCLUDEPATH += ../../lib/expat/xmltok
INCLUDEPATH += ../../lib/expat/xmlwf
INCLUDEPATH += ../../lib/util/include

#--------------------------------------------
# Source code

SOURCES += \
    ../../lib/expat/xmlparse/xmlparse.c

HEADERS += \
    ../../lib/expat/xmlparse/xmlparse.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

#--------------------------------------------
# Linker options

# libxmlrpc_util
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_util
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_util
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/               -llibxmlrpc_util

# libxmlrpc_xmltok
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/  -llibxmlrpc_xmltok
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/    -llibxmlrpc_xmltok
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win32/          -llibxmlrpc_xmltok

