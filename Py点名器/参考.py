import linecache
import random

print(linecache.getline(random.__file__, 3))    # 读取random模块的源文件的第3行

# 读取本程序的第3行

print(linecache.getline('参考.py', 4))

# 读取普通文件的第2行

print(linecache.getline('1.txt', 2))

