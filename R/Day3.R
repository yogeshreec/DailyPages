#------------- iris data ---------------------
getwd()
list.files()
data()
?iris
data1=iris
View(data1)
str(iris)
dim(iris)


#que 1
#export iris dataset in ur 
setwd("C:/Users/prach/OneDrive/Desktop/R_Visualization/dataset/")
write.csv(iris,file="iris.csv")


#---------------- Array -------------------------------------
#Array are the R data obj which can store data in more than
#two dim. for example- If we create an array of dim(2,3,4) then 
#it create 4 rectangular matric each with 2 row and 3 column

#An array is creayted using array() function.
#It take vector as input and uses the value in dim parameter to create an array

?array

#create two vector of different length
vector1 <-c(5,9,3)
vector2 <-c(10,11,12,13,14,15)
?array

#take these vectors as input to the array
result=array(c(vector1,vector2),dim=c(3,3,2))   #3 by 3 ke 1matix 2 time (time interval -2---iteration jaise)
print(result) 
result_row=aperm(result,c(1,2,3));result_row
result_row=aperm(result);result_row

?array
?aprem
result_rowwise1 = aprem(result,c(1,3,2));result_rowwise


v1= 1:9
v2=10:18
result=array(c(v1,v2),dim=c(3,3,2))
print(result)

?sample
#if we want to genegate random number so use **sample**
#random number generator --ludo--
sample(1:6,1)
sample(1:6,1)
sample(1:6,1)
sample(1:6,1)


utkarsh= c("reema","Sushmita","Reekha","Manisha")
set.seed(121)   #to fix that random number (with any number)
sample(utkarsh,1)


# new----- Array in real life
?array
sales_data <- array(data = sample(50:200,3*4*7,replace = TRUE),dim = c(3,4,7),
                    dimnames = list(
                      Product = c("Tv","Laptop","Mobile"),
                      Store = paste0("Store",1:4),
                      Day = paste0("Day",1:7)
                    )
)
sales_data

#print sales of TV all seven days & all 4 store
sales_data[1,,]
#Print sales of store 1
sales_data[,1,]
#sum of store
sum(sales_data[,2,])  #galat ho gaya hai



#-----------------------------------------factor-----------------------------
#### Factor ####


#create a vector as input
data <- c("East","West","East","North","West","South","West","North","South","East","South")
print(data)
print(is.factor(data))
 #Apply the factor function
factor.data <- factor(data)
print(factor.data)
class(factor.data)
print(is.factor(factor.data))


# que 2
height <- c(132,152,146,175,156,133,122)
weight<- c(48,49,66,53,67,52,40)
gender <- c("male","female","female","male","male","female","female")
?as.factor
 #create df
input_data <- data.frame(height,weight,gender)
print(input_data)
str(input_data)
#test if gender col is factor
print(is.factor(input_data$gender))
input_data$gender = as.factor(gender)
as.factor(gender)


 #changing lable
input_data$gender= factor(input_data$gender,levels=c("male","female"),labels=c("M","F"))
str(input_data)


#Generating Factor level  if replicaton chahiye to gl karenge

?gl

#n	
#an integer giving the number of levels.

#k	
#an integer giving the number of replications.

#length	
#an integer giving the length of the result.

#labels	
#an optional vector of labels for the resulting factor levels.

#ordered	
#a logical indicating whether the result should be ordered or not.

#syntak
#gl=(n,k,labels)
v <- gl(3,4,labels = c("Tampa","Seattle","Boston"))
print(v)

v1 <- gl(3,4,labels = c("Thane","Borivali","kurla"))   
print(v1)


#Que3
#create a facyor with three color red green yellow and asssign 
#red as high,green as medium, yellow as low also replicate it 4 time
v2 <- gl(3,4,labels=c("red","green","yellow"));v2
c <- factor(v2,levels=c("red","green","yellow"),labels=c("High","MEdium","Low"))
c


#### aggregate ####
#------------------------- aggregate -------------------------------------------
?aggregate()
View(chickenwts)


unique(chickwts$feed)  # data ke column ka structure and levels


aggregate(weight ~ feed, data = chickwts, mean)  #numeric then character  #one to one

View(warpbreaks)
aggregate(breaks ~ wool + tension, data = warpbreaks, mean)  # we can write any function #one to many

View(airquality)
aggregate(cbind(Ozone, Temp) ~ Month, data = airquality, mean)   ##many to one  #cbind karte hai ozon,temp ko or group by karte month,date

View(esoph)
unique(esoph$alcgp)
unique(esoph$tobgp)
unique(esoph$ncases)
unique(esoph$ncontrols)

