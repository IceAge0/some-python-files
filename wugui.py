import turtle as t



def draw_plannet(col,x,y,a):
    t.shape('triangle')
    t.penup()
    t.goto(x,y)
    t.pendown()
    t.color(col)
    t.begin_fill()
    t.circle(a)
    t.end_fill()

    
draw_plannet('red',50,50,50)


