
####################################
'''
##http://scikit-learn.org/stable/auto_examples/tree/plot_tree_regression.html
#### @note: 2016-06-28, open ('openfile.txt', 'w'), alt+c for class
#### @note: input,递归函数,a[i],a[l-i-1] = a[l-i-1],a[i] #注意此句, int((1+1)/2)
#### @note: print ('%d %d'%(1.2,3.4)), print (' '*4+'*'*1+' '*2+'*'*2), print ("{:%Y/%m/%d}".format(d))
####re.findall(r"\w+ly", text)
'''
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
#### @note: print ("{:%Y/%m/%d}".format(d))
####################################
import datetime
d = datetime.datetime(2010, 7, 4, 12, 15, 58)
'{:%Y-%m-%d %H:%M:%S}'.format(d)
## @ans: '2010-07-04 12:15:58'

##d = datetime.date(2016,05,16)
d = datetime.date(2016,5,16)
##print ("%Y:%M:%D".format(d))
print ("{:%Y:%M:%D}".format(d))
##2016:00:05/16/16
print ("{:%Y:%m:%d}".format(d))
##2015:05:16
print ("{:%Y/%m/%d}".format(d))
##2016/05/16
####################################
#### @re — Regular expression operations
## re.search, match, findall, finditer
##\w [a-zA-Z0-9_] 
####################################
####10.5. String Pattern Matching
import re
re.sub(r'(\b[a-z]+) \1', r'\1', 'cat in the the hat')
##'cat in the hat'
'tea for too'.replace('too', 'two')
##'tea for two'
re.findall(r'\bf[a-z]*', 'which foot or hand fell fastest')
##['foot', 'fell', 'fastest']


import re
m = re.search('(?<=-)\w+', 'spam-egg')
m.group(0)
# @ans:'egg'
m = re.search('(?<=-)\w+','abc-def')
m.group(0)

##m = re.search('(?>=-)xiaoanh','abc-xiaoanh-test')
m = re.search('(>=-)xiaoanh','abc-xiaoanh-test')
re.match("c", "abcdef")  # No match
re.search("^c", "abcdef") # No match
re.search("^a", "abcdef")  # Match

####6.2.5.3. search() vs. match()
##re.match() checks for a match only at the beginning of the string, while re.search() checks for a match anywhere in the string
re.match("c", "abcdef")  # No match
re.search("c", "abcdef") # Match

####6.2.5.6. Finding all Adverbs
text = "He was carefully disguised but captured quickly by police."
re.findall(r"\w+ly", text)
re.search("\w+ly", text)
re.findall("\w+ly", text)

text = "He was carefully disguised but captured quickly by police."
for m in re.finditer(r"\w+ly", text):
	print('%02d-%02d: %s' % (m.start(), m.end(), m.group(0)))

##07-16: carefully
##40-47: quickly
	
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
####Command Line Arguments
####################################
import sys
print (sys.argv)
##['D:\\SRC_CPP\\StudyBasic.py']

####################################
####ZH奶酪：编程语言入门经典100例【Python版】
#### @note: input,递归函数,a[i],a[l-i-1] = a[l-i-1],a[i] #注意此句, int((1+1)/2)
####print ('%d %d'%(1.2,3.4)), print (' '*4+'*'*1+' '*2+'*'*2)
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

'''
【程序23】 
题目：打印出如下图案（菱形）

   *
  ***
 *****
*******
 *****
  ***
   *
'''
for i in range(1,8,2):
##    print (' '*(4-(i+1)/2)+'*'*i)
	print (' '*(4-int((i+1)/2))+'*'*i)
for i in range(5,0,-2):
	print (' '*(4-int((i+1)/2))+'*'*i)

##TypeError: can't multiply sequence by non-int of type 'float'
print ((1+1)/2)
##1.0
print (int((1+1)/2))
##1
print (''*4+'*'*1+''*2+'*'*2)
##***
print (' '*4+'*'*1+' '*2+'*'*2)
##    *  **

