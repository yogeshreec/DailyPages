# 1) create a list, accept 5 numbers , store them in the list and finally convert that list to numpy array.

"""import numpy as np
mylist=[]
for i in range(5):
    num=int(input("enter number: \t"))
    mylist.append(num)

arr1=np.array(mylist)
print(arr1)
print(type(mylist))
print(id(mylist))"""

"""import numpy as np
list1=[input("enetre number") for i in range(5)]
arr=np.array(list1)
print(arr)
"""
"""import numpy as np
first=np.array([10,20,30,40,50])
print(first)
for i in range(0,first.__len__()):
    print(first[i])
print(type(first))
print("dimension:",first.ndim)
print("shape:",first.shape)"""

#2) create numpy array of 5 numbers and print their sum
"""import numpy as np
mylist=[]
for i in range(5):
    num=int(input("enter number"))
    mylist.append(num)

arr1=np.array(mylist)
print(arr1)
sum=sum(arr1)
print(sum)"""


"""import numpy as np
list1=[int(input("enter number")) for i in range(5)]
arr1=np.array(list1)
print(arr1)
sum=np.sum(arr1)
print(sum)"""
# print(f"Total of list is {sum}")



# 3) create numpy double dimension array of 3*3 to store your initial and display them in a tabular form.
"""import numpy as np
first=np.array([['y','o','g'],['k','o','m'],['d','i','y']])
for i in range(0,first.__len__()):
    print(first[i])
print(type(first))
print("dimension:",first.ndim)
print("shape:",first.shape)
for i in first:
    print(' '.join(str(i)))"""





#4) create one-d numpy array of 12 elements , accept 12 numbers and display them.
# Now convert this one-d array into (4*3) two-d array and display it in a tabular form.

"""import numpy as np
mylist=[]

for i in range(12):
    num = int(input("enter 12 number"))
    mylist.append(num)

arr1=np.array(mylist)
print(arr1)
print("Conversion 1d to 2d")
arr1=arr1.reshape(4,3)
print(arr1)"""


"""import numpy as np
list1=[int(input("enter number")) for i in range(12)]
arr=np.array(list1)
print(arr)
arr1=arr.reshape(4,3)
print(arr1)
for i in arr1:
    print(' '.join(str(i)))"""

#5) create two double dimension array and arrange (stack) them using "axis=0" "axis=1" and  "axis=2".
"""import numpy as np
arr1=np.array([[1,2,3],[4,5,6]])
arr2=np.array([[7,8,9],[10,11,12]])
print(arr1)
print(arr2)
arr3=np.stack((arr1,arr2),axis=0)
print("**** Axis 0 ******")
print(arr3)
print("dimension of new array after stack function is\t",arr3.ndim)
print("shape of new array after stack function is\t",arr3.shape)

arr4=np.stack((arr1,arr2),axis=1)
print("***** Axis 1 *****")
print(arr4)
print("dimension of new array after stack function is\t",arr4.ndim)
print("shape of new array after stack function is\t",arr4.shape)

arr5=np.stack((arr1,arr2),axis=2)
print("***** Axis 5 *****")
print(arr5)
print("dimension of new array after stack function is\t",arr5.ndim)
print("shape of new array after stack function is\t",arr5.shape)"""

# revision
"""import numpy as np
arr1=np.array([[1,2,3],[4,5,6]])
arr2=np.array([[7,8,9],[10,11,12]])
print(arr1)
print(arr2)
print("*********** Axis 0 ************")
azero=np.stack((arr1,arr2),axis=0)
print(azero)
print("*********** Axis 1 ************")
aone=np.stack((arr1,arr2),axis=1)
print(aone)
print("*********** Axis 2 ************")
atwo=np.stack((arr1,arr2),axis=2)
print(atwo)"""


#6) create two one-d arrays and then find out:
	# a) common elements of both the array
	# b) unique elements of first array
	# c) unique elements of second array
"""import numpy as np
arr1=np.array([1,2,3,4,5,6])
arr2=np.array([2,8,12,4,6,19])
print(arr1)
print(arr2)
arr3=np.intersect1d(arr1,arr2)
print("Common elements of both the array : ",arr3)
arr4=np.setdiff1d(arr1,arr2)
print("Unique elements of first array : ",arr4)
arr5=np.setdiff1d(arr2,arr1)
print("Unique elements of second array : ",arr5)"""


#7) accept no.of rows and no. of cols from the user , create two-d array accordingly.
# Now calculate the sum as per "axis=0" and "axis=1"
"""from numpy import *
import numpy as np
list=[]
print("how many rows")
rownum=int(input())
print("how many cols")
colnum=int((input()))
print("Enter\t",rownum*colnum," values")
for i in range(1,(rownum*colnum)+1):
        num=int(input())
        list.append(num)

mainarray=array([list])
print(mainarray)
mainarray=mainarray.reshape(rownum,colnum)  #convert 1d to 2d
print("\n")
print(mainarray)
print("****** Axis 0 *******")
print(np.sum(mainarray,axis=0))
print("****** Axis 1 *******")
print(np.sum(mainarray,axis=1))"""

