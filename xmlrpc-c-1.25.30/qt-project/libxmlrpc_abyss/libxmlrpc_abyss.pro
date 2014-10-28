#-------------------------------------------------
#
# Project created by QtCreator 2014-10-04T10:04:51
#
#-------------------------------------------------

QT       -= core gui

TARGET = libxmlrpc_abyss
TEMPLATE = lib
DEFINES += LIBXMLRPC_ABYSS_LIBRARY

include(../common.pri)


#-------------------------------------------------
# Source code

SOURCES += \
    ../../lib/abyss/src/channel.c \
    ../../lib/abyss/src/chanswitch.c \
    ../../lib/abyss/src/conf.c \
    ../../lib/abyss/src/conn.c \
    ../../lib/abyss/src/data.c \
    ../../lib/abyss/src/date.c \
    ../../lib/abyss/src/file.c \
    ../../lib/abyss/src/handler.c \
    ../../lib/abyss/src/http.c \
    ../../lib/abyss/src/init.c \
    ../../lib/abyss/src/response.c \
    ../../lib/abyss/src/server.c \
    ../../lib/abyss/src/session.c \
    ../../lib/abyss/src/socket.c \
    ../../lib/abyss/src/socket_win.c \
    ../../lib/abyss/src/thread_pthread.c \
    ../../lib/abyss/src/trace.c \
    ../../lib/abyss/src/token.c

HEADERS += \
    ../../include/xmlrpc-c/abyss.h \
    ../../include/xmlrpc-c/abyss_winsock.h \
    ../../lib/abyss/src/abyss_info.h \
    ../../lib/abyss/src/channel.h \
    ../../lib/abyss/src/chanswitch.h \
    ../../lib/abyss/src/conn.h \
    ../../lib/abyss/src/data.h \
    ../../lib/abyss/src/date.h \
    ../../lib/abyss/src/file.h \
    ../../lib/abyss/src/handler.h \
    ../../lib/abyss/src/http.h \
    ../../lib/abyss/src/server.h \
    ../../lib/abyss/src/session.h \
    ../../lib/abyss/src/socket.h \
    ../../lib/abyss/src/socket_win.h \
    ../../lib/abyss/src/thread.h \
    ../../lib/abyss/src/token.h \
    ../../lib/abyss/src/trace.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

#--------------------------------------------------
# Linker options

LIBS += -lWininet
LIBS += -lWs2_32


# libxmlrpc_util
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_util
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_util
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/               -llibxmlrpc_util


# libxmlrpc_abyss
#win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_abyss
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_abyss
#else:unix:                               LIBS += -L$$OUT_PWD/../../bin/               -llibxmlrpc_abyss

