QT += widgets svg

CONFIG += c++14

INCLUDEPATH  += $$PWD/src/ \
                $$PWD/src/graphics/ \
                $$PWD/external/QCustomPlot/ \
                $$PWD/external/fancytabbar/

SOURCES += src/main.cpp \
    src/parser.cpp \
    #src/runner.cpp \
    src/dmcache.cpp \
    src/facache.cpp \
    src/mainwindow.cpp \
    src/registerwidget.cpp \
    src/programfiletab.cpp \
    src/processortab.cpp \
    src/memorytab.cpp \
    src/cachetab.cpp \
    src/cachesetupwidget.cpp \
    src/cachebase.cpp \
    src/runnercache.cpp \
    src/cacheinspector.cpp \
    src/memorymodel.cpp \
    src/memorydisplaydelegate.cpp \
    src/memoryview.cpp \
    src/gotocombobox.cpp \
    src/addressdialog.cpp \
    src/codeeditor.cpp \
    src/tabbar.cpp \
    src/graphics/shape.cpp \
    src/graphics/connection.cpp \
    src/graphics/pipelinewidget.cpp \
    src/registercontainerwidget.cpp \
    src/aboutwidget.cpp \
    src/graphics/backgrounditems.cpp \
    src/instructionmodel.cpp \
    src/pipeline.cpp \
    src/pipelineobjects.cpp \
    src/assembler.cpp \
    src/syntaxhighlighter.cpp \
    src/pipelinetable.cpp \
    src/pipelinetablemodel.cpp \
    src/rwjumpwidget.cpp \
    src/rwjumpmodel.cpp \
    src/rundialog.cpp \
    src/binutils.cpp

HEADERS += \
    src/parser.h \
    src/defines.h \
    #src/runner.h \
    src/dmcache.h \
    src/facache.h \
    src/mainwindow.h \
    src/registerwidget.h \
    src/programfiletab.h \
    src/processortab.h \
    src/memorytab.h \
    src/cachetab.h \
    src/cachesetupwidget.h \
    src/cachebase.h \
    src/runnercache.h \
    src/cacheinspector.h \
    src/memorymodel.h \
    src/memorydisplaydelegate.h \
    src/memoryview.h \
    src/gotocombobox.h \
    src/addressdialog.h \
    src/addressdialog.h \
    src/codeeditor.h \
    src/tabbar.h \
    src/graphics/shape.h \
    src/graphics/connection.h \
    src/graphics/pipelinewidget.h \
    src/registercontainerwidget.h \
    src/aboutwidget.h \
    src/graphics/backgrounditems.h \
    src/instructionmodel.h \
    src/binutils.h \
    src/pipelineobjects.h \
    src/pipeline.h \
    src/mainmemory.h \
    src/assembler.h \
    src/syntaxhighlighter.h \
    src/pipelinetable.h \
    src/pipelinetablemodel.h \
    src/rwjumpwidget.h \
    src/rwjumpmodel.h \
    src/lexerutilities.h \
    src/graphics/descriptions.h \
    src/rundialog.h

FORMS += \
    src/mainwindow.ui \
    src/registerwidget.ui \
    src/programfiletab.ui \
    src/processortab.ui \
    src/memorytab.ui \
    src/cachetab.ui \
    src/cachesetupwidget.ui \
    src/cacheinspector.ui \
    src/addressdialog.ui \
    src/registercontainerwidget.ui \
    src/aboutwidget.ui \
    src/pipelinetable.ui \
    src/rwjumpwidget.ui \
    src/rundialog.ui


# External
DEFINES += QT_NO_PRINTER

HEADERS += \
   external/QCustomPlot/qcustomplot.h \
    external/fancytabbar/fancytab.h \
    external/fancytabbar/fancytabbar.h \


SOURCES += \
    external/QCustomPlot/qcustomplot.cpp \
    external/fancytabbar/fancytab.cpp \
    external/fancytabbar/fancytabbar.cpp \

RESOURCES += \
    resources/images.qrc \
    examples/examples.qrc

unix {
    isEmpty(PREFIX) {
        PREFIX = /usr
    }
    target.path = $$PREFIX/bin

    desktop.path = $$PREFIX/share/applications/
    desktop.files += Ripes.desktop

    icon512.path = $$PREFIX/share/icons/hicolor/512x512/apps
    icon512.files += Ripes.png

    icon256.path = $$PREFIX/share/icons/hicolor/256x256/apps
    icon256.files += Ripes.png

    INSTALLS += icon512
    INSTALLS += icon256
    INSTALLS += desktop
    INSTALLS += target
}