import numpy as np
rownum=int(input("how many row"))
columnum=int(input("how many column"))
# print(f"Enter {rownum * columnum} numbers:")
list1=[int(input(f"enter {rownum*columnum} number")) for i in range(rownum * columnum)]
arr=np.array(list1)
print(arr)
arr2=arr.reshape(rownum,columnum)
print(arr2)
print("*************** Axis 0**************")
print(np.sum(arr2,axis=0))
print("*************** Axis 1 **************")
print(np.sum(arr2,axis=1))




#8) declare two 2d arrays and calculate the sum as per "axis=0" "axis=1" and "axis=2"
"""import numpy as np
arr1=np.array([[1,2,3],[4,5,6],[7,8,9]])
arr2=np.array([[11,12,13],[14,15,16],[17,18,19]])
print(arr1)
print(arr2)
print("****** Axis 0 ********")
arr3=np.sum((arr1,arr2),axis=0)
print(arr3)
print("****** Axis 1 ********")
arr4=np.sum((arr1,arr2),axis=1)
print(arr4)
print("****** Axis 2 ********")
arr5=np.sum((arr1,arr2),axis=2)
print(arr5)"""

#9) create two-d array ,display it. Now accept a number from user and perform all
# arithmetic operations on each and every element of the array using that number.
"""import numpy as np
arr1=np.array([[1,2,3],[4,5,6],[7,8,9]])
print(arr1)
num=int(input("enter number"))
print("number is :",num)
print("Airthmetic operations")
print("Addition: \n",arr1+num)
print("Subraction: \n",arr1-num)
print("Multiplication: \n",arr1*num)
print("Division: \n",arr1/num)
print("Modulus: \n",arr1%num)"""

# import random
# import numpy as np
# arr1=np.random.randint(1,101,size=(4,3))
# print(arr1)
# num=int(input("enter a number to perfrom operations"))
# print("Airthmetic Operations")
# print("ADDITION",arr1+num)
# print("SUBRACTION",arr1-num)
# print("MULTIPLICATION",arr1*num)
# print("DIVISION",arr1/num)
# print("MODULUS",arr1%num)


#10) accept start, end and how many numbers to be generated and then using
# "linspace" create numpy array.
"""import numpy as np
st=int(input("enter number for start"))
ed=int(input("enter number for end"))
count=int(input("how many number to be generated"))

arr1=np.linspace(st,ed,count)
print(arr1)"""


#11) create one-d array of 8 numbers and then using "slicing" concept,
	# a) print numbers from 1 to 4
	# b) print all the numbers from 3rd position
	# c) print last 3 numbers

"""import numpy as np
arr1=np.array([1,2,3,4,5,6,7,8,9,10,11,12])
print(arr1)
print("print numbers from 1 to 4")
arr2=arr1[1:5]
print(arr2)
print("print all the numbers from 3rd position")
arr3=arr1[2:]
print(arr3)
print("print last 3 numbers")
arr3=arr1[-3:]
print(arr3)"""

# import random
# import numpy as np
# arr=np.random.randint(1,10,size=8)
# print(arr)
# print("# a) print numbers from 1 to 4")
# arr2=arr[1:5]
# print(arr2)
# print("b) print all the numbers from 3rd position")
# arr3=arr[3:]
# print(arr3)
# print("c) print last 3 numbers")
# print(arr[-3:])
# print(arr[2:6])
# print("every 2nd element")
# print(arr[::2])
# print(arr[::-1])
# print("Print elements from index 1 to 6 skipping every second")
# print(arr[1:7:2])
# print("Print all elements except the first and last")
# print(arr[1:-1])
# print(" the middle 4 elements")
# print(arr[2:6])


#12) create 2 d array (4*3) with following values:
# [[10,20,30,40],[50,60,70,80],[90,100,110,120]]
#
# now using array slicing concept display following values
# 	a) display   50  60  70  80
# 	b) display 100 and 110
# 	c) display 30 70 and 110
# 	d) display 50  60  90 and 100

"""import numpy as np
arr1=np.array([[10,20,30,40],[50,60,70,80],[90,100,110,120]])
print("a) display   50  60  70  80")
arr2=arr1[1]
print(arr2)
print("b) display 100 and 110")
arr2=arr1[2,1:3]
print(arr2)
print("c) display 30 70 and 110")
arr2=arr1[:,2]   #all row all colum 2 index
print(arr2)
print("d) display 50  60  90 and 100")
arr2=arr1[1:3,0:2]
print(arr2)"""


