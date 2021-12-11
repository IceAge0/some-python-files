import turtle as t
from itertools import cycle
from random import randint,random    #导入random模块random和randint函数
t.speed(0)
colors =cycle(['red','orange','yellow','green','blue','purple'])
def draw_star(points,size,col,x,y):     #用五个参数定义星星形状大小颜色位置
    t.penup()
    t.goto(x,y) #用x，y坐标设置星星在图上的位置
    t.pendown()
    angle = 180-(180/points)    #角度按照星星有几个角来计算（这里的角数，也就是变量points的值，只能是奇数）
    t.color(col)
    t.begin_fill()
    for i in range (points):    #此for循环让turtle不断重复画出星星每一个角
        t.forward(size)
        t.right(angle)
    t.end_fill()    #与前面的begin fill进行颜色填充



    #main code
    t.Screen().bgcolor(next(colors))     #背景色为深蓝色
draw_star(5,50,'yellow',0,0)        #调用函数
t.hideturtle()
while True:
    ranPts = randint(2,5) * 2 + 1    #把星星角数设定为5,11之间的一个奇数
    ranSize = randint(10,50)
    ranCol = (random(),random(),random())
    ranX = randint(-350,300)
    ranY = randint(-250,250)

    draw_star(ranPts,ranSize,ranCol,ranX,ranY)

