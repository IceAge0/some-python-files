def add(*args):
	adds=0
	for arg in args:
		adds+=arg
	return adds

print(add(1,2,3,3,3))
print(add(1,2))
print(add())