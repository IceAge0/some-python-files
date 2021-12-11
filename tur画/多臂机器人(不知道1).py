import turtle as t
def rectangle(horizontal,vertical,color):
    t.pendown() #落笔
    t.pensize(1)#粗细
    t.color(color)#Lawn Green草绿色，Seashell贝壳白色，Blue蓝色，Purple紫色
    #Light Blue,Yellow,Goldenrod,Hot Pink,Thistle,Gold,Peru,Forest Green,Maroon,Navy,Peach Puff
    #Aquamarine,Misty Rose,Deep Pink,Lemon Chiffon,
    t.begin_fill()
    for counter in range(1,3):
        t.forward(horizontal)
        t.right(90)
        t.forward(vertical)#前进的单位长度距离
        t.right(90)#转动角度90度
    t.end_fill()#和前面的begin fill一起将框内填满
    t.penup()#提笔（在移动时不会显示出痕迹）

def arm(color):
    t.pendown()
    t.begin_fill()
    t.color(color)
    t.forward(60)
    t.right(90)
    t.forward(50)
    t.right(90)
    t.forward(10)
    t.right(90)
    t.forward(40)
    t.left(90)
    t.forward(50)
    t.right(90)
    t.forward(10)
    t.end_fill()
    t.penup()
    t.setheading(0)#函数前置
    
#feet
t.goto(-100,-150)
rectangle(50,20,'blue')
t.goto(-30,-150)
rectangle(50,20,'blue')
#legs
t.goto(-25,-50)
rectangle(15,100,'gray')
t.goto(-55,-50)
rectangle(-15,100,'gray')
#body
t.goto(-90,100)
rectangle(100,150,'gray')
#arms
t.goto(-90,85)
t.setheading(180)#乌龟方向朝窗口左边
arm('light blue')

t.goto(-90,20)
t.setheading(180)#乌龟方向朝窗口右边
arm('purple')

t.goto(10,85)
t.setheading(0)#乌龟方向朝窗口右边
arm('goldenrod')
#neck
t.goto(-50,120)
rectangle(15,20,'gray')
#head
t.goto(-85,170)
rectangle(80,50,'red')
#eyes
t.goto(-60,160)
rectangle(30,10,'white')
t.goto(-55,155)
rectangle(5,5,'black')
t.goto(-40,155)
rectangle(5,5,'black')
#mouth
t.goto(-65,135)
rectangle(40,5,'black')
t.hideturtle
    
