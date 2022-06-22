# `qmake`
- https://doc.qt.io/qt-5/qmake-tutorial.html

- [[QT]] components to be included in build
- [[TARGET]] executable file name
- source code
	- [[SOURCES]] .cpp
	- [[HEADERS]] .hpp
- platform-specific code:
    - [[win32]]
    - [[unix]]
        - [[linux]]
        - [[mac]]
- dirs
	- [[INCLUDEPATH]] = src tmp
	- [[DESTDIR]] = bin
	- [[OBJECTS_DIR]] = tmp
	- [[MOC_DIR]] = tmp
- compiler options
	- [[Rust/config]]
	- [[DEFINES]]
	- [[QMAKE_CXXFLAGS]]

## pro

```Makefile
QT += core
```
```Makefile
SOURCES += src/K.cpp
HEADERS += src/K.hpp
```
```Makefile
SOURCES += tmp/K.parser.cpp tmp/K.lexer.cpp
HEADERS += tmp/K.parser.hpp
```
```Makefile
INCLUDEPATH += src
INCLUDEPATH += tmp
```
```Makefile
TARGET = K

DESTDIR     = bin
OBJECTS_DIR = tmp
MOC_DIR     = tmp
```
```Makefile
CONFIG  += debug
CONFIG  += c++11
```
```Makefile
QMAKE_CXXFLAGS += -Wunused-function
QMAKE_CXXFLAGS += -O0
```
### [[readline]]
```Makefile
LIBS += -Lreadline
```
```Makefile
win32 {
    SOURCES += src/win32.cpp
    CONFIG  += console
}

linux {
    SOURCES += src/linux.cpp
}
```
