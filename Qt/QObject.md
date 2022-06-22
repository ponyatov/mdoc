# QObject

https://bcairns.medium.com/understanding-qobject-in-qt-97de374ca0cd

The heart of any application built with [[Qt]] is undeniably the humble **QObject** class. Does not matter if you are working in a console, widgets application or a [[QML]] app. At some point you are relying on **QObject** to work its magic.

## What makes a class a QObject?

When you first make a class you are presented with some choices, using [[Qt Creator|Qt creators]] class wizard does not really help answer them.

The code that is generated looks something like this…

```C==
#include <QObject>


```
