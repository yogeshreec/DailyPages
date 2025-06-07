#### Tidyverse####
install.packages("tidyverse")
library(tidyverse)
View(diamonds)
?diamonds
str(diamonds)
names(diamonds)
?data
data()
data("tidyverse")  #its a package
data("diamonds")

#--------------------------------------------------------
#pipe Operator
iris %>% head() #right vala left pe execute karenga
iris %>% head() %>% summary()

#---------------------mutate -----------------------------
#Adds new columns or modifies current variables in the dataset.
#mutate se multiple column
d1= diamonds %>% mutate(JustOne=1, Values="someyhing",Simple=TRUE) #create 3 new column... temp changes and display for our view
View(d1)
dim(diamonds)
names(diamonds)
str(diamonds)
#existing column me modification karenga nhi hai to create karenga
diamonds


names(diamonds)
head(diamonds %>%   #original dataset
       mutate(
         price200=price-200,
         price20perc=price*.20,
         price20peroff=price * 0.80,
         pricepercarat=price/carat,
         pizza=depth ^2)
)


diamonds %>%   #original dataset
  mutate(
    price200=price-200,
    price20perc=price*.20,
    price20peroff=price * 0.80,
    pricepercarat=price/carat,
    pizza=depth ^2) %>% head()

View(diamonds)

diamonds %>%   #original dataset
  mutate(
    discount_price=price*0.50,
    x_y_z=x*y*z,
    dept_sq=depth^2) %>% head()

#------------------ Nesting Function ---------------------------------
diamonds %>%
  mutate(m = mean(price),
         sd = sd(price),  #standard deviation
         med= median(price))  #median


unique(diamonds$cut)

#modifies the values within a variable. Here is the basic structure for using recode:
d2 = diamonds %>% mutate(cut.new=recode(cut,"Ideal"="IDEAL"));d2

unique(d2$cut.new)
diamonds %>% mutate(cut.new = recode(cut,
                                     "Ideal" = "IDEAL",
                                     "Fair" = "Okay",
                                     "Premium" = "pizza",
                                     "Very Good"= "Fenil"))

# creating a dataset with 2 variables (Sex , TestScore)
Sex <- factor(c("male", "m", "M", "Female", "Female", "Female"));Sex

TestScore <- c(10, 20, 10, 25, 12, 5)
dataset <- tibble(Sex, TestScore);dataset
str(dataset)
dataset

?tibble
# creating a new variable (Sex.new) with recoded values
# from the original variable (Sex)
dataset %>%
  mutate(Sex.new = recode(Sex,
                          "m" = "Male",
                          "M" = "Male",
                          "male" = "Male"))

Sex <- factor(c("male","female","male","F","M","M","female","male"));Sex
TestScore <- as.character(c(10,20,10,23,21,34,12,32));TestScore   #integer value nhi hongi to usko charcter me convert karenge 
dataset <- tibble(Sex,TestScore);dataset  #tibble is work as dataframe

dataset %>% mutate(Sex.new=recode(Sex,"M"="MALE","male"="MALE","F"="FEMALE","female"="FEMALE"),TestScore.new=recode(TestScore,"10"="20"))

names(diamonds)
diamonds$price= as.character(diamonds$price)
d1= diamonds%>% mutate(price=recode(price,"326"="223"));d1
diamonds$price= as.numeric(diamonds$price)
diamonds

#Summarize()
#collapse all rows and return a one-row summary
diamonds %>% summarize(avg.price = mean(price))


diamonds %>% summarize(avg.price = mean(price),  
                       dbl.price= mean(price)*2,
                       random.add=1+2,
                       avg.carat= mean(carat),
                       stdev.price= sd(price),
                       count= n())
#summarize me 1 table banake show karenga mutate me new column banake show karenga

diamonds %>% mutate(avg.price = mean(price),
                       dbl.price= mean(price)*2,
                       random.add=1+2,
                       avg.carat= mean(carat),
                       stdev.price= sd(price),
                       count= n())  #no of element

View(midwest)
#a. Create a column named avg.pop.den which calculates average population density for the entire dataset
#(hint: use mean() and popdensity; all values in this column should be the same – Why?)
View(midwest %>% mutate(avg.pop.den=mean(popdensity)))

#b. Create a column named avg.area which calculates the average area for the entire dataset
View(midwest %>% mutate(avg.area=mean(area)))

#c. Create a column called totadult which calculates the total number of adults in this dataset (hint: use
#popadults, sum(); requires nesting)
View(midwest %>%
  mutate(totaladult = sum(poptotal)))

#d. Create a new column called tot.minus.white calculating the difference between poptotal and
#popwhite. Using other variables in the dataset, how else could you create the tot.minus.white
#column without using poptotal and popwhite. (hint: popblack, popamerindian, popasian,popother)?
View(midwest %>% mutate(tot.minus.white=poptotal-popblack- popamerindian- popasian-popother))

#e. Create a new column called child.to.adult that calculates the ratio of percchildbelowpovert to
#percadultpoverty (i.e., for every adult that is in poverty, what proportion of children are in poverty?
 #                   Compare to the question from 1a: Why are the values in child.to.adult all different?)

View(midwest %>% mutate(child.to.adult= percchildbelowpovert/percadultpoverty))

