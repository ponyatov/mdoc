# style sheets
#Qt 

http://doc.qt.io/qt-5/stylesheet-syntax.html

In addition to the above, you can change the appearance of your application via **style sheets**. This is [[Qt]]'s analogue of [[CSS]]. We can use this for example to add some spacing:

```py
from PyQt5.QtWidgets import QApplication, QPushButton
app = QApplication([])

app.setStyleSheet("QPushButton { margin: 10ex; }")

button = QPushButton('Hello World')
button.show()
app.exec()
```

- [[QApplication#setStyleSheet]]
- [[QPushButton]]

