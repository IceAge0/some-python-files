def find():
    txt = open(r'F:\尝试程序\1.txt','rb')
    data = txt.read().decode('utf-8')      #python3一定要加上这句不然会编码报错！
    txt.close()

#获取txt的总行数！
    n = data.count('\n')
    print("总行数",n)
    #选取随机的数
    i = random.randint(1, (n+1))
    print("本次使用的行数",i)
    ###得到对应的i行的数据
    line=linecache.getline(r'F:\send1.txt',i)
    print(i)
