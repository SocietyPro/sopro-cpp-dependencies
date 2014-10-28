#-------------------------------------------------
#
# Project created by QtCreator 2014-10-03T12:06:54
#
#-------------------------------------------------

QT       -= core gui

TARGET = libxmlrpc_xmltok
TEMPLATE = lib

DEFINES += LIBXMLRPC_XMLTOK_LIBRARY

include(../common.pri)

#----------------------------------------------
# Source files


SOURCES += \
    ../../lib/expat/xmltok/xmlrole.c \
    ../../lib/expat/xmltok/xmltok.c

HEADERS += \
    ../../lib/expat/xmltok/ascii.h \
    ../../lib/expat/xmltok/iasciitab.h \
    ../../lib/expat/xmltok/latin1tab.h \
    ../../lib/expat/xmltok/nametab.h \
    ../../lib/expat/xmltok/utf8tab.h \
    ../../lib/expat/xmltok/xmldef.h \
    ../../lib/expat/xmltok/xmlrole.h \
    ../../lib/expat/xmltok/xmltok.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
