# MDI
## [[SDI]]

https://www.tutorialspoint.com/pyqt/pyqt_multiple_document_interface.htm

```python
class Window(QMainWindow):
    def __init__(self, argv):
        super().__init__()
        self.argv = argv
        self.setWindowTitle(self.argv[0])
        self.mdi()
        self.tab()
        self.editor()

    def mdi(self):
        self.mdi = QMdiArea()
        self.setCentralWidget(self.mdi)

    def tab(self):
        self.tab = QTabWidget(self.mdi)

    def editor(self):
        self.editor = {}
        for i in self.argv[1:]:
            self.editor[i] = QTextEdit(self)
            self.tab.addTab(self.editor[i], i)
            with open(i) as src:
                self.editor[i].setText(src.read())
```
