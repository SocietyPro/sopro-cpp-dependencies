#-------------------------------------------------
#
# Project created by QtCreator 2014-10-03T15:48:31
#
#-------------------------------------------------

QT       -= core gui

TARGET   = libxmlrpc_client
TEMPLATE = lib
DEFINES  += LIBXMLRPC_CLIENT_LIBRARY

include(../common.pri)

#------------------------------------------------
# Source files

SOURCES += \
    ../../src/xmlrpc_client.c \
    ../../src/xmlrpc_client_global.c \
    ../../src/xmlrpc_server_info.c \
    ../../lib/wininet_transport/xmlrpc_wininet_transport.c

HEADERS += \
    ../../include/xmlrpc-c/base.h \
    ../../include/xmlrpc-c/base_int.h \
    ../../include/xmlrpc-c/c_util.h \
    ../../include/xmlrpc-c/client.h \
    ../../include/xmlrpc-c/client_global.h \
    ../../include/xmlrpc-c/config.h \
    ../../include/xmlrpc-c/server.h \
    ../../include/xmlrpc-c/string_int.h \
    ../../include/xmlrpc-c/util.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

#------------------------------------------------
# Linker options

LIBS += -lWininet

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
