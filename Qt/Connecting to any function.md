# Connecting to any function
#Qt 

https://woboq.com/blog/new-signals-slots-syntax-in-qt5.html#:~:text=%7D%3B-,Connecting%20to%20any%20function,-As%20you%20might

```Cpp
static void someFunction() { qDebug() << "pressed"; } 
// ... somewhere else 
QObject::connect(button, &QPushButton::clicked, someFunction);
```