aggregate(cbind(ncases, ncontrols) ~ alcgp + tobgp, data = esoph, sum)  #many to many
#

#min max for chickwts
aggregate(weight ~ feed, data = chickwts, max)
aggregate(weight ~ feed, data = chickwts, min)

#--------------- subset --------------------------------------
?subset
subset(airquality, Temp > 80, select = c(Ozone, Temp))
subset(airquality, Day == 1, select = -Temp)
subset(airquality, select = Ozone:Wind)


#Que 4
#Toothgrowth dataset

#a View the data
#b find the numer of observations for each dose level
#c What is the average tooth length for supplement type "OJ"?
#c Flter rows when len>25 and dose is 2

?ToothGrowth
View(ToothGrowth)



#find the numer of observations for each dose level
aggregate(len ~ dose, data = ToothGrowth, FUN = length)  #both method are ok
table(ToothGrowth$dose)

# Aggregate the average tooth length for supplement type "OJ"
aggregate(len ~ supp, data = ToothGrowth[ToothGrowth$supp == "OJ", ], FUN = mean)
#mean=(ToothGrowth[ToothGrowth$supp == "OJ"])


# Filter rows where len > 25 and dose is 2
subset(ToothGrowth, len > 25 & dose == 2)


#que 5


#Airquality dataset

#a View data
View(airquality)

#b Find the number of missing values in each column
colSums (is.na(airquality))

#c Replace missing values in Ozone with the mean ozone (excluding NA)
airquality$Ozone [is.na (airquality$Ozone)] = mean(airquality$Ozone, na.rm = T)

#d Find the day with the highest temp
airquality[which.max(airquality$Temp),]

#e Create a summary table of average temp by Month 
aggregate (Temp-Month, data= airquality, mean)




#### user define Function #####

#nameo of fun
fun <- function(a){
print(a*a)
}
fun(9)


x= readline()
#take integer as input from user
add <- function(){
  x= as.integer(readline("enter x"))
  y= as.integer(readline("enter y"))
  print(x+y)
}
add()


#airthmatic operation
cal <- function(){
  x= as.integer(readline("enter x"))
  y= as.integer(readline("enter y"))
  print(x+y)
  print(x-y)
  print(x*y)
  print(x/y)
}
cal()


#airthmatic operation with paste
cal <- function(){
  x= as.integer(readline("enter x"))
  y= as.integer(readline("enter y"))
  print(paste("Sum","=",x+y))
  print(paste("Difference","=",x-y))
  print(paste("Production","=",x*y))
  print(paste("Quotient","=",x/y))
}
cal()


x=c(1,2,9,5,4,7,6,1,4)
sort(x)


#### Control Statement ####
#----------------------------if condition--------------------------------
#if condition
x<-2
if(x>0){
  print(paste(x,"is positive"))
}

#------ if else -----------
x<- -2
if(x>0){
  print(paste(x,"is positive"))
}else{
  print(paste(x,"is negative"))
}

#------------if else if ----------------
x <-0
if(x>0){
  print(paste(x,"is positive"))
}else if (x<0){
  print(paste(x,"is negative"))
}else{
  print(paste(x,"is Zero"))
}

#check no is even or odd
x<- 2
if(x %%2==0){
  print(paste(x,"is even"))
}else{
  print(paste(x,"is odd"))
}


####for loop ####
#----------------------- for loop -----------------------------------
x<- letters[4:10]
for (i in x){
  print(i)
}


for (q in 1:10){
  print(q)
}


#print table
x<-(1:10)
for(i in x) {print(7*i)}


x<-(1:10)
for(i in x) {print(paste("7 *",i,"=",7*i))}


#take inp from user and print its factorial from user define
x= as.integer(readline("enter x"))
f=1
if(x<0){
  print("no is negative")
}else if(x==0){
  print("no is zer1")
}else{
  for (i in 1:x){
    f=f*i
  }
  print(paste("Factorial:",f))
}


#---------------------ques ----------------------
#Take integer as an input fro the user and Print sum of first n natural numbers


# natural num

natural = function(a){
  sum = 0
  if(a>=1){
    for(num in 1:a){
      sum = sum + num
    }
    print(sum)
  }else{
    print("Invalid input")
  }
}

natural(5)

#
firs_n=function(){
  x=as.integer(readline('Enter a number: '))
  if(x>0){
    i=0
    while(i<=x){
      print(i)
      i=i+1
    }
  }
  else{
    if(x<0){
      print(paste(x,'is negative'))
    }
    else{
      print('given number is zero')
    }
  }
}
firs_n()

