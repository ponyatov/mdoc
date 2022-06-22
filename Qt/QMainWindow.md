# QMainWindow

```Cpp
#include <QMainWindow>

extern QApplication* app;
extern QMainWindow* win;

int argc = 0;
char** argv = nullptr;

QApplication* app = nullptr;
QMainWindow* win = nullptr;

void gui() {
    assert(app = new QApplication(argc, argv));
    assert(win = new QMainWindow());
    win->show();
    app->exec();
}
```
