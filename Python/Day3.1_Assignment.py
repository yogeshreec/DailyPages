#1) define 3 functions "add()","modify()" and "delete()" with just a print message.
#now accept input from user as a number. if the number entered is 1, call "add()"
#if it is 2, call "modify()" if it is 3, call "delete()" [ hint: use "match... case" ]

"""def add():
    print("add")

def modify():
    print("Modify")

def delete():
    print("delete")

num=int(input("enter number from 1,2,3"))

match num:
    case 1:
        add()
    case 2:
        modify()
    case 3:
        delete()
    case _:
        print("choose correct choice\t")"""
from openpyxl.styles.builtins import total

#2) define a function which accepts a number and return its square.
"""def sqr():
    num=int(input("enter number"))
    sr=num*num;
    print("square of num is:",sr)
sqr()"""

#3) define a function which accepts character,int,string and display them.
#type 2
"""def disp(*vars):
    if (vars.__len__() == 0):
        print("no argument passed")
    else:
        for k in vars:
            print(k)

def myfun():
    disp('C')
    disp(90)
    disp("Yogi")
myfun()"""

#TYPE 1
"""def myfun1():
    num1=100
    print(num1)
    str="hello"
    print(str)
    ch='A'
    print(ch)
myfun1()"""

#4) define "myfun1()" with a print statement. now define "myfun2()" which should invoke "myfun1()" function.
#invoke myfun2()
"""def myfun1():
    print("inside myfun 1")

def myfun2():
    print("inside myfun 2")
    myfun1()
myfun2()"""

#5) define a function to accept a number. This function should return 1 if a number passed is more than 0
#return -1 if a number passed is less than 0 , else it should return 0.
"""
def fun():
    num=int(input("Enter number"))
    if(num>0):
        return 1
    elif(num<0):
        return -1
    else:
        return 0
x=fun()
print(x)"""


#6) define a function which accepts a character and return toggle of it.

"""def fun():
    ch=str(input("enter character"))
    i=ord(ch)
    if i in range(ord('A'),ord('Z')):
        print(ch,"Upper Case")
    elif i in range(ord('a'),ord('z')):
        print(ch,"Lower case")
    else:
        print(ch,"is not Alphabet")

fun()"""

#7) define a function which accepts a string , toggle and return it.
#	[ hint :  use "swapcase()" function of string ]

"""def fun():
    sen=str(input("enter a string"))
    print(sen.swapcase())

fun()"""

#8) write a function to accept minimum 3 characters and maximum 5 characters.
 #	[ use default arguments method ]

"""def fun(var1,var2,var3=30,var4=40,var5=50):
    return var1,var2,var3,var4,var5
print(fun(100,30))
"""

#9) define a function in such a way that it can accept n number of values and print their sum.
# [ variable number of arguments]
""""def fun(*varg):
    total=sum(varg)
    print(total)
fun(20,30)"""


#***************** Function Demo continue ******************************
#1) create 3 functions "show1()","show2()" and "show3()"
# now define a function "caller" in such a way that it can accept any function as an argument
# and invoke the same.invoke caller function by passing show1,show2 and show3

"""def show1():
    print("in show 1")

def show2():
    print("in show 2")

def show3():
    print("in show 3")

def caller(fun):
    fun()

caller(show1)
caller(show2)
caller(show3)"""


#2) define nested function and show how will you invoke it.
"""def outer():
    print("inside outer")
    def inner():
        print("inside inner")
    return inner()

outer()"""

"""def outer():
    num=100
    print("inside outer")
    def inner():
        print("number: ",num)
    num=400
    return inner()
outer()"""