'''
【程序40】
题目：将一个数组逆序输出。
'''
a = [1,2,3,4,5,6,7,8,9]
l = len(a)
print (a)
##for i in range(l/2):
for i in range(int(l/2)):
	a[i],a[l-i-1] = a[l-i-1],a[i] #注意此句
print (a)
a = [1,2,3,4,5,6,7,8,9]
for i in range(int(l/2)):
	a[i] = a[l-i-1]
	a[l-i-1] = a[i]
print (a)
##[9, 8, 7, 6, 5, 6, 7, 8, 9]
##TypeError: 'float' object cannot be interpreted as an integer

'''
【程序27】 
题目：利用递归函数调用方式，将所输入的5个字符，以相反顺序打印出来。
'''
def output(s,l):
	if l==0:
		return
	print (s[l-1])
	output(s,l-1)

##s = raw_input('Input a string:')
##NameError: name 'raw_input' is not defined
s = input('Input a string:')
l = len(s)
output(s,l)

'''
演示lambda的使用。
'''
MAXIMUM = lambda x,y :  (x > y) * x + (x < y) * y
MINIMUM = lambda x,y :  (x > y) * y + (x < y) * x

if __name__ == '__main__':
	a = 10
	b = 20
	print ('The largar one is %d' % MAXIMUM(a,b))
	print ('The lower one is %d' % MINIMUM(a,b))
##The largar one is 20
##The lower one is 10    
####################################
####    Python经典应用 小程序
####out=open('names.txt','w')
####################################    
##http://blog.sina.com.cn/s/blog_498eab7d0100df6o.html
##情景一：
##在文件夹里有六十多个RM格式的视频文件，我现在需要把它们的文件名都提取出来，并去掉文件的扩展名，以便放到需要的网页里。
##这里的循环用in关键字将 filenames中的元素依次赋给局部变量name
##open()是内建函数并非os模块里的函数   
import os
filenames=os.listdir(os.getcwd())
##print (filenames)
##SyntaxError: multiple statements found while compiling a single statement
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


####################################
#### @app, 2016-06-24
####################################
class MulFuc:
	def mul(x,y):
		return x*y
print (MulFuc.mul(9,986) )

####################################
####    @app, 2016-06-28
####################################
import os
filenames = os.listdir(os.getcwd())
##print (filenames)
for name in filenames:
	print (name)
##openfile = open (openfile.txt, 'w')
openfile = open ('openfile.txt', 'w')
##PermissionError: [Errno 13] Permission denied: 'openfile.txt'
for name in filenames:
	openfile.write(name+'\n')
openfile.close()


####################################
####    @url, 2016-06-29, 
####################################
import urllib
##params = urllib.urlencode({'spam': 1, 'eggs': 2, 'bacon': 0})
##AttributeError: module 'urllib' has no attribute 'urlencode'
##f = urllib.urlopen("http://www.musi-cal.com/cgi-bin/query?%s" % params)
##AttributeError: module 'urllib' has no attribute 'urlopen'
##print (f.read())


####################################
####    10.2. File Wildcards, 2016-06-29

####################################

import glob
glob.glob('*.py')
##['primes.py', 'random.py', 'quote.py']

##glob.glob(*.py)
##SyntaxError: invalid syntax

####################################
####    ##10.7. Internet Access, 2016-06-29
####################################

import smtplib
##server = smtplib.SMTP('localhost')
##server.sendmail('soothsayer@example.org', 'jcaesar@example.org',"""To: jcaesar@example.org From: soothsayer@example.org Beware the Ides of March.""")
##server.quit()

from urllib.request import urlopen
##with urlopen('http://tycho.usno.navy.mil/cgi-bin/timer.pl') as response:
##    for line in response:
##        line = line.decode('utf-8')  # Decoding the binary data to text.
##        if 'EST' in line or 'EDT' in line:  # look for Eastern Time
##            print(line)


####################################
####    with, 2016-06-29
####################################
file = open("foo.txt")
data = file.read()
file.close()


file = open("foo.txt")
try:
    data = file.read()
finally:
    file.close()

with open("foo.txt") as file:
    data = file.read()
print (data)
##1,2,3,4,5,6


