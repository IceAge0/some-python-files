from tkinter import *
import tkinter.messagebox
class Application(Frame):

    def __init__(self,master=None):
        super().__init__(master)
        self.master=master
        self.pack()
        self.createWidget()

    def createWidget(self):
        self.label1=Label(self,text='用户名')
        self.label1.pack()

        v1=StringVar()
        self.entry1=Entry(self,textvariable=v1)
        self.entry1.pack()
        v1.set('admin')

        self.btn1=Button(self,text='loin',command=self.login())

    def login(self):
        messagebox.showinfo("abc","aaa")

if __name__ == "__main__":
    root=Tk()
    root.geometry('400x130+200+300')
    app=Application(master=root)
    root.mainloop()