from tkinter import *

class Application(Frame):

	def __init__(self,master=None):
		super().__init(master)
		self.master=master
		self.pack()
		self.createWidget()


	