#### DIAGONAL AND MATRIX ####
#creating Diagonal matrix
?diag
D= diag(c(5,3,3),3,3);D
D= diag(c(1,1,1),3,3);D
I= diag(2,3,3);I #2   diag(value,row,col)

#Matrix multiplication by specisl operator
M= matrix(c(2,6,5,1,10,4),nrow=2,ncol=3,byrow=TRUE)
t=M%*% t(M)
print(t)
M= matrix(c(2,6,5,1,10,4,1,2,3),nrow=3,ncol=3,byrow=TRUE)
M1= matrix(c(1,6,5,1,10,4,1,2,3),nrow=3,ncol=3,byrow=TRUE)
t=M%*% M1
print(t)


#create a vector("hello","i',"am",24,50,60,45,"rrr"),
#check if '"am" character is present in the vector or not
#and create the matrix of the same vector having 2 rows and 4 columns
d=c('hello','i','am',24,50,60,45,'rrr')
'am' %in% d
M=matrix(d,nrow=2,ncol=4,byrow=TRUE)
M


####DATA FRAME ####
#df and matrix is 2 D
#in metix we cant not strore complex data in df we can strore values in diff data and with diff data types
?data.frame
v = c(14,26,38,30)  # use c() to store serval value in one variable
v_2 = c("hello","Good morning", "Nice to meet","you")

#Create data frame with 2 column: v and v_2
D_1 <- data.frame(v,v_2);D_1
D_1 <- data.frame(v,v_2,row.names = c("A","B","C","D"));D_1
row.names(D_1) = 1:4;D_1
class(D_1)
row.names(D_1)[1]="abc"
row.names(D_1)[1:2]=c("abc","d")
row.names(D_1)[1:2]

row.names(D_1)[1]="e"
row.names(D_1)[c(1,4)]=c("x","y")
row.names(D_1)[c(1,4)]
?rownames
?row.names
#D_1 head
?head
head(D_1,2)
tail(D_1,3)
View(D_1)
class(D_1)
str(D_1)
dim(D_1)


#Que
D= data.frame(XYZ= c(10,11,12,13,14,15,16,17),ABC = c("A","B","C","D","A","B","C","D"))
D
#D_1 <- data.frame(D,ABC);D_1
#Access first row
D[1,]
#Access first column
D[,1]
#Acess first row and second column
D[1,2]

D$ABC #to display row


#Bind----- Combine  (just like append)
#rbind-- no of column 2column ko merge karna hai to 2 column rehna chahiye
#cbind-- no.of row
D[-c(2,4),] #print 2nd row 4th column delete ho jayenge
a = c(2,"F")
rbind(D,a)  #row add hongi
?cbind
b = data.frame(XYZ = c(14,15),ABC = c("E","F"))
rbind(D,b)
str(D)
D$ABC = as.factor(D$ABC)  #access that column and change data type into factor
str(D$ABC)
D$XYZ = NULL;D
?head
# Change colnames of all columns 
colnames(D) <- c("PQR", "STU")
colnames(D)
D
#Change name of one column
colnames(D)[colnames(D) == "PQR"] <- "XYZ" #Possition se rename karenge
names(D)
colnames(D)[1] <- "UVW"
names(D)

#------------------------------------------------------------------------------------

#new
fr_data <- data.frame("id" = c(1:5),fr_name = c("A","B","C","D","E"),stringsAsFactors = T)
str(fr_data)
summary(fr_data)
fr_data <- data.frame("id" = c(1:5),fr_name = c("A","V","Z","D","E"),stringsAsFactors = T)
str(fr_data)

fr_data$id  #display the id colum from fr_data
#expand a dataframe update and expand same 


fr_data$KGF = c("X","Y","Z","1","2")   #createnew column will add KGF
fr_data

#if existing column hai to update karenga
fr_data$id = 6:10
fr_data


#names(D_1)[3] <- "Employee"
#names(D_1)
letters[2:7]

rep("shruti",7)
#Reordering the dataframe by column number
fr_data[c(2,3,1)]  #position change kar di columns ki
names(fr_data)
#Reordering the dataframe by column name
d <- fr_data[c("fr_name","KGF","id")]  #position change kar di columns ki via name
d

#------------------------------------------------------------------------------------

