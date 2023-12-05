
#feeding R the data set
SA_Dataset <- read.csv("C:/Users/shrut/OneDrive/Desktop/r_SA/SA_Dataset.txt")
View(SA_Dataset)

#printing data set
print(SA_Dataset)

#displaying bar plot - horizontal
barplot(SA_Dataset$PaymentTier, 
        main = 'payment tier',
        xlab = 'levels', horiz = TRUE,
        col = c("pink")) 

#displaying bar plot - vertical
barplot(SA_Dataset$PaymentTier, 
        main = 'payment tier',
        xlab = 'levels', horiz = FALSE,
        col = c("lightgreen"))

#value counts 
values = table(SA_Dataset$City)
print(values)

#bar plot 
barplot(values, 
        main = 'employess from a city',
        xlab = 'number of employees', horiz = TRUE,
        col = c("lightblue","yellow","lightgreen"))

#histogram
hist(SA_Dataset$Age, main = "Age", 
     xlab ="Age in years", 
     xlim = c(15, 50), col ="yellow", 
     freq = TRUE) 

# pie chart - experience of years
pie(table(SA_Dataset$ExperienceInCurrentDomain), 
    main = "Pie chart of experience in years", 
    col = c("white", "lightblue", "red", "yellow", "purple","orange"), 
    clockwise = TRUE)
#pie chart - male to female ratio
pie(table(SA_Dataset$Gender), 
    main = "gender", 
    col = c("pink", "lightblue"), 
    clockwise = FALSE)


#head - displays first 10 lines
head(SA_Dataset,10)

#tail - displays last 10 lines
tail(SA_Dataset,10)

#summary 
summary(SA_Dataset)

#to display attributes
names(SA_Dataset)

#to show unique values in a column
unique(SA_Dataset$City)

#to count missing values  
sum(is.na(SA_Dataset))

#dimension
dim(SA_Dataset)

#number of rows 
nrow(SA_Dataset)

#number of columns
ncol(SA_Dataset)

#mean of particular column
mean(SA_Dataset$Age)

#std  deviation
print(sd(SA_Dataset$PaymentTier))




#number of people with bachelors degree from pune
library(dplyr)
result <- SA_Dataset %>%
  filter(Education == "Bachelors", City == "Pune")
num_persons_p <- nrow(result)
print(num_persons_p)
  
#number of people with bachelors degree from Bangalore
library(dplyr)
result <- SA_Dataset %>%
  filter(Education == "Bachelors", City == "Bangalore")
num_persons_b <- nrow(result)
print(num_persons_b)

#number of people with bachelors degree from New Delhi
library(dplyr)
result <- SA_Dataset %>%
  filter(Education == "Bachelors", City == "New Delhi")
num_persons_nd <- nrow(result)
print(num_persons_nd)



#number of people with masters degree from Pune
library(dplyr)
result <- SA_Dataset %>%
  filter(Education == "Masters", City == "Pune")
num_persons_p <- nrow(result)
print(num_persons_p)

#number of people with masters degree from Bangalore
library(dplyr)
result <- SA_Dataset %>%
  filter(Education == "Masters", City == "Bangalore")
num_persons_b <- nrow(result)
print(num_persons_b)

#number of people with masters degree from New Delhi
library(dplyr)
result <- SA_Dataset %>%
  filter(Education == "Masters", City == "New Delhi")
num_persons_nd <- nrow(result)
print(num_persons_nd)



#number of female employees in New Delhi
library(dplyr)
result <- SA_Dataset %>%
  filter(Gender == "Female", City == "New Delhi")
num_persons_femaleND <- nrow(result)
print(num_persons_femaleND)

#number of female employees in Pune
library(dplyr)
result <- SA_Dataset %>%
  filter(Gender == "Female", City == "Pune")
num_persons_femaleP <- nrow(result)
print(num_persons_femaleP)

#number of female employees in Bangalore
library(dplyr)
result <- SA_Dataset %>%
  filter(Gender == "Female", City == "Bangalore")
num_persons_femaleB <- nrow(result)
print(num_persons_femaleB)
  

