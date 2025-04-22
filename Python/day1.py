#1)	accept a number and display its table.
"""num=int(input("Enter a number for table"))
for i in range(1,11):
    print(num,"x",i,"=",num*i)"""
from turtledemo.paint import switchupdown

#2)	using switch ….case   display whether accepted character is vowel or not.
"""ch=str(input("enter character to check vowel").upper())
match ch:
    case 'A':
        print(ch,"is vowel")
    case 'E':
        print(ch,"is vowel")
    case 'I':
        print(ch,"is vowel")
    case 'O':
        print(ch,"is vowel")
    case 'U':
        print(ch,"is vowel")
    case _:
        print(ch,"is not vowel")
"""
#3)	Display numbers  1 to 10 using  While loop
"""i=1
while(i<11):
    print(i)
    i+=1"""

#4)	Display numbers from 3 to 30 except number 24  using while loop.
"""i=2
while(i<30):
    i += 1
    if(i==24):
        continue
    print(i)"""

#5)	accept marks from the user. Using if…….elif….  Else,  display whether result is  fail, pass,
# second class , first class, Distinction etc.
"""marks=int(input("Enter marks"))
if(marks>90):
    print("Distinct ")
elif marks in range(80,90):
    print("First Class")
elif marks in range(65,80):
    print("Second Class")
elif marks in range(35,65):
    print("Third Class")
else:
    print("Fail")"""

#6) print the total of first 10 numbers.
"""sum=0
i=0
for i in range(1,11):
    sum=sum+i
print(sum)"""

#7) accept numbers till user enters 0 and display the total of all the numbers entered.
"""sum=0
while(1):
    i=int(input("Enter number number and 0 for terminate"))
    if(i==0):
        break
    sum=sum+i
print(sum)"""

#8) accept a character and display whether it is upper case or lower case or not an alphabet.
"""ch=str(input("enter character"))
i=ord(ch)
if i in range(ord('A'),ord('Z')):
    print(ch,"Upper Case")
elif i in range(ord('a'),ord('z')):
    print(ch,"Lower case")
else:
    print(ch,"is not Alphabet")"""

#9) display fibonicii series of 10 numbers
"""n=int(input("enter a number"))
a,b=0,1
print("Fibonacii series:")
for _ in range(n):
    print(a,end=" ")
    a,b=b,a+b  #update vale for next iter"""

#10) display prime numbers from 3 to 30
"""for num in range(3,30):
    is_prime=True
    for i in range(2,num):
        if(num%i==0):
            is_prime= False
            break
    if is_prime:
        print(num,end=" ")"""

#11) accept a number and display whether it is prime or not
"""num=int(input("enter number"))
is_prime=True
for i in range(2,num):
    if(num%i==0):
        is_prime=False
        break
if is_prime:
    print(num,"is prime")
else:
    print((num,"is not prime"))"""

#