#Add new column

D_1$Employee <- c("1", "2", "3", "4")
D_1$Employee_New <- c(1,2,3,4)
str(D_1) #to check structure of dataframe


# Change colnames of some columns
colnames(D_1)[colnames(D_1) %in% c("XYZ", "STU")] <- c("uvw", "def") 



#%in% operator in R, is used to identify if an element belongs to a vector.
# Look at data frame's overall type
class(D)

# Look at columns' type
class(D$XYZ)
class(D$ABC)
D$XYZ <- as.character(D$XYZ)
D$ABC <- as.character(D$ABC)
# Call a column in a data frame
D_1$Employee # OR
D_1$uvw
#D_1[,1]

# Create sub data frame with first 3 rows only
D_2= D_1[1:3,]
D_2

#QUE 1
#create a df which has 3 column and 10 rows
#col 1 serial no column 2 is name of the items
#Col 3 is quantity purchase


fr_data <- data.frame("serial_no" = c(1:10),item_name = c("Pen", "Pencil", "Notebook", "Eraser", "Sharpener", "Scale", "Marker", "Crayon", "Highlighter", "Stapler"),quantity_purchased =c(10, 5, 3, 7, 4, 6, 2, 8, 9, 1))
fr_data
str(fr_data)

#add 4th column price of one quantity
fr_data$Price_one = c(11:20)   #createnew column will add Price_one
fr_data

#add 5th column total price
fr_data$Total_price = fr_data$quantity_purchased*fr_data$Price_one
fr_data

#if 10% discount is given then add column of new price
fr_data$newprice = fr_data$Total_price - 0.1*fr_data$Total_price
View(fr_data)


#QUE 1
#create a df which has 3 column and 10 rows
#col 1 serial no column 2 is name of the items
#Col 3 is quantity purchase


fr_data <- data.frame("serial_no" = c(1:10),item_name = c("Pen", "Pencil", "Notebook", "Eraser", "Sharpener", "Scale", "Marker", "Crayon", "Highlighter", "Stapler"),quantity_purchased =c(10, 5, 3, 7, 4, 6, 2, 8, 9, 1))
fr_data
str(fr_data)

#add 4th column price of one quantity
fr_data$Price_one = c(11:20)   #createnew column will add Price_one
fr_data

#add 5th column total price
fr_data$Total_price = fr_data$quantity_purchased*fr_data$Price_one
fr_data

#if 10% discount is given then add column of new price
fr_data$newprice = fr_data$Total_price - 0.1*fr_data$Total_price
View(fr_data)


#missing values
x = c(NA,2,3);y= c(6,7,8);z=c(10,11,NA)
d7= data.frame(x=x,y=y,z=z)
d7
#d8 = data.frame(x,y,z)
is.na(d7)
is.na(d7$x)    #column madhe check karat ahe 
sum(is.na(d7$x))
sum(d7) #sum kar raha hai sabka like 5+2+na to 7+na matlb na

#ignore na or baki ka total denga
sum(d7,na.rm = T)
clean_data= na.omit(d7)  #jisme NA hai vo pura row hi discard krenga delete entire row
sum(clean_data)   #2+7+11

#replace NA with 1
d7[is.na(d7)]=1
d7


#***************************
#is value check karna hai to is.na
#count karna hai to sum(is.na())
#****************************

#Taking input from user
var= readline()
var   #o/p string
?readline

{
  var1 = readline("Enter first number:")
  var2 = readline("Enter first number:")
}
var1
var2



#Take 5 input from user
var1 = readline("Enter first number:")
varA = as.integer(readline("Enter number"))   #make it integer bydefalut string
varA

var2 = readline("Enter first number:")
var3 = readline("Enter first number:")
var4 = readline("Enter first number:")
var5 = readline("Enter first number:")

var= c(var1,var2,var3,var4,var5)

#Take as integere
{
  num1 = as.integer(readline("Enter number"))
  num2 = as.integer(readline("Enter number"))
  num3 = as.integer(readline("Enter number"))
}
num1
num2
num3



x= scan()  #
print(x)
?scan

#Take 10 input
y=scan(nmax = 10)
print(y)


# take character as input in scan
z= scan(what = character())
z

#casefold upper  #upper case lower case
casefold(z,upper = T)
casefold(z,upper = F)


