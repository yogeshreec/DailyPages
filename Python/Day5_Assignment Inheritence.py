#****************Additional Assignment******************

#Q1. Create a class named Car
#•	The class should have the following attributes: brand, model, and year.
#•	Include a method display_details() that prints all the attribute values in a readable format.
#•	Create an object of the class and demonstrate the method.

"""class Car():
    def __init__(self,brand,model,year):
        self.brand=brand
        self.model=model
        self.year=year

    def display_details(self):
        print(f"brand:{self.brand}\tmodel:{self.model}\tyear:{self.year}")


c=Car("creta","xy20",2021)
c.display_details()"""
from unicodedata import digit

"""from dataclasses import dataclass
@dataclass()
class Car():
    brand:str
    model:str
    year:int

    def display_details(self):
        print(f"brand:{self.brand}\tmodel:{self.model}\tyear:{self.year}")


c=Car("creta","vbjk",2021)
c.display_details()"""

# Q2. Extend the Car class
# •	Add a method car_age(current_year) that calculates and returns the age of the car.
# •	Create a car object and show how the method works for the year 2025.

"""class Car():
    def __init__(self,brand,model,year):
        self.brand=brand
        self.model=model
        self.year=year

    def display_details(self):
        print(f"brand:{self.brand}\tmodel:{self.model}\tyear:{self.year}")

    def car_age(self,current_year):
        return current_year-self.year

c=Car("creta","xy20",2021)
c.display_details()
print(c.car_age(2026))"""


"""from dataclasses import dataclass
@dataclass()
class Car():
    brand:str
    model:str
    year:int

    def display_details(self):
        print(f"brand:{self.brand}\tmodel:{self.model}\tyear:{self.year}")

    def car_age(self,current_year):
        return current_year-self.year


c=Car("creta","vbjk",2021)
c.display_details()
print(c.car_age(2025))"""


# Q3. Create a class Student
# •	Attributes: name, roll_number, and marks.
# •	Method is_passed() should return True if marks are greater than or equal to 40, else False.
# •	Create at least two student objects and test the method.

"""class Student:
    def __init__(self,name,roll_number,marks):
        self.name=name
        self.roll_number=roll_number
        self.marks=marks

    def is_passed(self):
        if(self.marks>=40):
            print(f"name:{self.name}\troll_number:{self.roll_number}\tmarks:{self.marks}")
            return True
        else:
            print(f"name:{self.name}\troll_number:{self.roll_number}\tmarks:{self.marks}")
            return False

s1=Student("yogi",1,85)
print(f"{s1.is_passed()}")
s2=Student("prachi",2,32)

print(f"{s2.name} passed: {s2.is_passed()}")"""


# Q4. Create a class Rectangle
# •	Attributes: length and breadth
# •	Methods:
# o	area() – returns the area of the rectangle.
# o	perimeter() – returns the perimeter.
# •	Create an object and display both area and perimeter.

"""class Rectangle:
    def __init__(self,length,breadth):
        self.length=length
        self.breadth=breadth

    def area(self):
        result=self.length*self.breadth
        print("Area of rectangle : ",result)
        return result

    def perimeter(self):
        res=2*(self.length*self.breadth)
        print("Perimeter of rectangle : ", res)
        return res

r=Rectangle(2,4)
r.area()
r.perimeter()"""

# Q5. Create a base class Person
# •	Attributes: name, age
# •	Method: show_info() that prints the person's name and age.
#
# Create a subclass Employee that inherits from Person
# •	Add a new attribute salary.
# •	Include a method show_salary() to print the salary.
# •	Create an object of Employee and display all details.

"""class Person:
    def __init__(self,name,age):
        self.name=name
        self.age=age

    def show_info(self):
        print(f"name:{self.name}\tage:{self.age}")

class Employee(Person):
    def __init__(self,name,age,salary):
        super().__init__(name,age)
        self.salary=salary

    def show_salary(self):
        print(f"Salary:{self.salary}")

emp=Employee("yogi",22,50000)
emp.show_info()
emp.show_salary()"""

