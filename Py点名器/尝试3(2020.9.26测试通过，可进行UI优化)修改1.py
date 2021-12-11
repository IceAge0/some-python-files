#!/usr/bin/python2.6  
# -*- coding: utf-8 -*- 
import tkinter
import tkinter.messagebox
import random
import time
from tkinter.filedialog import *

win=tkinter.Tk()
win.geometry('400x200')
 
class Application(Frame):
#Frame所有Widget的父容器
    def __init__(self, master=None):
        Frame.__init__(self, master)
        '''如果子类的构造方法中没有显示的调用基类构造方法，则系统默认调用基类无参数的构造方法，而基类中又没有默认无参的构造方法，则编译出错。
        而且子类的构造函数，可能与父类的参数个数、顺序都不一致，无法推测出应该如何调用父类的构造函数。所以需要手动调用父类构造函数。'''
        #self.master=master
        #master.geometry('400x400')
        self.pack()
        #pack()方法把Widget加入到父容器中，并实现布局。pack()是最简单的布局.
        self.createWidgets()
        self.fh2="null"

    def createWidgets(self):
        self.name = StringVar()
        self.name.set("123")       
        self.helloLabel = Label(self, textvariable=self.name)
        self.helloLabel.pack()
        self.alertButton = Button(self, text='Open', command=self.inputnumber)
        self.alertButton.pack(side=LEFT)
        #side定义停靠在父组件的哪一边上（默认为”top”）。anchor对齐方式，左w右e顶n底s
        self.startButton = Button(self, text='Start', command=self.randomStart)        
        self.startButton.pack(side=LEFT)
        self.endButton = Button(self, text='End', command=self.randomStop)
        self.endButton.pack(anchor="w")
    
        
        
    def inputnumber(self):
        fd = LoadFileDialog(self) 
        filename = fd.go() 
        # 显示打开文件对话框，并获取选择的文件名称
        with open(filename,'r') as f:
            self.fh2=f.readlines()

    def randomStart(self):
        self.n=1
        while self.n==1:                
                #num = random.randint(12, 20)  
                num = random.choice(self.fh2)
                time.sleep(0.1)
                self.update()
                self.name.set(num)
                if self.n==0:
                    break
                    
    def randomStop(self):
        self.n=0
                  
app = Application()
app.master.title('Py点名器')
app.mainloop()
