#-------------------------------------------------
#
# Project created by QtCreator 2014-10-04T09:46:28
#
#-------------------------------------------------

QT       -= core gui

TARGET = libxmlrpc_server
TEMPLATE = lib
DEFINES += LIBXMLRPC_SERVER_LIBRARY

include(../common.pri)

SOURCES += \
    ../../src/method.c \
    ../../src/registry.c \
    ../../src/system_method.c

HEADERS += \
    ../../include/xmlrpc-c/base.h \
    ../../include/xmlrpc-c/base_int.h \
    ../../include/xmlrpc-c/c_util.h \
    ../../include/xmlrpc-c/config.h \
    ../../include/xmlrpc-c/server.h \
    ../../include/xmlrpc-c/string_int.h \
    ../../include/xmlrpc-c/util.h \
    ../../src/method.h \
    ../../src/system_method.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

#-------------------------------------------------
# Linker options

# libxmlrpc
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/  -llibxmlrpc
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/    -llibxmlrpc
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win32/          -llibxmlrpc

INCLUDEPATH += $$PWD/../libxmlrpc
DEPENDPATH  += $$PWD/../libxmlrpc

# libxmlrpc_util
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_util
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_util
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/               -llibxmlrpc_util

INCLUDEPATH += $$PWD/../libxmlrpc_util
DEPENDPATH  += $$PWD/../libxmlrpc_util
