import tkinter
from tkinter import *

class MainWindow:
    def __init__(self):
        self.root=Tk()

        self.label1=tkinter.Label(self.root,
                width=40,
                height=5,
                text='   ')
        self.label1.pack()

        self.button1=tkinter.Button(self.root,
        width=12,
        height=2,
        text='开始')
        self.button1.pack()

        self.button2=tkinter.Button(self.root,
        width=12,
        height=2,
        text='暂停')
        self.button2.pack()

        #按照网格排列文本框
        self.button1.grid(row=0,colum=1)
        self.button2.grid(row=0,colum=2)

        self.root.mainloop()

root=MainWindow()
