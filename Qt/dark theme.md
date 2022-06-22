# dark theme
## [[QPalette]]

https://stackoverflow.com/questions/48256772/dark-theme-for-qt-widgets

```py
from PyQt5.QtWidgets import QApplication, QWidget
from PyQt5.QtGui import QPalette, QColor

app = QApplication(sys.argv)

dark = QPalette()
dark.setColor(QPalette.Window, QColor(0x22, 0x22, 0x22))
app.setPalette(dark)
```
