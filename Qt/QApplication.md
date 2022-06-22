# QApplication
#Qt

http://doc.qt.io/qt-5/qapplication.html

```py
app = QApplication([])
```

> This is a requirement of [[Qt]]:
> - Every [[GUI]] app must have **exactly one instance** of [[QApplication]].

Many parts of Qt don't work until you have executed the above line.
You will therefore need it in virtually every (Py)Qt app you write.

The brackets `[]` in the above line represent the [[command line arguments#Python]] passed to the application. Because our app doesn't use any parameters, we leave the brackets empty.

## exec()

The last step is to hand control over to Qt and ask it to "run the application until the user closes it". This is done via the command:

```py
app.exec()
```

## arguments()

```py
app = QApplication(sys.argv)

if __name__ == '__main__':
	for i in app.arguments(): print(i)
```

## setStyleSheet()

- see [[style sheet]]