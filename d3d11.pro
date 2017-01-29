TARGET = qsgd3d11backend

QT += core-private gui-private qml-private quick-private
TEMPLATE = lib
PLUGIN_TYPE = scenegraph
PLUGIN_CLASS_NAME = QSGD3D11Adaptation

QMAKE_TARGET_PRODUCT = "Qt Quick D3D11 Renderer (Qt $$QT_VERSION)"
QMAKE_TARGET_DESCRIPTION = "Quick D3D11 Renderer for Qt."

SOURCES += \
    $$PWD/qsgd3d11adaptation.cpp \
    $$PWD/qsgd3d11renderloop.cpp \
    $$PWD/qsgd3d11renderer.cpp \
    $$PWD/qsgd3d11context.cpp \
    $$PWD/qsgd3d11rendercontext.cpp \
    $$PWD/qsgd3d11internalrectanglenode.cpp \
    $$PWD/qsgd3d11material.cpp \
    $$PWD/qsgd3d11builtinmaterials.cpp \
    $$PWD/qsgd3d11texture.cpp \
    $$PWD/qsgd3d11internalimagenode.cpp \
    $$PWD/qsgd3d11glyphnode.cpp \
    $$PWD/qsgd3d11glyphcache.cpp \
    $$PWD/qsgd3d11layer.cpp \
    $$PWD/qsgd3d11painternode.cpp \
    $$PWD/qsgd3d11publicnodes.cpp \
    $$PWD/qsgd3d11spritenode.cpp

NO_PCH_SOURCES += \
    $$PWD/qsgd3d11engine.cpp

HEADERS += \
    $$PWD/qsgd3d11adaptation_p.h \
    $$PWD/qsgd3d11renderloop_p.h \
    $$PWD/qsgd3d11renderer_p.h \
    $$PWD/qsgd3d11context_p.h \
    $$PWD/qsgd3d11rendercontext_p.h \
    $$PWD/qsgd3d11engine_p.h \
    $$PWD/qsgd3d11engine_p_p.h \
    $$PWD/qsgd3d11internalrectanglenode_p.h \
    $$PWD/qsgd3d11material_p.h \
    $$PWD/qsgd3d11builtinmaterials_p.h \
    $$PWD/qsgd3d11texture_p.h \
    $$PWD/qsgd3d11internalimagenode_p.h \
    $$PWD/qsgd3d11glyphnode_p.h \
    $$PWD/qsgd3d11glyphcache_p.h \
    $$PWD/qsgd3d11layer_p.h \
    $$PWD/qsgd3d11painternode_p.h \
    $$PWD/qsgd3d11publicnodes_p.h \
    $$PWD/qsgd3d11spritenode_p.h

LIBS += -ldxgi -ld3d11 -ld3dcompiler -ldcomp

include($$PWD/shaders/shaders.pri)

OTHER_FILES += $$PWD/d3d11.json
