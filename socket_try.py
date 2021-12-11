from scapy.all import *

'''
#print(ls(RIP))
print(ls(IP))
#ls查看某个包的用法、默认参数
'''

t=IP(dst="192.168.0.104"，src="192.168.0.1")
#实例化
#dst应该是目标地址，src源地址


#应用层之下的数据包，基本使用协议大写对应的方法就可以直接生成
ip_packet=IP()

#ping使用ICMP协议，所以在构造时要使用三层协议
packet=IP(dst='192.168.0.122')/ICMP()

'''
srp()       
'''