# Q6. Create a base class Shape with a method area()
# •	area() should print: “This is a shape”
# Create two subclasses:
# •	Circle with attribute radius and overridden method area() that calculates the circle’s area.
# •	Square with attribute side and overridden method area() that calculates the square’s area.
# Create objects of both subclasses and call their area() methods.

"""class Shape:
    def area(self):
        print("This is Shape")
        
class Circle(Shape):
    def __init__(self,radius):
        self.radius=radius

    def area(self):
        res=3.14*self.radius
        print("Area of Circle is: ",res)

class Square(Shape):
    def __init__(self,side):
        self.side=side

    def area(self):
        res=self.side*self.side
        print("Area of Square is: ",res)

cir=Circle(2)
cir.area()
sq=Square(4)
sq.area()"""


# Q7. Create a class Animal
# •	Method: make_sound() prints: "Animal makes a sound"
# Create a subclass Dog:
# •	Override make_sound() to print: "Dog barks"
# Demonstrate method overriding by calling make_sound() from both classes.

"""class Animal:
    def make_sound(self):
        print("Animal makes a sound")
class Dog(Animal):
    def make_sound(self):
        super().make_sound()
        print("Dog barks")
d=Dog()
d.make_sound()"""

# Q8. Create a base class Vehicle
# •	Constructor should accept and store one attribute: brand.
# Create a subclass Bike:
# •	Constructor should accept brand and engine_cc.
# •	Use super() to call the base class constructor.
# •	Add a method to display all attributes.
# Create a Bike object and display its details.

"""class Vehicle:
    def __init__(self,brand):
        self.brand=brand
class Bike(Vehicle):
    def __init__(self,brand,engine):
        super().__init__(brand)
        self.engine=engine

    def display(self):
        print(f"brand:{self.brand}\tengine:{self.engine}")

b=Bike("honda",150)
b.display()"""

#*****************Instanceof Assignment1**********************
# create a hierarchy
#
# 				Course
#
# 					void start()
# 					void end()
#
# override "start()" and "end()" in all the child classes.
#
# 		MsCit		Basic		Dbda
# 							void orientation()

# write a function "perform"
# 	perform function should be defined in such a way that it can accept any course and invoke "start()" and "end()" functions.
# 	also make sure if "Dbda" is passed , its "orientation()" method also should be called.

"""class Course:
    def start(self):
        print("Course started")
    def end(self):
        print("Course ended")
class MsCit(Course):
    def start(self):
        print("Mscit Course started")
    def end(self):
        print("Mscit Course ended")
class Basic(Course):
    def start(self):
        print("Basic Course started")
    def end(self):
        print("Basic Course ended")
class Dbda(Course):
    def start(self):
        print("Dbda Course started")
    def end(self):
        print("Dbda Course ended")
    def oriented(self):
        print("Orientation of DBDA") 
def perform(ref):
    ref.start()
    if isinstance(ref,Dbda):
        ref.oriented()

    ref.end()

perform(MsCit())
perform(Basic())
perform(Dbda())"""


#*****************Instance of Assignment2********************
"""class Animal:
    def makeSound(self):
        print("Animal make sound")
class Dog(Animal):
    def makeSound(self):
        print("Dog Bark")
class Cat(Animal):
    def makeSound(self):
        print("Cat Meow")
class Tiger(Animal):
    def makeSound(self):
        print("Tiger Roar")
    def hunting(self):
        print("Tiger hunting")
def perform(ref):
    if isinstance(ref,Tiger):
        ref.hunting()
    ref.makeSound()
perform(Dog())
perform(Cat())
perform(Tiger())"""


#**************************Question**********************
# 1) Create a multi-level inheritance , override default constructors in the child classes ,
# instantiate the child class and show how will u invoke parent class constructor from child class ?
"""class Base:
    def __init__(self):
        print("In Base Constructor")
    def dis(self):
        print("In Base")
class Sub1(Base):
    def __init__(self):
        super().__init__()
        print("In Sub1 Constructor")
    def dis(self):
        super().dis()
        print("In Sub1")
class Sub2(Sub1):
    def __init__(self):
        super().__init__()
        print("In Sub2 Constructor")
    def dis(self):
        super().dis()
        print("In Sub2")

s=Sub2()
s.dis()"""