####################################
####    Python修饰器的函数式编程, 2016-06-29, Decorator, @decorator来修饰某个函数func时
##http://www.open-open.com/lib/view/open1395285030019.html
####################################
def hello(fn):
    def wrapper():
        print ("hello, %s" % fn.__name__)
        fn()
        print ("goodby, %s" % fn.__name__)
    return wrapper

@hello
def foo():
    print ("i am foo")

foo()
hello, foo
##i am foo
##goodby, foo
##被解释成了：
##foo = hello(foo) 
##这不就是把一个函数当参数传到另一个函数中

def fuck(fn):
    print ("fuck %s!" % fn.__name__[::-1].upper())

@fuck
def wfg():
    pass

##fuck GFW


##@decorator_one
##@decorator_two
def func():
    pass

##相当于：
##func = decorator_one(decorator_two(func))

####################################
'''
@note: help, dir and __doc__, print mylist[::2], try-except, 2016-06-29
##用python写一个简单的推荐系统
http://www.open-open.com/lib/view/open1463618570731.html
这里给出计算相似度的两种方法：
    1. 欧式距离法
    2. 余弦相似度
    $$costheta=frac{Acdot B}{||A||||B||}$$
'''
####################################

####################################
'''
Python语言十分钟快速入门
##http://www.open-open.com/lib/view/open1463032641928.html
缩进表示一个代码块的开始，逆缩进则表示一个代码块的结束
'''
####################################
help(5)
##Help on int object:
##(etc etc)
dir(5)
##['__abs__', '__add__', ...]

abs.__doc__
##'abs(number) -> number


####################################
'''
string, print mylist[::2], try-except
'''
####################################
mylist = ["List item 1", 2, 3.14]
print (mylist[:])
##['List item 1', 2, 3.1400000000000001]
print (mylist[0:2])
##['List item 1', 2]
print (mylist[-3:-1])
##['List item 1', 2]
print (mylist[1:])
##[2, 3.14]
##负数索引则表示从后向前数的位置（-1是最后一个项目
print (mylist[::2])
##['List item 1', 3.14]
##N item increments, rather than 1

sample = [1, ["another", "list"], ("a", "tuple")]
mylist = ["List item 1", 2, 3.14]
mylist[0] = "List item 1 again" # We're changing the item.
mylist[-1] = 3.21 # Here, we refer to the last item.
mydict = {"Key 1": "Value 1", 2: 3, "pi": 3.14}
mydict["pi"] = 3.15 # This is how you change dictionary values.
mytuple = (1, 2, 3)
myfunction = len
print (myfunction(mylist))
print (mylist,mydict )
##['List item 1 again', 2, 3.21] {2: 3, 'Key 1': 'Value 1', 'pi': 3.15}
##数组中第一个元素索引值(下标)为0，使用负数索引值能够从后向前访问数组元素，-1表示最后一个元素

##如果想通过变量来填充字符串，那么可以使用取模运算符(%)和一个元组

print ("Name: %s\
Number: %s\
String: %s" % ("Poromenos", 3, 3 * "-"))
##Name: Poromenos
##Number: 3
##String: ---

strString = """This is
a multiline
string."""

# WARNING: Watch out for the trailing s in "%(key)s".
print ("This %(verb)s a %(noun)s." % {"noun": "test", "verb": "is"})
##This is a test



##Python支持有限的多继承形式。私有变量和方法可以通过添加至少两个前导下划线和最多尾随一个下划线的形式进行声明

class MyClass(object):
    common = 10
    def __init__(self):
        self.myvariable = 3
    def myfunction(self, arg1, arg2):
        return self.myvariable

    # This is the class instantiation
classinstance = MyClass()
print (classinstance.myfunction(2, 2))
##3
# This variable is shared by all classes.
classinstance2 = MyClass()
print (classinstance.common)
##10
print (classinstance2.common)
##10

####################################
'''
异常,2016-06-29
Python中的异常由 try-except [exceptionname] 块处理，例如：
'''
####################################

