
####################################
#### @note: tablify region: alt+5, 2016-06-22
####################################
# web scraping, requests and bs4, Beautiful Soup 4.3.2 (简称BS4)

# python eol while scanning string literal
# 在字符串首尾忘记加引号
# @err: D:\SRC_CPP\
# -> D:/SRC_CPP/ or 'D:'+os.sep+'SRC_CPP'

# @err: os.path.join
# -> print

# python join 和 split方法的使用,join用来连接字符串，split恰好相反，拆分字符串的

##len() 和 range(),函数 len() 返回列表的长度，即元素的个数。 range返回一个序列的数

# http://www.tutorialspoint.com/python/python_functions.htm
# C:\Program Files\Python35\python.exe
#!/usr/bin/python

####################################
#### Function definition is here
####################################
def printme( str ):
	   "This prints a passed string into this function"
	   print (str)
	   # print str
	   return
printme("I'm first call to user defined function!")

#### update to class ##
class printall:
	def printme( str ):
	   "This prints a passed string into this function"
	   print (str)
	   # print str
	   return
	   # return;
	def printagain( str ):
		"This prints a passed string into this function"
		print (str)
		return

# Now you can call printme function
printall.printme('class printall: '+ "I'm first call to user defined function!")
# printme("I'm first call to user defined function!")

printall.printagain("Again second call to the same function")
# printall.printme("Again second call to the same function")
# printme("Again second call to the same function")

####################################
#### join and split ##
####################################
li = ['my','name','is','bob'] 
print(' '.join(li) )
##'my name is bob' 
 
print('_'.join(li) )
##'my_name_is_bob' 
 
s = ['my','name','is','bob'] 
print(' '.join(s) )
##'my name is bob' 
 
print('..'.join(s) )
##'my..name..is..bob' 
 
##2.split用法示例 
b = 'my..name..is..bob' 
print(b.split() )
##['my..name..is..bob']


print(b.split("..",0) )
##['my..name..is..bob'] 
 
print (b.split("..",1) )
##['my', 'name..is..bob'] 
 
print( b.split("..",2) )
##['my', 'name', 'is..bob']

####################################
#### for ##
####################################
for letter in 'Python':     # 第一个实例
   print ('当前字母 :', letter)


fruits = ['banana', 'apple',  'mango']
for fruit in fruits:        # 第二个实例
   print ('当前字母 :', fruit)

print ("Good bye!")

##for i randn() in range(7)
for i in range(7):
##    print (randn())
    print (i)
##NameError: name 'randn' is not defined    

## 通过序列索引迭代
fruits = ['banana', 'apple',  'mango']
for index in range(len(fruits)):
   print ('当前水果 :', fruits[index])


####################################
####append
####################################
aList = [123, 'xyz', 'zara', 'abc'];
aList.append( 2009 );
print ("Updated List : ", aList)

##print([].extend("string"))
matches = []
##print(matches.extend("string"))  # @err:none
matches.extend("string")
print(matches)


x = [1, 2, 3]
x.append([4, 5])
print (x)

x.extend([4, 5])
print (x)

####################################
#### string
####################################
hello = 'hello'   # String literals can use single quotes
world = "world"   # or double quotes; it does not matter.
print (hello)       # Prints "hello"
print (len(hello))  # String length; prints "5"
hw = hello + ' ' + world  # String concatenation
print (hw)  # prints "hello world"
hw12 = '%s %s %d' % (hello, world, 12)  # sprintf style string formatting
print (hw12)  # prints "hello world 12"


####################################
####dictionary
####################################
m = {'Jan': 1, 'Feb': 2, 'Mar': 3, 'Apr': 4, 'May': 5, 'Jun': 6, 'Jul': 7, 'Aug': 8, 'Sep': 9, 'Oct': 10, 'Nov': 11, 'Dec': 12}
for key in m:  
		print(key, m[key])


####################################
#### math
####################################
from math import exp
exp(1e-5) - 1
from math import sin
sin(90)


