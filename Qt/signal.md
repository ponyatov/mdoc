# signal
## [[slot]]

- https://wiki.qt.io/New_Signal_Slot_Syntax/ru
- https://woboq.com/blog/new-signals-slots-syntax-in-qt5.html

[[Qt]] uses a mechanism called **signals** to let you react to events such as the user clicking a button. The following example illustrates this. It contains a button that, when clicked, shows a message box:

```py
top = QPushButton('top')

def on_top(): QMessageBox(text='top').exec()
top.clicked.connect(on_top)
```

- [[QPushButton#clicked]]
- [[#connect]]()
- [[QMessageBox]]


## connect()

https://woboq.com/blog/new-signals-slots-syntax-in-qt5.html

## SIGNAL

### Previous syntax

```Cpp
connect(
	sender,
		SIGNAL(valueChanged(QString,QString)), 
	receiver, 
		SLOT(updateValue(QString)) 
);
```

- [[Qt/signal#SIGNAL]]
- [[Qt/SLOT]]

### New syntax: using function pointers

```Cpp
connect(
	sender, 
		&Sender::valueChanged, 
	receiver, 
		&Receiver::updateValue 
);
```

- Compile-time checking
- Arguments automatic type conversion
- [[Connecting to any function]]

