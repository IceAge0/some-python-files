print(round(1.23456789,5))      #四舍五入
print(round(1.23456789))        #逗号后的数表示将x值转换为小数点后x位有效值
#调用sqrt : import math 和from math import sqrt

'''
random模块
'''

import random
a1=random.random()          #随机生成[0,1)范围内的实数    
a2=random.uniform(1,10)     #随机生成[a,b]范围内的实数
a3=random.randint(1,10)     #随机生成[0,1]范围内的整数
b=range(10)                 
a4=random.choice(b)         #从序列中随机挑选一个元素
a5=random.sample(b,3)       #从序列中随机挑选k个元素
a6=random.shuffle(b)        #将序列中所有元素随机排序
print(a1)
print(a2)
print(a3)
print(a4)
print(a5)
print(a6)


'''
Image模块
'''
from PIL import Image
im=Image.open("1.jpg")      #打开1.jpg图像文件
print(im.frmat)             #获取图像文件格式
print(im.size)              #获取图像尺寸大小
print(im.mode)              #获取图像颜色模式
im.rotate(45).show()        #将图像旋转45度后显示