#repeat
x=1
repeat{
  print(x)
  x=x+1
  if(x>7){
    break
  }
}

#repeat multiplication 
x = 1
repeat{
  print(paste("7 X",x,"=",7*x))
  x = x+1
  if(x>10){
    break
  }
}

#print even number
x<-1:17
for(i in x){
  if(i%%2!=0){
    next
  }
  print(i)
}

#print odd number using next
x<-1:17
for(i in x){
  if(i%%2==0){
    next
  }
  print(i)
}


#Create a numeric vector of length 2,3 and print its #max element.
v<- c(1,3,33,45)
for(i in length(v)-1){
  if(v[i]>v[i+1]){
    print(paste("max element",v[i]))
  }else{
    print(paste("max element",v[i+1]))
  }
}

#define user define function "calc grade" that:
#accept total marks out of 300
#return grades based on >= 27theta = A , 248 269 = B 280 - 239 = c<200


calc_grade <- function(total_marks) {
  if (total_marks >= 270) {
    return("A")
  } else if (total_marks >= 248 && total_marks <= 269) {
    return("B")
  } else if (total_marks >= 200 && total_marks <= 247) {
    return("C")
  } else {
    return("D") 
  }
}

calc_grade(285)  
calc_grade(260)  
calc_grade(210)  
calc_grade(180)  


#Q1. Create a numeric vector of 30 random values from 10 to 100.
v<- c(sample(1:100,30))
set.seed(121)
v
#(a) Find all values greater than 70.
for(i in v){
  if(i>70){
    print(i)
  }
}
#(b) Replace values divisible by 5 with NA.
v[v %% 5==0]<- NA
v

#(c) Remove NA and sort the remaining vector in increasing order.
v_clean_sorted <- sort(na.omit(v))
cat("Sorted vector after removing NAs:\n")
print(v_clean_sorted)


#Q2. Create a named vector of subject scores for a student.
s <- c(Math = 85, English = 78, Science = 92, History = 74, Art = 88)
s
#(a) Access the score for "Math".
s[1]
#(b) Change "English" score to 90.
s["English"]<-90
s
#(c) Add a new subject "Science" with score 85.
s["Science"]<-85
s

#Create a data frame for 5 employees with name, department, and salary.
ed <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "Diana", "Ethan"),
  Department = c("HR", "Finance", "IT", "Marketing", "IT"),
  Salary = c(55000, 62000, 75000, 58000, 73000)
)
ed
#(a) Add a bonus column = 10% of salary.
ed$Bonus<- ed$Salary*0.10
ed
#(b) Use subset() to find employees from "HR".
subset(ed,Department=="HR")
#(c) Filter employees with total (salary + bonus) > 50000.
subset(ed,(Salary + Bonus) > 50000)


#Generate 20 random numbers between 1 and 50.
v<- c(sample(1:50,20))
set.seed(121)
v
#(a) Print only odd numbers.
for(i in v){
  if(i%%2==0){
    next
  }
  print(i)
}
#(b) Stop loop if a number is divisible by both 3 and 7.
for(i in v){
  if(i%%3==0 &&i%%7==0){
    break
  }
  print(i)
}
#(c) Skip values less than 10 using next.

for(i in v){
  if(i<10){
    next
  }
  print(i)
}

#Use mtcars dataset.
?mtcars
View(mtcars)
#(a) Find mean mpg by number of cylinders.
aggregate(mpg ~ cyl, data = mtcars, mean)
#(b) Find total hp by number of gears.
aggregate(hp ~ gear, data = mtcars,sum)
sum()

#(c) Count number of cars by carburetor type.
table(mtcars$carb)



#Create a 4x4 matrix with values 1 to 16.
M= matrix(c(1:16),nrow=4,ncol=4,byrow=TRUE)

M

#(a) Replace diagonal elements with 0.
diag(M)<-0
#(b) Multiply all border elements by 2.
M[4,]<-M[4,]*4;M
#(c) Print the matrix.
print(M)

#Create a vector of 20 random integers.
#(a) Replace all even numbers with “Even” and odd with “Odd”.
#(b) Count number of even numbers.
#(c) Replace values > 50 with “High”.


#Create a function to accept 2 numbers and perform:
#  (a) If both even – return their sum.
#(b) If both odd – return their product.
#(c) Else return "Mixed".


#### Switch ####
#----------------------switch----------------------
?switch
color='red'
switch(color,"red" = "stop","green"="go ahead","yellow"="go slow","invalid color")










