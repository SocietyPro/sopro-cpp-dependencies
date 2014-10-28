#-------------------------------------------------
#
# Project created by QtCreator 2014-10-03T10:19:43
#
#-------------------------------------------------

QT       -= core gui
TARGET = libxmlrpc_util
TEMPLATE = lib

#--------------------------------------------
# compiler options

DEFINES += LIBXMLRPC_UTIL_LIBRARY
DEFINES +=

include(../common.pri)

#---------------------------------------------
# Linker options
LIBS += -lws2_32

#----------------------------------------------
# Source files

SOURCES += \
    ../../lib/libutil/asprintf.c \
    ../../lib/libutil/base64.c \
    ../../lib/libutil/error.c \
    ../../lib/libutil/make_printable.c \
    ../../lib/libutil/memblock.c \
    ../../lib/libutil/select.c \
    ../../lib/libutil/sleep.c \
    ../../lib/libutil/string_number.c \
    ../../lib/libutil/time.c \
    ../../lib/libutil/utf8.c

HEADERS += \
    ../../include/xmlrpc-c/base64_int.h \
    ../../include/xmlrpc-c/select_int.h \
    ../../include/xmlrpc-c/sleep_int.h \
    ../../include/xmlrpc-c/string_int.h \
    ../../include/xmlrpc-c/string_number.h \
    ../../include/xmlrpc-c/time_int.h \
    ../../include/xmlrpc-c/util.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
