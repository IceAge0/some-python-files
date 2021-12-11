import tkinter
from tkinter import Canvas,Tk,messagebox,font

canvas_width =400
canvas_height = 600

root=tkinter.Tk()
c = tkinter.Canvas(root,width = canvas_width,height = canvas_height,\
    background = 'sky blue')
c.pack()

button1=tkinter.Button(root,text="button1")
button1.place(x=20,y=20,width=100,height=100)

text1=tkinter.Text(root,text="aa")
text1.place(x=120,y=120,width=100,height=100)

root.mainloop()
