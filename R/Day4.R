##### Stastics #####
#-------------plots--------------------------
#line plot
data()
?plot
?iris
v<- c(8,14,26,5,43)
v
plot(v,type = "p") #
plot(v,type = "b")  #line graph

plot(v,type = "o", col="red",xlab="X- Axis",ylab="Y - Axis",main="Line Chart") 


?plot
colours()
par(mfrow= c(1,3)) #multiple plot at same time
plot(v,type = "p") #
plot(v,type = "b")
plot(v,type = "o", col="springgreen2",xlab="X- Axis",ylab="Y - Axis",main="Line Chart")


par(bg="violetred")
plot(v,type = "p") 
par(bg="thistle1")
plot(v,type = "b")

#scatter plot means 2D 
#2D
x=c(1:11)
y=c(12:22)
plot(x,y,type = "s")

#------------------------- iris -------------------------------------
data=iris
View(data)
str(data)
par(mfrow= c(1,2))
plot(data$Sepal.Length,type = "o",col="red", main="Comparision btw Sepal Length and petal Length")

lines(data$Petal.Length,type="o",col="blue")

plot(data$Sepal.Length,type = "o",col="red", main="Comparision btw Sepal Length and petal Length",ylim= c(0,10))

lines(data$Petal.Length,type="o",col="blue")
#x ko possition and y ko defalut


#------------------ mtcars ---------------------------------
data1= mtcars

View(data1)

names (data1)

par (mfrow= c(1,1))

plot(data$wt, data$mpg, xlab = "Weight", ylab = "Milage", main = "Weight vs Milage")

#abline(1m(mpg~wt, data data1), col = 'red')

#lm(mpg~wt+qsec, data mtcars)

?plot

pairs(data1)

pairs(~wt+mpg+disp+cyl, data = data1)

plot(data1$mpg, data1$wt, xlab= "Milage", ylab ="weight", main = "Milage vs Weight")

#abline(1m(wt-mpg, data = datal), col = 'red')

#--------------barplot ---------------------------
?barplot
H= c(5,7,9,11)
M=c("A","B","C","D")
barplot(H,names.arg = M,col = "red",border = "green")


#------------------------MUltiple barplot------------------------------------

#beside=true means baju me
counts <- table(mtcars$vs,mtcars$gear)
counts
rownames(counts)
barplot(counts, main="Car Distribution bv Gears and VS",xlab="Number of Gears", col=c("darkblue", "red"), beside = TRUE)
legend("topright",pch = 25,col = c("darkblue","red"),c("vs","gear"),cex=0.8) #pch=vs or gear ka ploting symbole  (cex legend la size)


#----------------------- Stacked -------------------------------------
#calculate absolute value
counts <- table(mtcars$vs,mtcars$gear)
counts
rownames(counts)
barplot(counts, main="Car Distribution bv Gears and VS",xlab="Number of Gears", col=c("darkblue", "red"),legend=rownames(counts), beside = FALSE) #ek ke upar ek

#-------------------------- percentage -----------------------------------
#stacked ko overcome 
p1 <- as.matrix((prop.table(table(mtcars$vs)))) *100    #prop--fraction me convert
p2 <- as.matrix((prop.table(table(mtcars$gear)))) *100

par(mfrow=c(1,2))   #divide graph screen in 2 graph
barplot(p1, legend=F,names="Status",ylab="Percent")
barplot(p2, legend=F,names="Type")

#-------------------------- Pie chart-----------------------------------
?round
?pie
slices <- c(10,12,4,16,8)
pie(slices)

par(mfrow=c(1,1))
lbls <- c("US","UK","LONDON","USA","GERMANY")
pie(slices,labels=lbls,main="Pie Chart of Countries")

pct <- round(slices/sum(slices)*100)
lbls1 <- paste(lbls,pct)
lbls1 <- paste(lbls1,"%",sep=" ")  #add % to labels
pie(slices,labels=lbls1,col=rainbow(length(lbls)),main="Pie Chart of Countries")


#------------------------histogram -------------------------------
#when value is continuous we use histogram 
?hist
View(airquality)
Temperature<- airquality$Temp
hist(Temperature)
#histogram with add parameter
hist(Temperature,
     main="Maximun daily temperature at La Guardian Airport",
     xlab="Tem in degree Fahrenheit",
     xlim=c(50,100),
     col="blue",labels=T)



#------------------------Statastic -------------------------
s<-c(61,64,67,70,73)
n<-c(5,18,42,27,8)
ans=sum(s*n)/sum(n);ans



#Create a list containing a vector, matrix & string
# access the second element
# change the string to uppercase

my_list <- list(
  vec = c(1, 2, 3),                             
  mat = matrix(1:4, nrow = 2),                  
  str = "hello world"                           
)
my_list[[2]]
my_list$str <- toupper(my_list$str)
print(my_list)



#Draw a barplot of month
# Use built-in airquality dataset
par(mfrow=c(1,2))
data <- airquality

barplot(table(data$Month),
        col = "skyblue",
        main = "Barplot of Months",
        xlab = "Month",
        ylab = "Frequency")

#Draw a Draw a barplot of day
# Barplot of frequency of each day
barplot(table(data$Day),
        col = "orange",
        main = "Barplot of Days",
        xlab = "Day",
        ylab = "Frequency")





#Create a named vector for fruit sales: Apple – 120, Banana – 150, Orange – 100.
fruits<- c("Apple", "Banana", "Orange")
fruits
sales<- c(120,150,100)
sales
#(b) Draw a vertical barplot with blue bars.
barplot(table(fruits$sales),
        col = "skyblue",
        main = "Barplot of Months",
        xlab = "Month",
        ylab = "Frequency")
#(c) Add the value of each sale on top of the bars.

#(d) Change bar color for each fruit.



# (a) Use the built-in mtcars dataset.
# (b) Create a boxplot of mpg grouped by number of cylinders (cyl).
# (c) Add different colors for each box.
# (d) Add a title and y-axis label.

View(mtcars)
boxplot(mpg~cyl,data = mtcars,main="MPG VS CYL",xlab="cyl",ylab="mpg",col = c("lightblue","lightgreen","purple"))



(a) Create a vector for votes: A – 60, B – 30, C – 10.
(b) Draw a pie chart with percentages shown.
(c) Assign custom colors.
(d) Add a main title.