def some_function():
    try:
        # Division by zero raises an exception
        10 / 0
    except ZeroDivisionError:
        print ("Oops, invalid.")
    else:
        # Exception didn't occur, we're good.
        pass
    finally:
        # This is executed after the code block is run
        # and all exceptions have been handled, even
        # if a new exception is raised while handling.
        print ("We're done with that.")
some_function()
##Oops, invalid.
##We're done with that.




####################################
##列表推导式, 2016-06-29

####################################
lst1 = [1, 2, 3]
lst2 = [3, 4, 5]
print ([x * y for x in lst1 for y in lst2])
##[3, 4, 5, 6, 8, 10, 9, 12, 15]
print ([x for x in lst1 if 4 > x > 1])
##[2, 3]
# Check if an item has a specific property.
# "any" returns true if any item in the list is true.
any([i % 3 for i in [3, 3, 4, 4, 3]])
##True
# This is because 4 % 3 = 1, and 1 is true, so any()
# returns True.

# Check how many items have this property.
sum(1 for i in [3, 3, 4, 4, 3] if i == 4)
##2
del lst1[0]
print (lst1)
##[2, 3]
del lst1

####################################
####如何在Python中使用方法链
##方法链（method chaining）是面向对象的编程语言中的一种常见语法，
##可以让开发者在只引用对象一次的情况下，对同一个对象进行多次方法调用
####################################
class Person:
    def name(self, value):
        self.name = value
        return self

    def age(self, value):
        self.age = value
        return self

    def introduce(self):
        print ("Hello, my name is", self.name, "and I am", self.age, "years old.")

person = Person()
person.name("EarlGrey").age(21).introduce()
# => Hello, my name is EarlGrey and I am 21 years old.


####################################
#### @re, 2016-06-30, compile and split, [], * and +, .+(\w+)?@, (.+)? | (.+)
## @key: ? | *, ab* means a, ab, abb; ab.* means abdc; ab+ means ab , abb; ab? means a or ab; a.*b, a.*?b (greedy and minimum)
#### @key: 分组, (); 后向引用, \1; 分枝条件, 具体方法是用|把不同的规则分隔开
## RE.I RE.M, ( ?) | \.| [.\w]+ | pattern='\w+@[\w.]+'
##r'\bwww\..*\.(com|net|edu)' | 'w{3}[.\w]+.com', pattern='w{3}[.\w]+.com'
## will match wwwjava2s.com, should be 'w{3}\.\w+.com'
##pattern='([A-Z]\.)+ ?[A-Z][a-z]+' for space ( ?)

'''
r: raw, 在字符串前加个 "r" 反斜杠就不会被任何特殊方式处理
w | word, b | boundary, s | string
\w	匹配字母数字
\W	匹配非字母数字
\b	匹配一个单词边界，也就是指单词和空格间的位置。例如， 'er\b' 可以匹配"never" 中的 'er'，但不能匹配 "verb" 中的 'er'。
\B	匹配非单词边界。'er\B' 能匹配 "verb" 中的 'er'，但不能匹配 "never" 中的 'er'。
\s	匹配任何空白字符，包括空格、制表符、换页符等等。等价于 [ \f\n\r\t\v]。
\S 	匹配任何非空白字符。等价于 [^ \f\n\r\t\v]
(?#...)	注释，忽略括号内的内容 	
(?= … )	表达式’…’之前的字符串 	在字符串’ pythonretest ’中 (?=test) 会匹配’ pythonre ’
(?!...)	后面不跟表达式’…’的字符串 	如果’ pythonre ’后面不是字符串’ test ’，那么 (?!test) 会匹配’ pythonre ’
(?<= … )	跟在表达式’…’后面的字符串符合括号之后的正则表达式 	正则表达式’ (?<=abc)def ’会在’ abcdef ’中匹配’ def ’
(?:) 'industr(?:y|ies) 就是一个比 'industry|industries' 更简略的表达式。那么(?:13\d|15\d)也就是要在这里面选择匹配13+0~9的数字一个或15+0~9的数字
\*{3}就是要匹配“***”
'''
####################################

