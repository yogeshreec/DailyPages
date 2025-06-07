#create a user def function by taking raw data from user and print AM,HM,GM
cre_mean <- function(){
  n <- as.numeric(readline("How many numbers are in the dataset "))
  data <- scan(what = numeric(), nmax = n)
  
  am <- mean(data)
  print(am)
  
  hm <- n / sum(1 / data)
  print(hm)
  
  gm <- prod(data)^(1 / n)
  print(gm)
}

cre_mean()



#Mean, median, mode, 1st quartile, 4th decile, 71st percentile
x <- c(1,2,4,1,4,1,5,5,5)
mean(x)
median(x)

# mode <- function(x) {
#   y <- table(x)
#   print(y)
#   m <- names(y)[which(y == max(y))]
#   print(m)
# }
# mode(x)

y <- table(x)   #count 1 kitne bar aya 2 kitne bar likewise
print(y)
m <- names(y)[which(y == max(y))]
print(m)

quantile(x,c(0.25,0.4,0.71,0.5))



quantile(x,c(0.25,0.5,0.75))  #find Q1,q2,q3


#------------------------------ Dispersion ----------------------------------------------------
#Find the coeffi

x<- c(25.75,23.10,23.50,29.25,24.50)
max(x)
min(x)
Range=(max(x)-min(x))/(max(x)+min(x))
Range



# quartile deviation

v = c(34,45,53,42,39,35,40,51,57,52,47,62,55,50,63)
Q1 = quantile(v,0.25)
Q3 = quantile(v,0.75)

abs = Q3-Q1
rel = (Q3-Q1)/(Q3+Q1)
abs
rel


#-------------------------- Standard deviation -----------------------------------
x<-c(12,17,15,11,25)
#sd(x)


sqrt(sum((x - mean(x))^2) / length(x))

#variance
v<- sum((x - mean(x))^2/length(x));v

#Que 2
x<-c(21,16,13,11,9,14,8,14)
s=sqrt(sum((x-mean(x))^2 )/length(x))
s

coe_v=(s/mean(x))*100;coe_v


#with user define Function
standard_deviation <- function(v){
  sd1 <-sqrt(sum((v-(sum(v)/length(v)))^2)/(length(v)));sd1
}

coefficient_variance <-function(x){
  sd1 <-sqrt(sum((x-(sum(x)/length(x)))^2)/(length(x)))
  ce1<-sd1/mean(x)*100;ce1
}

v<-c(12,17,15,11,25)
standard_deviation(v)


a<-c(21,16,13,11,9,14,8,14)
standard_deviation(a)
coefficient_variance(a)

#----------------------------------- Boxplot ------------------------------------------------
?boxplot
air <- airquality
View(air)
?boxplot
par(mfrow=c(1,2))
boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red")
boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red",horizontal = T)
boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red",horizontal = F,notch = T)
boxplot(air, main = "air",col = "green",border = "red")
boxplot(Temp~Month,data = air, main = "Temp~Month",col = "green",border = "red")



a = boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red")
a
a$out   #outliers konse possition

a = boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red")
a$out
which(air$Ozone == 135)
which(air$Ozone == 168)



#------------------------- Correlation ----------------------------------
x =c(30, 40, 50, 65, 70, 75)
y=c(70, 65, 60, 55, 50, 40) 

plot(x,y,type = "p",main = "nagative")  #negative


#que
Demand <-c(15, 20, 18, 22, 25, 30) 
Price <- c( 32, 19, 25, 15, 12, 10)

plot(Demand ,Price,main="Negative")

#que
Statistics=c( 53, 59, 72, 43, 93, 35, 55, 70)
Economics=c( 35,49,63, 36, 75, 28, 38, 76)
plot(Statistics ,Economics,main="Positive")
cor(Statistics,Economics)


#user define fun for corerelation coeff

n=length(x)
a=sum(x*y)
b=sum(x)* sum(y)

c=sqrt(n*sum(x^2)-(sum(x)^2))

d=sqrt(n*sum(y^2)-(sum(y)^2))

r=(length(x)*sum(x*y)-sum(x)* sum(y)/sqrt(n*sum(x^2)-(sum(x)^2))*sqrt(n*sum(y^2)-(sum(y)^2)))
r

r=(n*a-b)/c*d
r


#Que 
#spearman Rank its is for (ordinary/ranking/)
#sorthing in des r1 and r1 then d=r1-r2, d^2

#spearman Rank   work on qualitative data
?cor
x=c(15, 12, 16, 13, 17, 14, 18, 11) 
y=c(17, 14, 20, 25, 23, 24, 22, 21)
cor(x,y)
cor(x,y,method = "spearman")



#---------------------------------- Regression ------------------------------------------
?lm
x=c(11,7,9,10,8,16)
y=c(20,21,17,15,12,11)
model1=lm(x~y)   #x=a-y
summary(model1)
x=16.6429-0.4048*10;x


model2=lm(y~x)
summary(model2)
y=22.8000-0.6689*13  
y


#-------------------------- covarience ------------------------------------------------
x <- c(53, 59, 72, 43, 93, 35, 55, 70)  
y <- c(35, 49, 63, 36,75,28,38, 76)
cov(x,y)
c=sum((x-mean(x))*(y-mean(y))/length(x));c


