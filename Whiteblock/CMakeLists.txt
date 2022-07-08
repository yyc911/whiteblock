cmake_minimum_required(VERSION 3.23)

project(Whiteblock VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(SOURCES main.cpp blockdata.cpp blockdata.h)
find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
qt_add_resources(img_FILES image.qrc)
qt_add_resources(muc_FILES music.qrc)
qt_add_resources(qml_FILES qml.qrc)
qt_add_executable(appWhiteblock
    ${SOURCES} ${img_FILES} ${qml_FILES} ${muc_FILES}
)
#qt_add_qml_module(appWhiteblock
#    URI Whiteblock
#    VERSION 1.0
#    QML_FILES main.qml Gamepage.qml Mainpage.qml Block.qml Failpage.qml

#)

set_target_properties(appWhiteblock PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_compile_definitions(appWhiteblock
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appWhiteblock
    PRIVATE Qt6::Quick)
