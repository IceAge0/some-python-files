import linecache
import random
import pygame


def get_name(name):
    f=open('1.txt','r')     #打开文件
    a=len(f.readlines())    #获取文件行数
    n=random.randint(1,a+1)
    name = (linecache.getline('1.txt', n))        # 读取普通文件的第n行
    return name

import tkinter
root=tkinter.Tk()
SCREEN_SIZE = (200,400)
#root.geometry('400x200')
screen = pygame.display.set_mode(SCREEN_SIZE)
button1=tkinter.Button(root,text='start',width=10,height=5)
screen.blit(button1, (0, 0))
button1.pack()



root.mainloop()
