#入门书P208
import socket
HOST=''
PORT=10000
#创建socket对象s，参数分别表现地址和协议类型
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.bind((HOST,PORT))
s.listen(1)
conn,addr=s.accept()
print('客户端地址'，addr)
while True:
    data=conn.recv(1024)
    print('获取')