#2) create a class "Vehicle", define a method "public void start()" in it. From this class derive a class FourWheeler.
# How will u override "start()" method of parent class ?

"""class Vehicle:
    def start(self):
        print("Vehicle started")
class FourWheeler(Vehicle):
    def start(self):
        super().start()
        print("FourWheeler started")
f=FourWheeler()
f.start()"""

# 3) Go for Hierarchical inheritance, create instances of child class and observe constructor invocation.
"""class Base:
    def __init__(self):
        print("In Base Constructor")
    def dis(self):
        print("In Base")
class Sub1(Base):
    def __init__(self):
        super().__init__()
        print("In Sub1 Constructor")
    def dis(self):
        super().dis()
        print("In Sub1")
class Sub2(Base):
    def __init__(self):
        super().__init__()
        print("In Sub2 Constructor")
    def dis(self):
        super().dis()
        print("In Sub2")

s=Sub2()
s.dis()"""

#4) Create a class "Top1" with "disp1()" method.
# From this class Derive "Bottom1", "Bottom2" and "Bottom3" classes ,override the "disp1()".
# create a function "perform" which can take argument as object of any child class.
# Now show how will u achieve dynamic polymorphism.

"""class Top1:
    def disp1(self):
        print("in Top")
class Bottom1(Top1):
    def disp1(self):
        print("in Bottom1")
class Bottom2(Top1):
    def disp1(self):
        print("in Bottom2")
class Bottom3(Top1):
    def disp1(self):
        print("in Bottom3")
def perform(ref):
    ref.disp1()

perform(Top1())
perform(Bottom1())
perform(Bottom2())
perform(Bottom3())"""


#5) create Base class and Sub class with parameterized constructors.
# Show how will you invoke Base class parameterized constructor from Sub class.

"""class Base:
    def __init__(self,name):
        self.name=name
        print("base class constr called by ",name)
class sub(Base):
    def __init__(self,name,age):
        super().__init__(name)
        self.age=age
        print("Sub class constr called with age ",age)
s=sub("Yogeshree",22)"""


#******************String***********************
# 1) Write a Python program to get a string from a given string where all occurrences of its first char
# have been changed to '$', except the first char itself.
# Sample String : 'restart'
# Expected Result : 'resta$t'
import re
"""mystring="restart"
print(mystring)
first_char = mystring[0]
regex=re.compile(re.escape(first_char))
result=regex.sub("$",mystring[1:])
print(first_char+result)"""

# 2) Write a Python program to add 'ing' at the end of a given string (length should be at least 3).
# If the given string already ends with 'ing' then add 'ly' instead. If the string length of the given string is less than 3,
# leave it unchanged.
# Sample String : 'abc'
# Expected Result : 'abcing'
# Sample String : 'string'
# Expected Result : 'stringly'

#s = "string"
"""s="abc"
if len(s) < 3:
    result = s
elif re.search(r'ing$', s):
    result = re.sub(r'ing$', 'ly', s)
else:
    result = s + 'ing'

print("Modified string:", result)"""

# 3) Write a Python program to calculate the length of a string.
# 	[ without any inbuilt function ]
"""s = "Yogeshree"  # You can change this string
count = 0
for char in s:
    count += 1
print("Length of the string is:", count)"""

# 4) Write a Python program to count the number of characters (character frequency) in a string.
# Sample String : google.com'
#
# expected result:
# {'g': 2, 'o': 3, 'l': 1, 'e': 1, '.': 1, 'c': 1, 'm': 1}
"""from collections import Counter

mystring='google.com'

mydictionary=Counter(mystring)
print(mydictionary)"""

# 5) Write a Python program to get a string made of the first 2 and the last 2 chars from a given a string.
# If the string length is less than 2, return the same string instead of the empty string
"""s = "Yogeshree"
if len(s) < 2:
    result = s
else:
    result = s[:2] + s[-2:]
print("Result:", result)"""

