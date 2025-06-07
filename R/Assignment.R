#1. Write a R program to take input from the user (name and age) and display the values.
name<- readline("Enter name")
age<-as.integer(readline("enter age"))
print(paste("Name: ",name,"And Age is",age))


#2. Write a R program to print the numbers from 1 to 100 and print "Fizz" for
#multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for
#multiples of both.

for(i in 1:100){
  if(i%%3==0 & i%%5==0){
    print("FizzBuzz")
  }else if(i%%5==0){
    print("Buzz")
  }else if(i%%3==0){
    print("Fizz")
  }else{
    print(i)
  }
}

#3. Write a R program to create an array with three columns, three rows, and
#two "tables", taking two vectors as input to the array. Print the array.
v<- c(1,2,3,4,5,6,7,8)
v1<- c(11,12,13,14,15,16)
?array
Myarray<- array(data=c(v,v1),dim = c(3,3,2))
Myarray


#4. Write a function that takes 3 numbers a, b, and c as inputs and returns the
#smallest number of the three
mysmall <- function(a,b,c){
  a<-as.integer(readline("enter a"))
  b<-as.integer(readline("enter b"))
  c<-as.integer(readline("enter c"))
  if(a<b && a<c){
    print(paste(a," is small"))
  }else if(b<c && b<a){
    print(paste(b," is small"))
  }else{
    print(paste(c," is small"))
  }
}
mysmall()


#2nd type
min1 = function(){
  #names <- scan(what = integer(),nmax=3)
  a=as.integer(readline("enter a:"))
  b=as.integer(readline("enter b:"))
  c=as.integer(readline("enter c:"))
  
  min=a
  if(min>b)
  {
    min=b
  }else if(min >c){
    min =c
  }
  print(paste("min :",min))
}
min1()


#5. Write a function which recursively computes the n’th Fibonacci number.

fibonacci <- function(n) {
  if(n==0){
    return(0)
  }else if(n==1){
    return(1)
  }else{
    return(fibonacci(n-1)+fibonacci(n-2))
  }
}
print(fibonacci(5))

#6. Find all primes smaller than 1000.
is_prime=TRUE
for (number in 2:1000){
  is_prime=TRUE
  for (i in 2:(number-1)) {
    if(number%%i==0)
      is_prime=FALSE
  }
  if(is_prime){print(number)}
}

#7. Print the square root of the numbers from 1 to 1000.
for(i in 1:1000){
  print(sqrt(i))
}

#2nd type
num<- 1:1000
squareroot<- sqrt(num)
print(squareroot)

#8. Give the R code required to produce this list:
a<- c(1,2,3,4,5)
a
b<-c("a","b")
b
c <- matrix(1:6, nrow = 2)
c



#10.Create a user defined function from the user which will take vector from
#the user and print its mean
meanvec <- function(){
  vec<- scan(what = numeric())
  res<- mean(vec)
  cat("Mean of vector",res)
}
meanvec()




#11.Create a user define function which will take Principal, Rate of interest,
#Duration from the user and calculate Simple Interest and Compound Interest
interest_calc <- function() {
  P <- as.numeric(readline("Enter Principal amount: "))
  R <- as.numeric(readline("Enter Rate of Interest (%): "))
  T <- as.numeric(readline("Enter Duration (years): "))
  
  SI <- (P * R * T) / 100
  
  CI <- P * (1 + R / 100)^T - P
  

  cat("Simple Interest is:", SI, "\n")
  cat("Compound Interest is:", CI, "\n")
}
interest_calc()


#12.Create a list which has dataframe, matrix & vector and access every
#element from that list.
v<- c(1,2,3,4,5,6)
v
mymatrix <- matrix(1:9, nrow = 3)
mymatrix
df<- data.frame(name=c("A","B","C"),
                age=c(21,22,23))
df
mylist= list(v,mymatrix,df)
mylist
mylist[1]
mylist[2]
mylist[3]

