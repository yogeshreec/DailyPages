#1) store marks of 5 subjects
# 	here use marks as actual data and subject names as indexes.
# accept both marks and subjects from the user.
"""import pandas as pd
marks=[]
subject=[]
for i in range(5):
    sub=input(f"enter subject{i+1}:")
    mak=int(input(f"enter marks for {sub}:"))
    subject.append(sub)
    marks.append(mak)
df=pd.DataFrame({'Subject':subject,'Marks':marks})
print("Stored values")
print(df)"""

# 2) create dictionary to store player name and runs scored of at least 5 players.
# Display it.
# Now convert this dictionary into Series object and print it.
"""import pandas as pd
Players={'Rohit':10000,'Virat':12000,'Dhoni':22000,'Hardik':2000,'Surya':4000,}
print(Players)
dic=pd.Series(Players)
print(dic)"""

# 3) accept 10 values and store them in the Series. Now perform following operations:
# a) display the entire Series
# b) extract 3rd element
# c) extract elements from 4 to 7
# d) extract elements from fourth last till the last element
# e) extract first 3 elements
# f) extract elements from the 5th position
"""import pandas as pd
list=[]
for i in range(10):
    num=int(input("enter 10 numbers"))
    list.append(num)
print(list)
print("a) display the entire Series")
a=pd.Series(list)
print(a)
print("c) extract elements from 4 to 7")
b=list[2]
print("3rd element is ",b)
print(" c) extract elements from 4 to 7")
c=list[3:7]
print(c)
print("d) extract elements from fourth last till the last element")
d=list[4:]
print(d)
print("e) extract first 3 elements")
e=list[:3]
print(e)
print("f) extract elements from the 5th position")
f=list[5]
print(f)
"""
# 4) accept 5 values in a Series and perform the following operations:
# 	a) display their sum
# 	b) add the value accepted from the user
# 	c) subtract the value accepted from the user
# 	d) multiply the value accepted from the user
# 	e) add the value accepted from the user
"""import pandas as pd
list=[]
for i in range(5):
    num=int(input("enter 5 numbers"))
    list.append(num)
print(list)
print("a) display the entire Series")
a=pd.Series(list)
print(a)
print("a) display their sum")
total=a.sum()
print(total)

print("b) add the value accepted from the user")
newval=int(input("enter number"))
b=pd.concat([a,pd.Series(newval)],ignore_index=False)

print("Adding",b.sum())
print("c) subtract the value accepted from the user")
subval=int(input("enter number"))
c=a-subval
print(c)
print("d) multiply the value accepted from the user")
mulval=int(input("enter number"))
d=a=mulval
print(d)
print("e) divide the value accepted from the user")
divval=int(input("enter number"))
e=a-divval
print(e)"""

# **********  DataFrame Assignments ************************************

# 5) accept 5 names,designations and salaries and display them with DataFrame.
"""import pandas as pd
Name=[]
Desig=[]
Salary=[]
for i in range(5):
    name=str(input("enter name "))
    des = str(input("enter Designation "))
    sal = int(input("enter Salary "))
    Name.append(name)
    Desig.append(des)
    Salary.append(sal)
df=pd.DataFrame({'Name':Name, 'Designation':Desig, 'Salary':Salary})
print(df)"""

# 6) create a csv file (with whatever columns and rows you want) manually and then read using pandas.
"""import pandas as pd
df=pd.read_csv("prod.csv")
print(df)"""

# 7) create "Vita.xlsx" using pandas. In this Excel file you have to create 2 sheets "DBDA", and "DAC".
# in each sheet you have to write name,address and age of all the team leaders.
# make sure Excel file gets created successfully.
"""import pandas as pd
df=pd.read_excel("ForPandas.xls")
print(df)
df1=pd.read_excel("ForPandas.xls",sheet_name='Sheet2')
print(df1)"""

#*********** FILTERING ****************************
"""import pandas as pd
import re

proid = [1, 2, 3, 4]
proname = ["Soap", "Perfume", "Deo", "Body_Wash"]
price = [120, 400, 250, 180]

# dictionary of lists
mydictionary1 = {'proid': proid, 'proname': proname, 'price': price}


mydataframe1 = pd.DataFrame(mydictionary1)
print(mydataframe1)
print("without index ************************")
print(mydataframe1.to_string(index=False))
print("\nproducts where price more than 200\n")
print(mydataframe1[mydataframe1.price > 200].to_string(index=False))

print("\nproducts where price is between 200 and 300\n")
print(mydataframe1[(mydataframe1.price >= 200) & (mydataframe1.price <= 300)].to_string(index=False))

print("\nproducts where name is Soap or Deo\n")
pronames = ['Soap', 'Deo']
print(mydataframe1[mydataframe1.proname.isin(pronames)].to_string(index=False))  # case sensitive

print("\nproducts where name is neither Soap nor Deo\n")
pronames = ['Soap', 'Deo']
print(mydataframe1[~mydataframe1.proname.isin(pronames)].to_string(index=False))  # case sensitive

print("\nproducts where name is  Soap or Deo with ignore case\n")
pronames = ['soAp', 'dEo']
print(mydataframe1[mydataframe1.proname.str.fullmatch('soAp|deO', case=False)])

print("\nproducts where name is  Soap or Deo with case\n")

print(mydataframe1[mydataframe1.proname.str.fullmatch('soAp|deO')])

print("\nProducts start with D\n")

print(mydataframe1[mydataframe1.proname.str.startswith('D')])

print("\nProducts start with d case sensitive\n")
print(mydataframe1[mydataframe1.proname.str.casefold().str.startswith('d')])

print("\nproducts which contains e \n")
print(mydataframe1[mydataframe1.proname.str.contains('e')])

print("\nproducts with the largest values\n")
# print(mydataframe1.nlargest(2,'price'))   # 2 rows in descending order of price

print(mydataframe1.nlargest(1, 'price'))  # 1 row in descending order of price

print("\nproducts with the smallest value\n")
print(mydataframe1.nsmallest(2, 'price'))  # 2 rows in ascending order of price"""