# 6) Write a Python program to get a single string from two given strings, separated by a space and swap the first two characters of each string.
# Sample String : 'abc', 'xyz'
# Expected Result : 'xyc abz'

"""str1 = "abc"
str2 = "xyz"

new_str1 = str2[:2] + str1[2:]
new_str2 = str1[:2] + str2[2:]
result = new_str1 + " " + new_str2

print("Result:", result)"""

#************************ Others Assignment******************

#1) Accept a number from the user check if it is special
#  * number or not?
# Example: 145
# 1! =1
# 4!=1*2*3*4
# 5!=1*2*3*4*5
# Sum of the factorials is (1+24+120=145)
"""x=int(input("Enter a number"))

def isspecial(x):
    n=x
    sum=0
    while(x>0):
        temp=x%10
        sum=sum+fact(temp)
        x=x//10
    if sum==n:
        return True
    else:
        return False
def fact(n):
    if n==0:
        return 1
    else:
        return n*fact(n-1)

if isspecial(x):
    print("Number is special")
else:
    print("Number is not special")"""



#2) accept a number (maximum 5 digit number) and  calculate sum of its digits.


#3)  Print 4 digit armstrong numbers
 # e.g.  1634, 8208, 9474 are four-digit Armstrong numbers

"""for num in range(1000, 10000):
    total=0
    temp=num
    while temp > 0:
        digit = temp % 10
        total += digit ** 4
        temp//= 10
    if total == num:
        print("num is : ",num)"""



#4) accept principle amt, rate of interest and no. of years and calculate simple interest.
	# [ formula :    principle_amt*rate*years)/100 ]
"""pri=float(input("enter principle"))
rate=float(input("enter Rate"))
year=float(input("enter year"))

si=pri*rate*year
print("simple intrest: ",si)"""





#********************* Again Solving ********************************
# Q1. Create a class named Car
# •	The class should have the following attributes: brand, model, and year.
# •	Include a method display_details() that prints all the attribute values in a readable format.
# •	Create an object of the class and demonstrate the method.

# Q2. Extend the Car class
# •	Add a method car_age(current_year) that calculates and returns the age of the car.
# •	Create a car object and show how the method works for the year 2025.


"""class Car:
    def __init__(self,brand,model,year):
        self.brand=brand
        self.model=model
        self.year=year
    def display_details(self):
        print(f"Brand:{self.brand}\tModel:{self.model}\tYear:{self.year}")

    def car_age(self,current_year):
        self.current_year=current_year
        return self.year-self.current_year

c=Car("creta",'xyz',2024)
c.display_details()
print("Age of car : ",c.car_age(2023))"""


# Q3. Create a class Student
# •	Attributes: name, roll_number, and marks.
# •	Method is_passed() should return True if marks are greater than or equal to 40, else False.
# •	Create at least two student objects and test the method.

"""class Student:
    def __init__(self,name, roll_number,marks):
        self.name=name
        self.roll_number=roll_number
        self.marks=marks

    def is_passed(self):
        if self.marks>=40:
            print(f"name:{self.name}\t Roll_number:{self.roll_number} \t Makrs:{self.marks}")
            return True
        else:
            print(f"name:{self.name}\t Roll_number:{self.roll_number} \t Makrs:{self.marks}")
            return False
s1=Student("Yoi",1,98)
print(f"{s1.is_passed()}")
s2=Student("jjoi",2,28)
print(f"{s2.is_passed()}")"""


# Q4. Create a class Rectangle
# •	Attributes: length and breadth
# •	Methods:
# o	area() – returns the area of the rectangle.
# o	perimeter() – returns the perimeter.
# •	Create an object and display both area and perimeter.

"""class Rectangle:
    def __init__(self,length,breadth):
        self.length=length
        self.breadth=breadth
    def area(self):
        return self.length*self.breadth

    def perimeter(self):
        res= 2*(self.length * self.breadth)
        return res

rec=Rectangle(2,4)
print(f"Area of Rectangle:{rec.area()}")
print(f"Perimeter of Rectangle:{rec.perimeter()}")"""


#Q5. Create a base class Person
# •	Attributes: name, age
# •	Method: show_info() that prints the person's name and age.