toupper(z)
tolower(z)
class(z)

var1
var2
class(var1)

#create vector by taking age as input from 5 of ur classmate
?cat





cat("Enter number is ",x)

y= c("new","abc")
casefold(y,upper = F)
casefold(y,upper = T)
toupper(y)
tolower(y)

?paste
print(paste("Entered number is",x))


#### importing files in R ####
#importing file to vo dataframe ban jayenga

#dataframe hai to teble me ayenga data in console sabka daytatype show honga

CI=Countries_Indicators   
View(CI)
names(CI)

Countries_Region_Mapping



#Get working directory
getwd()

#backward slashh
setwd("C:/Users/prach/OneDrive/Desktop/R_Visualization/dataset/")
#no need to add sep term as space is the defalut seperator
Titanic= read.table("Titanic_space_separated.txt",header = TRUE)
View(Titanic)


#manually import df and direct import teble

#CSV
Countries = read.csv("Countries Population.csv")
View(Countries)

#text
Orange=read.table("Orange_comma_separated.txt",header = TRUE,sep=",")
#sep="," for comma seperated fields
View(Orange)

library(readxl)

#Use readxl
Countries_Region1 <- read_excel("Countries Region Mapping.xlsx")
View(Countries_Region1)

#update in sheet 2
Countries_Region2 <- read_excel("Countries Region Mapping.xlsx")
View(Countries_Region2)



####Exporting the File####
#write-- export --into csv
#read-- import

#first pos--- dataframe send pos --- file location
write.csv(Orange,file="new_data.csv")

write.table(Orange,file="new_data_table.txt")

install.packages("writexl")
library(writexl)
write_xlsx(Orange,file="new_data_exc.xlsx")


#-------------------------------------------------------------------------------------
#### LIST ARRAY FACTOR ####
#LIST
#we can store another list in a list
list_data <- list(c("Jan","Feb","March"),matrix(c(3,9,5,1,-2,8), nrow = 2),list("pink",12.3))
list_data


#------Assign names------
list_data = list(I_Quarter<- c("Jan","Feb","March"),A_Matrix<-matrix(c(3,9,5,1,-2,8), nrow = 2),A_Inner_list <-list("red",12.3))
list_data
names(list_data)
list_data$I_Quarter
list_data$A_Matrix
list_data$A_Inner_list

##using equals to operator we can subset the list easily
#-----equals to operator-----
list_data_equal = list(I_Quarter= c("Jan","Feb","March"),A_Matrix=matrix(c(3,9,5,1,-2,8), nrow = 2),A_Inner_list =list("blue",12.3))
list_data_equal

names(list_data)
list_data$I_Quarter
list_data$A_Matrix
list_data$A_Inner_list

list_data[1] # vector
list_data[1][1]
list_data[1][2]

list_data[[1]]  
list_data[[1]][1] #going inside vector [[]]
list_data[[1]][2]
list_data[[1]][3]

list_data[2]
list_data[[2]][1,]  #extract first row
list_data[[2]][2] #2nd row ka 2nd position
list_data[[2]][3]
list_data[[2]][4]

list_data[[3]][1]  #3rd row 1 position
list_data[[3]][2]


?list
#Manipulating list element
list_data[4] <- "New element"
list_data
print(list_data)

list_data[-1] #remove the last element
list_data

#remove the last element
list_data[4] <- NULL
list_data

length(list_data)
#print 4th element
print(list_data[4])

#Updating
list_data[3] <- "Updated element"
print(list_data[3])

#Merging List
#create 2 list
list1 <- list(1,2,3)
list2 <- list("sun","mon","tue")
#Merge the two list
merge.list <-c(list1,list2)
merge.list
class(merge.list) #list


#append
l1= list("java","python")
l1

l2= append(l1,2)
l2

l2= append(l1,2:4)  #2se 4 tk append hua
l2

#add at specific position
l1= list("java","python")
l1
l2=append(l1,'R',after = 2)  #R in 3rd position bcz we use after
l2

new=1:21
l2=append(l1,new)
l2

l1= list(x="Java",y="Python",z="C")
l1
#new 1:21
new = 1:5
l2= append(l1,new)53
l2
l2=append(l1,new1<-1:5)
l2
length(l2)