####################################
####date and format
####################################
import datetime
d = datetime.datetime(2010, 7, 4, 12, 15, 58)
'{:%Y-%m-%d %H:%M:%S}'.format(d)
## @ans: '2010-07-04 12:15:58'


####################################
####re — Regular expression operations
####################################

####################################
####map/reduce
####################################
def f(x):
    return x * x
map(f, [1, 2, 3, 4, 5, 6, 7, 8, 9])
##[1, 4, 9, 16, 25, 36, 49, 64, 81]

L = []
for n in [1, 2, 3, 4, 5, 6, 7, 8, 9]:
    L.append(f(n))
print (L)

map(str, [1, 2, 3, 4, 5, 6, 7, 8, 9])
##['1', '2', '3', '4', '5', '6', '7', '8', '9']

##reduce(f, [x1, x2, x3, x4]) = f(f(f(x1, x2), x3), x4)

def add(x, y):
    return x + y
##reduce(add, [1, 3, 5, 7, 9])
##NameError: name 'reduce' is not defined


####################################
####Define abstract class
####################################
##http://www.java2s.com/Code/Python/Class/DefineabstractclassAnimal.htm
class Animal:
    def reply(self):   
       self.speak()        
    def speak(self):   
       print ('spam')        

class Mammal(Animal):
    def speak(self):   
      print ('speak?')

class Cat(Mammal):
    def speak(self):   
       print ('Speak from Cat')

if __name__ == '__main__':
    spot = Cat()
    spot.reply()
##@ans:Speak from Cat
    spot.speak()        
##@ans:Speak from Cat

####################################
#### @app, 2016-06-24
####################################
class MulFuc:
    def mul(x,y):
        return x*y
print (MulFuc.mul(9,986) )

####################################
####Command Line Arguments
####################################
import sys
print (sys.argv)
##['D:\\SRC_CPP\\StudyBasic.py']

####################################
####ZH奶酪：编程语言入门经典100例【Python版】
####################################
##http://www.cnblogs.com/CheeseZH/archive/2012/11/05/2755107.html
##【程序11】
##题目：古典问题：有一对兔子，从出生后第3个月起每个月都生一对兔子，小兔子长到第三个月
##　　　后每个月又生一对兔子，假如兔子都不死，问每个月的兔子总数为多少？
a = 1
b = 1
for i in range(1,21,2):
    print ('%d %d'%(a,b))
    a += b
    b += a

####################################
####    Python经典应用 小程序
####################################    
##http://blog.sina.com.cn/s/blog_498eab7d0100df6o.html
##情景一：
##在文件夹里有六十多个RM格式的视频文件，我现在需要把它们的文件名都提取出来，并去掉文件的扩展名，以便放到需要的网页里。
##这里的循环用in关键字将 filenames中的元素依次赋给局部变量name
##open()是内建函数并非os模块里的函数   
import os
filenames=os.listdir(os.getcwd())
for name in filenames:
     filenames[filenames.index(name)]=name[:-3]
out=open('names.txt','w')
for name in filenames:
     out.write(name+'\n')
out.close()

## @key: not test, otherwise file name missing, 2016-06-24
##场景二：
##我有一些图片文件，要将其文件名分别改为：00.bmp 01.bmp 02.bmp ... 23.bmp 24.bmp...
#导入os模块
import os,sys

#取出当前工作目录里的文件名列表。
filenames=os.listdir(os.getcwd())

#在1.bmp到9.bmp的文件名前加0
#len()返回filenames列表的长度，xrange()返回一个从0开始到filenames列表的长度n的数列用于循环。
##for num in range(len(filenames)):

     #用if判断语句排除程序文件本身
     #使用os模块中的rename(oldName, newName)函数来更改文件名。
     #0到9的前十个文件名钱加0，即00.bmp 01.bmp...
     #str()函数返回数值类型变量的字符串
     #第二个if语句中依然要注意行首的缩进
##     if filenames[num]!='changeall.py':
##         if num<10:
##             os.rename(filenames[num],'0'+str(num)+'.bmp')
##         else:
##             os.rename(filenames[num],str(num)+'.bmp')
