#-------------------------------------------------
#
# Project created by QtCreator 2014-10-04T09:59:04
#
#-------------------------------------------------

QT       -= core gui

TARGET = libxmlrpc_server_abyss
TEMPLATE = lib
DEFINES += LIBXMLRPC_SERVER_ABYSS_LIBRARY

include(../common.pri)

#-------------------------------------------------
# Source code

SOURCES += \
    ../../src/xmlrpc_server_abyss.c

HEADERS += \
	../../include/xmlrpc-c/base.h \
	../../include/xmlrpc-c/base_int.h \
	../../include/xmlrpc-c/c_util.h \
	../../include/xmlrpc-c/config.h \
	../../include/xmlrpc-c/server.h \
	../../include/xmlrpc-c/server_abyss.h \
	../../include/xmlrpc-c/string_int.h \
	../../include/xmlrpc-c/util.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}


#------------------------------------------------
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

# libxmlrpc_server
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_server
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_server
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/               -llibxmlrpc_server

# libxmlrpc_abyss
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_abyss
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_abyss
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/               -llibxmlrpc_abyss

INCLUDEPATH += $$PWD/../libxmlrpc_server
DEPENDPATH  += $$PWD/../libxmlrpc_server
