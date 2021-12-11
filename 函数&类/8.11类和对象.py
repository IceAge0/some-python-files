#类

class Person:
    def __init__ (self,name,sex,birth):
        self.name = name
        self.sex = sex
        self.birth = birth

    def say(self,word):
        print(f'{self.name} said："{word}"')


a_man = Person("a man","man","2020")
a_woman = Person("a woman","man","2020")
a_man.say('hello')
a_woman.say('hello')