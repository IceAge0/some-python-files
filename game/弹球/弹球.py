from tkinter import *
from tkinter import messagebox
import random
import time
'''
root=Tk(className = "弹球")
root.resizable(0,0)

cv=Canvas(root,width=500,height=400,bd=0,highlightthickness=0)
cv.pack()

root.update()
'''

#创建ball类
class Ball:
    def __init__(self,cv,color):
        self.canvas=cv
        self.paddle =paddle
        self.id=cv.create_oval(10,10,25,25,fill=color)
        self.canvas.move(self.id,200,100)
        starts=[-3,-2,-1,1,2,3]
        random.shuffle(starts)      #混排
        self.x=starts[0]               #随机获取，随机运动效果
        self.y=-3
        self.canvas_height = self.canvas.winfo_height()
        self.canvas_width = self.canvas.winfo_width()
        self.hit_bottom = False

    def hit_paddle (self, pos):
        global score
        paddle_pos = self.canvas.coords (self.paddle.id)
        if pos [2]>= paddle_pos[0] and pos [0]<=paddle_pos [2]:
            if pos [3]>= paddle_pos[1] and pos[3]<= paddle_pos[3]:
                score += 1
                return True
        return False

    def draw(self):
        self.canvas.move(self.id,self.x,self.y)
        pos=self.canvas.coords(self.id)
        if pos[0]<=0:
            self.x=3
        if pos [2]>= self.canvas_width:
            self.x=-3
        if self.hit_paddle (pos) == True:
            self.y=-3
        if pos[1]<=0:
            self.y=3
        if pos [3] >= self.canvas_height:
            self.hit_bottom = True

class Paddle:

    def __init__ (self, cv, color):
        self.canvas = cv
        self.id= cv.create_rectangle (0, 0, 100, 10, fill = color)
        self. canvas.move (self.id, 200, 300)
        self.x= 0
        self.canvas_width = self.canvas.winfo_width( )
        self.canvas.bind_all ('<KeyPress-Left>', self.turn_left)
        self.canvas.bind_all ('<KeyPress-Right>', self.turn_right)

    def draw (self):
        self.canvas.move (self.id, self.x, 0)
        pos = self.canvas.coords (self.id)
        if pos[0]<= 0:
            self.x= 0
        elif pos [2] >= self.canvas_width:
            self.x= 0

    def turn_left (self, evt):
        self.x=-2

    def turn_right (self, evt):
        self.x= 2

root = Tk (className = "BallGame")
root.resizable (0, 0)
score = 0
cv= Canvas (root, width = 500, height = 400, bd = 0, highlightthickness = 0)
cv.pack()

my_image = PhotoImage (file = 'ballbg.gif')
cv.create_image (250, 200, image = my_image)
root.update( )

paddle = Paddle (cv, "green")
ball=Ball(cv,"red")

while 1:
    if ball.hit_bottom == False:
        ball.draw()
        paddle.draw()
    else:
        messagebox. showinfo (title ='游戏结束',message = "你的分数为: "+str(score) )
        break       #不加会死循环（关不掉弹窗）
        
    root.update_idletasks()
    root.update()
    time.sleep(0.01)
