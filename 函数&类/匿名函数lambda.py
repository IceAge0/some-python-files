'''
格式:
lambda 参数1，参数2，参数3:执行代码语句
特点：
1.没有名字
2.表达式有且只有一个
3.相当于自带return
'''
test = lambda  x,y:x+y
print(test(1,3))

bigger=lambda a,b:a if a>b else b
print(bigger(1,2))
print(bigger(3,2))
bigger2=(lambda a,b:a if a>b else b)(10,20)
#直接调用