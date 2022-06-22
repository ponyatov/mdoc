# Layout
#Qt 

Like the example above, your [[UI/GUI]] will most likely consist of multiple [[widget]]s. In this case, you need to tell [[Qt]] how to position them. For instance, you can use [[Qt/QVBoxLayout]] to stack widgets vertically:

![[vlayout.png]]

```py
from PyQt5.QtWidgets import QApplication, QPushButton, QWidget, QVBoxLayout

app = QApplication(sys.argv)
window = QWidget()

vlayout = QVBoxLayout()
window.setLayout(vlayout)

vlayout.addWidget(QPushButton('top'))
vlayout.addWidget(QPushButton('bottom'))

if __name__ == '__main__':
    window.show()
    for i in app.arguments(): print(i)
    app.exec()
```

- As before, we instantiate a [[QApplication]]. 
- Then, we create a window. We use the most basic type [[QWidget]] for it because it merely acts as a container and we don't want it to have any special behavior. 
- Next, we create the layout and add two [[QPushButton]]s to it. 
- Finally, we tell the window to use this `vlayout` (and thus its contents). 
- As in our first application, we end with calls to `.show()` and `app.exec()`.

There are of course many other kinds of layouts (eg. [[QHBoxLayout]] to lay out items in a row). See Qt's documentation for an overview.