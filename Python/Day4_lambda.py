#1) write a function to accept a number and return its square using
	#a) normal function
	#b) lambda

"""num=int(input("enter num"))
sr=num*num
print("sqyare of",num,"is: ",sr)"""

"""num=int(input("enter num"))
square= lambda x:x**2
print(square(num))"""

# num=int(input("enter a num"))
"""def sq():
    return num*num
print(f"square of {num} is {sq()}")"""
# square= lambda x:x**2
# print(f"square of {num} is :",square(num))


#2) write a function to display "Hello World" using
#	a) normal function
#	b) lambda
"""def disp():
    print("hello world")
disp()"""


"""def disp(fun):
    fun()

disp(lambda:print("Hello world"))"""
show= lambda : [print("hello yogii")]
show()


#3) write a function with 2 arguments , second argument should be "default argument" and display them. Using
#	a) normal function
#	b) lambda

"""def fun(x,y=10):
    print(x,y)
fun(20)"""
"""def fun(x,y=10):
    print(x,y)
fun(20)"""

# disp=lambda x,y=10:print(x,y)
# disp(20)



#4) write a function with variable no. of arguments and display them. Using
#	a) normal function
#	b) lambda
"""sum1=0
def myfun(*varg):
    print(varg)
    for i in varg:
        sum1=0
        sum1=sum1+i
    print(sum1)

myfun(10,20,30)"""

"""res=lambda *varg:[print(i) for i in varg]
res(10,20,30)"""
def fun(fun,**val):
    fun(**val)
res=lambda **args:[print(i,j) for i,j in args.items()]
fun(res,name="Yogi",age=23)