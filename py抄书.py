a=[0,1,2,3,4,5,6,7,8,9]
print(reversed(a))
print(list(reversed(a)))#反转一个序列对象

b=[12,45,3,5,35,855,65,-45]
print(sorted(b))

c=['asd',"Zas",'egf']
print(sorted(c,key=str.lower))#按小写进行排序
print(sorted(c,key=str.lower,reverse=True))#按小写进行反向 排序

a,b,c=[1,2,3],['a','b','c'],[4,5,6,7,8]
print(list(zip(a,b)))
print(list(zip(c,b)))

str1='123'
str2='abc'
print(list(zip(str1,str2)))

a=[1,5,1,5,7,9,4,1,5,2,6,65,4]
print(a.count(1))#返回1在列表中出现的次数

#使用zip创建字典
key='abcde'
value=range(1,6)
ss=dict(zip(key,value))
print(ss)

#使用update将一个字典的元素添加到另一个字典
key2='fgijk'
value2=range(6,11)
ss2=dict(zip(key2,value2))
ss3=ss.update(ss2)
print(ss3)      #为什么出现none?

#eval函数将字符串转化为有效的表达式来求值并返回计算结果
print(eval('pow(2,2)'))
print(eval('2+2'))

#获取现在时间
import time
print(time.ctime())

print("---------------------------\n\n\n")

num=100
def func():
    global num      #声明num是全局变量
    num=200

print(num)

print("\n---------------------------\n\n")

#map函数的使用
p=[1,2,3,4,5,6,7,8,9]
pp=map((lambda x:x+5),p)
pp2=list(pp)

print(pp)
print(pp2)

p3=list(map(str,p))
print(p3)

import functools
from functools import reduce
#reduce(function,sequence[,initilizer])
'''
function: 函数，有两个参数
sequence: 序列对象
initilizer: 可选，初始参数
'''

def add(x,y):
    return x+y

asas=reduce(add,[1,2,3,4,5])
print(asas)

asas=reduce(add,[2,3,4,5],1)    #1是初始参数
print(asas)