##Chapter15 正则表达式在脚本语言里是最重要的一部分
##r'\bfoo\b' matches 'foo', 'foo.', '(foo)', 'bar foo baz' but not 'foobar' or 'foo3'.
##r'py\B' matches 'python', 'py3', 'py2', but not 'py', 'py.', or 'py!'. 
##\w this is equivalent to [a-zA-Z0-9_].
##\W this is equivalent to [^a-zA-Z0-9_].
##ab? will match either ‘a’ or ‘ab’.
##通过用圆括号来（字符‘(’和‘)’）包围正则表达式的特定部分，我们可以对内容进行分组然后对这些子组做单独处理。

re.split('\W+', 'Words, words, words.')
##['Words', 'words', 'words', '']
re.split('(\W+)', 'Words, words, words.')
##['Words', ', ', 'words', ', ', 'words', '.', '']
re.split('\W+', 'Words, words, words.', 1)
##['Words', 'words, words.']
re.split('[a-f]+', '0a3B9', flags=re.IGNORECASE)
##['0', '3', '9']
 
pattern = re.compile("d")
pattern.search("dog")     # Match at index 0


pattern = re.compile("o[gh]")
pattern.fullmatch("dog")      # No match as "o" is not at the start of "dog".
pattern.fullmatch("ogre")     # No match as not the full string matches.
pattern.fullmatch("doggie", 1, 3)   # Matches within given limits.

import re
contactInfo = 'Doe, John: 555-1212'
re.search(r'\w+, \w+: \S+', contactInfo)
match = re.search(r'(\w+), (\w+): (\S+)', contactInfo)
print (match.group(1))
print (match.group(2))
print (match.group(3))
print (match.group(0))
##Doe
##John
##555-1212
##Doe, John: 555-1212


####################################
'''
@re, Python核心编程第15章正则表达式练习答案 
http://blog.csdn.net/iamzhaiwei/article/details/8051379
http://www.cnblogs.com/sysu-blackbear/p/3604021.html
'''
####################################
#15-1 识别下列字符串：“bat,” “bit,” “but,” “hat,” “hit,” 或 “hut”
pattern =  r'[bh][aiu]t,?'

#15-2  匹配用一个空格分隔的任意一对单词，比如，名和姓
pattern = r'\b\w+ \w+\b'

#15-3  匹配用一个逗号和一个空格分开的一个单词和一个字母。例如，英文人名中的姓和名的首字母
pattern = r'\b\w+, \w'
#15-6  匹配简单的以“www.”开头，以“.com”作结尾的 Web 域名，例如：www.yahoo.com. 
#附加题：使你写的正则表达式还支持其他顶级域名：.edu, .net 等，比如：www.ucsc.edu
pattern = r'\bwww\..*\.(com|net|edu)'

##15.6.匹配以“www."开头，以”.com"作结尾的Web域名。
pattern='w{3}[.\w]+.com'
## will match wwwjava2s.com
##15.3.匹配用一个逗号和一个空格分开的一个单词和一个字母。
import re
pattern='([A-Z]\.)+ ?[A-Z][a-z]+'
s1='J.R. Smith'
s2='J.R.Smith'
s3='T. Ford'
print (re.match(pattern,s1).group())
##'J.R. Smith'
print (re.match(pattern,s1).group(0))
##J.R. Smith
print (re.match(pattern,s1).group(1))
##R.
##print (re.match(pattern,s1).group(2))
##IndexError: no such group
print (re.match(pattern,s2).group())
##'J.R.Smith'
print (re.match(pattern,s3).group())
##'T. Ford''

##15.11.匹配所有合法的电子邮件地址
pattern='\w+@[\w.]+'
## should be pattern='\w+@[\w]+\.'


##15.25.只从电子邮件地址中提取出登录名和域名。（二者分别提取）
##Fanxiang.Bin@alcatel-sbell.com.cn
##Qingjiang.a.Chang@alcatel-sbell.com.cn
##BIN Fanxiang <Fanxiang.Bin@alcatel-sbell.com.cn>
import re

##f = open('/home/dzhwen/456.txt','r')
f = open('foo.txt','r')


