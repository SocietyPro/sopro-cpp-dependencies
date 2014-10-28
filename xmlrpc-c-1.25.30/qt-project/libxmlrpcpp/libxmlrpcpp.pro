#-------------------------------------------------
#
# Project created by QtCreator 2014-10-03T12:24:30
#
#-------------------------------------------------

QT       -= core gui

TARGET = libxmlrpcpp
TEMPLATE = lib

DEFINES += LIBXMLRPCPP_LIBRARY

include(../common.pri)

#---------------------------------------
# Compiler options

INCLUDEPATH += ../../lib/curl_transport


#---------------------------------------
# Source code

SOURCES += \
    ../../src/cpp/base64.cpp \
    ../../src/cpp/client.cpp \
    ../../src/cpp/client_simple.cpp \
    ../../src/cpp/curl.cpp \
    ../../src/cpp/env_wrap.cpp \
    ../../src/cpp/fault.cpp \
    ../../src/cpp/girerr.cpp \
    ../../src/cpp/girmem.cpp \
    ../../src/cpp/libwww.cpp \
    ../../src/cpp/outcome.cpp \
    ../../src/cpp/packetsocket.cpp \
    ../../src/cpp/param_list.cpp \
    ../../src/cpp/pstream.cpp \
    ../../src/cpp/registry.cpp \
    ../../src/cpp/server_abyss.cpp \
    ../../src/cpp/server_cgi.cpp \
    ../../src/cpp/server_pstream.cpp \
    ../../src/cpp/server_pstream_conn.cpp \
    ../../src/cpp/value.cpp \
    ../../src/cpp/wininet.cpp \
    ../../src/cpp/xml.cpp \
    ../../lib/wininet_transport/xmlrpc_wininet_transport.c

HEADERS += \
    ../../include/xmlrpc-c/base.h \
    ../../include/xmlrpc-c/base64.hpp \
    ../../include/xmlrpc-c/client.hpp \
    ../../include/xmlrpc-c/client_simple.hpp \
    ../../include/xmlrpc-c/client_transport.hpp \
    ../../include/xmlrpc-c/girerr.hpp \
    ../../include/xmlrpc-c/girmem.hpp \
    ../../include/xmlrpc-c/oldcppwrapper.hpp \
    ../../include/xmlrpc-c/packetsocket.hpp \
    ../../include/xmlrpc-c/registry.hpp \
    ../../include/xmlrpc-c/server_abyss.hpp \
    ../../include/xmlrpc-c/server_cgi.hpp \
    ../../include/xmlrpc-c/server_pstream.hpp \
    ../../include/xmlrpc-c/timeout.hpp \
    ../../include/xmlrpc-c/xml.hpp \
    ../../src/cpp/env_wrap.hpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}

#---------------------------------------
# Linker options

# general libraries
LIBS += -lws2_32
LIBS += -lWininet

# libxmlrpc
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win22/         -llibxmlrpc

INCLUDEPATH += $$PWD/../libxmlrpc
DEPENDPATH  += $$PWD/../libxmlrpc


# libxmlrpc_util
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_util
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_util
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win32/         -llibxmlrpc_util

INCLUDEPATH += $$PWD/../libxmlrpc_util
DEPENDPATH  += $$PWD/../libxmlrpc_util

# libxmlrpc_server
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_server
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_server
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win32/         -llibxmlrpc_server

# libxmlrpc_server_abyss
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_server_abyss
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_server_abyss
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win32/         -llibxmlrpc_server_abyss

# libxmlrpc_client
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_client
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_client
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win32/         -llibxmlrpc_client

# libxmlrpc_abyss
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibxmlrpc_abyss
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/   -llibxmlrpc_abyss
else:unix:                               LIBS += -L$$OUT_PWD/../../bin/Win32/         -llibxmlrpc_abyss

INCLUDEPATH += $$PWD/../libxmlrpc_client
DEPENDPATH  += $$PWD/../libxmlrpc_client
