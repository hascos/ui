QT += quick virtualkeyboard

TEMPLATE = app

CONFIG += c++11
CONFIG += release

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
DEFINES += QT_DEPRECATED_WARNINGS   # disables depricated warnings

SOURCES += \
        Controllers/api.cpp \
        main.cpp

RESOURCES += qml.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# Copy the font files to the build directory during the build process
QMAKE_EXTRA_TARGETS += font_files
PRE_TARGETDEPS += $$font_files.path

DISTFILES += \
    ui/components/BottomBar/bottomBar.qml

HEADERS += \
    Controllers/api.h