#f. Create a new column named ratio.adult which calculates the ratio of adults in this dataset (hint:
#popadults, poptotal).
View(midwest %>% mutate(child.to.adult= popadults/poptotal))

#g. Create a new column named perc.adult that calculates the percentage of the total population that
#are adults per county (hint: build from 1f; * 100).
View(midwest %>% mutate(perc.adult= popadults/poptotal*100))



#### Group By####
#create identification number to represent 50 individuals people
ID <- c(1:50)
# Creating sex variable (25 males/25 females)
Sex <- rep(c("male","female"),25)  # rep= replication
#creating age variable(20-39 yr olds)
Age<- sample(21:39,size=50,rep=TRUE)
Age
## Creating a dependent variable called Score
Score <- c(0.010, 0.418, 0.014, 0.090, 0.061, 0.328, 0.656, 0.002, 0.639, 0.173,
           0.076, 0.152, 0.467, 0.186, 0.520, 0.493, 0.388, 0.501, 0.800, 0.482,
           0.384, 0.046, 0.920, 0.865, 0.625, 0.035, 0.501, 0.851, 0.285, 0.752,
           0.686, 0.339, 0.710, 0.665, 0.214, 0.560, 0.287, 0.665, 0.630, 0.567,
           0.812, 0.637, 0.772, 0.905, 0.405, 0.363, 0.773, 0.410, 0.535, 0.449)
Score
## Creating a unified dataset that puts together all variables
data <- tibble(ID, Sex, Age, Score)
print(data)

#avg score of male and female seprately
data %>%
  group_by(Sex) %>%
  summarize(m = mean(Score),
            s = sd(Score), 
            n = n()) %>% 
  ungroup()   #for next cmd for precaution


#group by Sex and Age next (the order in which the variables appear withint group_by() doesn’t matter):
data %>%
  group_by(Sex, Age) %>% # grouped by Sex and Age
  summarize(m = mean(Score),
            s = sd(Score),
            n = n()) %>%
  ungroup()

#### Filter ####
#: Only retain specific rows of data that meet the specified requirement(s).
diamonds

#Only display data from the diamonds dataset that have a cut value of Fair:
diamonds %>% filter(cut == "Fair")

#Only display data from the diamonds dataset that have a cut value of Fair:
#diamonds %>% filter(cut == "Fair")

diamonds %>% filter(cut=="Fair" | cut=="Good", price<=600)

diamonds %>% filter(cut %in% c("Fair","Good") | cut=="Good", price<=600)


#An alternative method that achieves the same outcome:
#(read as: in the diamonds dataset, show me cut values that match what’s inside the vector c("Fair",                                                                                           "Good"))
diamonds %>%
  filter(cut %in% c("Fair", "Good"), price <= 600)

#The following code would require the cut be Fair and Good (for which none exists):
diamonds %>%
  filter(cut == "Fair", cut == "Good", price <= 600)

#Only display data from diamonds that do not have a cut value of Fair:
diamonds %>% filter(cut != "Fair")

#---------------------------select----------------------------------------------------
#### SELECT ####
#Select only the columns (variables) that you want to see
diamonds %>% select(cut, color)

#Only retain the first five columns:
diamonds %>% select(1:5)

#Retain all of the columns except for cut:
diamonds %>% select(-cut)

#print price,cut,color where price is less than 400
diamonds %>% select(price,cut, color) %>% filter(price>400)

#------------------------------- Arrange-----------------------------------------------------
#### Arrange####
#Allows you arrange values within a variable in ascending or descending order

#Arrange cut by alphabetical order (A to Z):
diamonds %>% arrange(cut)

#Arrange price by numerical order (lowest to highest):
diamonds %>% arrange(price)

#Arrange cut in descending alphabetical order:
diamonds %>% arrange(desc(cut))

#Arrange price in descending numerical order:
diamonds %>% arrange(desc(price))

#------------------------------- Count ----------------------------------------------------


#-------------------------- Rename ---------------------------------------------------
diamonds %>% rename(PRICE=price)   #value then key

diamonds %>% rename(length= x,width=y,dept=z)  #x,y,z ki value length,width and depth


#### QUES SOLVING ####
#/-------------------------------------Ques solving -------------------------------------------------------

#1. View all of the variable names in diamonds (hint: View()).
View(diamonds)



#2. Arrange the diamonds by:
#• Lowest to highest price (hint: arrange())
diamonds %>% arrange(price)

#• Highest to lowest price (hint: arrange(), desc())
diamonds %>% arrange(desc(price))

#• Lowest price and cut
diamonds %>% select(cut,price) %>% filter(price==max(price))

#• highest price and cut
diamonds %>% select(cut,price) %>% filter(price==min(price))


#3. Arrange the diamonds by lowest to highest price and worst to best clarity
diamonds %>% arrange(price,clarity)

#4. Create a new variable named salePrice to reflect a discount of $250 off of the original cost of each
#diamond (hint: mutate()).
diamonds %>%
  mutate(salePrice = max(price - 250))

#5. Remove the x, y, and z variables from the diamonds dataset (hint: select()).
diamonds %>% select(-x,-y,-z)

#6. Determine the number of diamonds there are for each cut value (hint: group_by(), summarize()).

diamonds %>% group_by(cut) %>% summarise(count=n())
  
#  7. Create a new column named totalNum that calculates the total number of diamonds.

diamonds %>% mutate(totalnum=n())
