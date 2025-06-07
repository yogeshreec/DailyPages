#******************* List Assignment **********************
#1) create a list , accept a number,name and a float value from user and store it inside the list.
#now accept one more name from user and insert it at 2nd position.
#accept a number and append it at the end of the list. print the entire list.

"""name=str(input("enter ur name"))
num=int(input("enter num"))
fval=float(input("enter floa value"))
mylist=[name,num,fval]
print(mylist)
name1=str(input("enter ur name"))
mylist.insert(2,name1)
num=int(input("enter num"))
mylist.append(num)
print(mylist)"""
from fontTools.subset import intersect

#2) first create list empty. accept numbers till user enters 0 and store them
# inside the list. Print the list and its length.
"""mylist=[]

while 1:
    num = int(input("enter num till user enter 0"))
    if num==0:
        break
    mylist.append(num)

print(mylist)"""

#3) accept 5 numbers, store them inside the list and display it. Now add 3
# more numbers [hardcoded] at the end of the list using "extend" method.
"""mylist=[]

for i in range(0,5):
    num = int(input("enter 5 number"))
    mylist.append(num)
print(mylist)
mylist1=[12,13,14]
mylist.extend(mylist1)
print(mylist)"""

# 4) accept a number,string,decimal,boolean value and a character from the user
# and store it inside the list. First print the list from the beginning and then
# from the end.

# 7) create a list and store string,number,character,boolean,decimal values respectively inside it.
# Now slice it in following ways:
# a) display it in reverse order
# b) list all the elements from 2nd position
# c) list the elements from 1st to 3rd position
# d) slice it from 1st to 3rd elements from the end.

"""num = int(input("enter number"))
name=str(input("enter ur name"))
fval=float(input("enter floa value"))
bo=bool(input("enter true or false"))
ch=str(input("enter character"))
mylist=[num,name,fval,bo,ch]
print(mylist)
mylist1=mylist[::-1]
print(mylist1)
print(mylist[2:])
print(mylist[1:3])
print(mylist[-3:-1])"""


# 5) accept 5 numbers, store them inside the list. now accept a number from user
# which he would like to remove from the list and  after removing it,
# display the list.

# 9) accept 5 names and store them in list. Now sort the list in ascending order
# display and then in descending order.

"""mylist=[]
for i in range(0,5):
    num = int(input("enter 5 number"))
    mylist.append(num)
print(mylist)
num1 = int(input("enter 1 number want to remove"))
if num1 in mylist:
    mylist.remove(num1)
print(mylist)
asc_list=sorted(mylist)
print(asc_list)
des=sorted(mylist, reverse=True)
print(des)"""

# 6) accept 5 numbers, store them inside the list. now accept a position from user
# ,remove the element from that position and  after removing it, display the list.
"""mylist=[]
for i in range(0,5):
    num = int(input("enter 5 number"))
    mylist.append(num)
print(mylist)
pos=int(input("position remove the element"))
if pos< len(mylist):
    mylist.pop(pos)
print(mylist)"""

# 8) Note: use List comprehension
#  create a list with the numbers from 1 to 20
#  create one more list which should contain only odd numbers from the first list.
"""mylist=[i for i in range(0,20)]
print(mylist)
mylist1=[x for x in mylist if x% 2!=0]
print(mylist1)"""

# 10) create a class "Car" with two instance members i.e. "model(string)" and
# "isautomatic(boolean)"
# have getter methods also.
# create 5 to 6 objects by passing model name and True or False for "isautomatic".
"""class car:

    def __init__(self, model: str, isautomatic: bool):
        self.model = model
        self.isautomatic = isautomatic

    def get_model(self):
        return self.model
    def get_isautomatic(self):
        return self.isautomatic

c1=car("hhh",True)
c2=car("jjj",False)
print(c1.get_model(),c1.get_isautomatic())
print(c2.get_model(),c2.get_isautomatic())"""

#******************* List Dict Assignment **********************
#******* Dict****************
# 1) Write a Python program to create a dictionary of keys x, y, and z
# where each key has as value a list from 11-20, 21-30, and 31-40 respectively.
# Access the fifth value of each key from the dictionary.
# {'x': [11, 12, 13, 14, 15, 16, 17, 18, 19],
# 'y': [21, 22, 23, 24, 25, 26, 27, 28, 29],
# 'z': [31, 32, 33, 34, 35, 36, 37, 38, 39]}
# 15
# 25
# 35
"""dic={'x': list(range(11,20)),
'y': list(range(21,30)),
'z': list(range(31,40))}

print(dic['x'][4])
print(dic['y'][4])
print(dic['z'][4])"""

# 2) Write a Python script to add a key to a dictionary.
# Sample Dictionary : {0: 10, 1: 20}
# Expected Result : {0: 10, 1: 20, 2: 30}
"""dict={1:10,2:20}
dict[2]=30
print(dict)"""

# 3) Write a Python script to check whether a given key already exists in a
# dictionary.
"""dict={1:10,2:20,3:30}
key=int(input("enter key to check"))
if key in dict:
    print("key is there")
else:
    print("key is not")"""