##pattern = '.+::(\w+)?@(.+)?::.+'
##pattern = '.+(\w+)?@(.+)?.+'
##pattern = '.+(\w+)@(.+)?.+'
##pattern = '.+(\w+)@(.+?)\.'
##pattern = '(.+?)@(.+?)\.' #DONE
##pattern = '(\w+\.)@.+(\w+\.)+\w+' ## 2016-06-30
pattern = '\b(\w+\.)+\w+@.+\w+'
##DONE-WELL, 2016-07-01, Fanxiang.Bin@alcatel-sbell.com.cn
##from BIN Fanxiang <Fanxiang.Bin@alcatel-sbell.com.cn>
for eachLine in f:
    m = re.match(pattern,eachLine)
    print (m.group(1),m.group(2))
##AttributeError: 'NoneType' object has no attribute 'group'
##Fanxiang.Bin alcatel-sbell
##Qingjiang.a.Chang alcatel-sbell
##BIN Fanxiang <Fanxiang.Bin alcatel-sbell
    
##15.26.将每行中的电子邮件地址替换为你自己的电子邮件地址
import re

f = open('foo.txt','r')

##pattern = '.+::(.+)?::.+'
##pattern = '.+(.+)?.+'
##pattern = '.+(.+)?.+'
##pattern = '(\w+\.)+@?.+'
##pattern = '.+<?(\w+\.)+@?.+'
# @DONE, Fanxiang.Bin@alcatel-sbell.com.cn>
##pattern = '(\w+\.)+@?\w+'
# @DONE, Fanxiang.Bin
##pattern = '(\w+\.)+@?(\w+\.)+\w+'
##sbell.com.cn
pattern = '(\w+\.)+@?.+(\w+\.)+\w+'
## replace to search, @DONE, Fanxiang.Bin@alcatel-sbell.com.cn
for eachLine in f:
##    m = re.match(pattern,eachLine)
    m = re.search(pattern,eachLine)
    print (m.group())
##    address = raw_input('请输入你自己的电子邮件:')
##    address = input('请输入你自己的电子邮件: ')
    address = "xxx@gmail.com"
##    print (re.subn(m.group(1),address,eachLine))
##AttributeError: 'NoneType' object has no attribute 'group'

with open('foo.txt','r') as file:
    print (file)

'''
http://www.jb51.net/tools/zhengze.html
####贪婪与懒惰, 2016-06-30, a.*b, a.*?b, non-greedy or minimal fashion
####分组, ()
####后向引用, \1
你可以用小括号来指定子表达式(也叫做分组)，然后你就可以指定这个子表达式的重复次数了
(\d{1,3}\.){3}\d{1,3}是一个简单的IP地址匹配表达式
\1代表分组1匹配的文本
\b(\w+)\b\s+\1\b可以用来匹配重复的单词，像go go, 或者kitty kitty。
    a.*b，它将会匹配最长的以a开始，以b结束的字符串。如果用它来搜索aabab的话，它会匹配整个字符串aabab。这被称为贪婪匹配。
    a.*?b匹配最短的，以a开始，以b结束的字符串。如果把它应用于aabab的话，它会匹配aab（第一到第三个字符）和ab（第四到第五个字符）。
*? 	重复任意次，但尽可能少重复
+? 	重复1次或更多次，但尽可能少重复
?? 	重复0次或1次，但尽可能少重复
{n,m}? 	重复n到m次，但尽可能少重复
{n,}? 	重复n次以上，但尽可能少重复

'''
##RE <.*> is matched against '<H1>title</H1>', Using .*? in the previous expression will match only '<H1>'. 


####################################
####@urllib
####################################

import re
import urllib
url="http://www.jb51.net"
##s=urllib.urlopen(url).read()
##ss=s.replace(" ","")
##urls=re.findall(r"<a.*?href=.*?<\/a>",ss,re.I)
##for i in urls:
##    print (i)
##else:
##    print ('this is over')
##AttributeError: module 'urllib' has no attribute 'urlopen'

####################################
####@re, @app
####################################

import re
url="http://www.jb51.net"

print (re.search('\.(\w+)\.', url).group(0))
print (re.search('\.(\w+)\.', url).group(1))
##.jb51.
##jb51