# 4) Write a Python program to count the values associated with key in a dictionary.
# Sample data: = [{'id': 1, 'success': True, 'name': 'Lary'}, {'id': 2, 'success': False, 'name': 'Rabi'}, {'id': 3, 'success': True, 'name': 'Alex'}]
# Expected result: Count of how many dictionaries have success as True
"""dict=[{'id': 1, 'success': True, 'name': 'Lary'}, {'id': 2, 'success': False, 'name': 'Rabi'}, {'id': 3, 'success': True, 'name': 'Alex'}]
print(dict)
if 'success': True in dict:"""

# 5) Write a Python program to create a dictionary from two lists without losing duplicate values.
# Sample lists: ['Class-V', 'Class-VI', 'Class-VII', 'Class-VIII'], [1, 2, 2, 3]
# Expected Output: {'Class-VII': {2}, 'Class-VI': {2}, 'Class-VIII': {3}, 'Class-V': {1}})
"""
lists=['Class-V', 'Class-VI', 'Class-VII', 'Class-VIII']
list2=[1, 2, 2, 3]
dic={key:{value} for key, value in zip(lists,list2)}
print(dic)"""

# 6) Write a Python program to check a dictionary is empty or not.
"""dict={1:10,2:20,3:30}
if len(dict)==0:
    print("dict is empty")
else:
    print("dict is not empty")"""

#7) Write a Python program to combine two dictionary adding values for common keys.
# d1 = {'a': 100, 'b': 200, 'c':300}
# d2 = {'a': 300, 'b': 200, 'd':400}
# Sample output: Counter({'a': 400, 'b': 400, 'd': 400, 'c': 300})
"""d1 = {'a': 100, 'b': 200, 'c':300}
d2 = {'a': 300, 'b': 200, 'd':400}
from collections import counter
result=counter(d1)+counter(d2)
print(result)"""

# 8) Write a Python program to count number of items in a dictionary value that is a list
# sample data:
# mydictionary1={'Names':['Rohit','Ganesh','SRK','Akshay'],'age':40,'addresses':['Mumbai','Delhi','Kolkara','Banglore'],'emails':['actor.gmail.com','movie.gmail.com']}
# output: 10
"""mydictionary1={'Names':['Rohit','Ganesh','SRK','Akshay'],'age':40,'addresses':['Mumbai','Delhi','Kolkara','Banglore'],'emails':['actor.gmail.com','movie.gmail.com']}
count=0
for value in mydictionary1.values():
    if isinstance(value,list):
        count+=len(value)
print(count)"""

# 9) Write a Python program to create a dictionary from a string.
# Note: Track the count of the letters from the string.
# Sample string : 'w3resource'
# Expected output: {'3': 1, 's': 1, 'r': 2, 'u': 1, 'w': 1, 'c': 1, 'e': 2, 'o': 1}
"""from collections import Counter
word='w3resource'
c=Counter(word)
print(c)"""

# 10) Write a Python program to get the key, value and item in a dictionary
# e.g.
# mydictionary={1:'xyz',3:'abc',5:'pqr',2:'xzz'}
# output :
# 	key     value
# 		total items are 4
"""mydictionary={1:'xyz',3:'abc',5:'pqr',2:'xzz'}
print(mydictionary.keys())
print(mydictionary.values())
# c=mydictionary.le
print("total items are \t",mydictionary.__len__())"""

# 11) Write a Python program to get the maximum and minimum value in a dictionary.
"""dic={1:22,2:99,3:1,4:67}
print("Minimum number is ",min(dic.values()))
print("Maximun number is ",max(dic.values()))"""

# 12) Write a Python program to map two lists into a dictionary.
# e.g.
# given
# prnnos=[1,2,3,4,5,6]
# names=['abc','def','pqr','lmn','xyz','uvw']
# output:
# {1: 'abc', 2: 'def', 3: 'pqr', 4: 'lmn', 5: 'xyz', 6: 'uvw'}
"""prnnos=[1,2,3,4,5,6]
names=['abc','def','pqr','lmn','xyz','uvw']
mydict=dict(zip(prnnos,names))
print(mydict)"""

# 13) Write a Python program to match key values in two dictionaries.
# Sample dictionary: {'key1': 1, 'key2': 3, 'key3': 2}, {'key1': 1, 'key2': 2}
# Expected output: key1: 1 is present in both x and y
"""dic1= {'key1': 1, 'key2': 3, 'key3': 2}
dic2={'key1': 1, 'key2': 2}
common= dic1.keys() & dic2.keys()
for key in common:
    if dic1[key]==dic2[key]:
        print(f"{key} is present in both dictionary")"""

# 14) Write a Python program to print a dictionary line by line.
# Players={'Rohit':{'runs':10000,'centuries':15},'Virat':{'runs':12000,'centuries':18}}
# expected output:
# Rohit
# runs :	 10000
# centuries :	 15
# Virat
# runs :	 12000
# centuries :	 18
"""Players={'Rohit':{'runs':10000,'centuries':15},'Virat':{'runs':12000,'centuries':18}}
for player, stats in Players.items():
    print(player)
    for key, value in stats.items():
        print(f"{key} :\t {value}")"""

# 15) Write a Python program to remove a key from a dictionary.














