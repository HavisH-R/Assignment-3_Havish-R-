library(ggplot2)
#Q1
data("iris")
ggplot(iris, aes(x = Petal.Length, y = Sepal.Length)) +
  geom_point(aes(col = Species)) +labs(title = "Petal length vs Sepal Length ", x = "Petal Length", y = "Sepal Length")
 # Sepal length and petal length are almost directly proportional i.e the species 
# with greater Petal Length have greaterSepal Length and the ones
# with smaller pepal Length have smaller sepal length


#Q2
 data("txhousing") 
 complete.cases(txhousing)

ggplot(txhousing, aes(x = month,y=sales,fill=month)) +
  geom_histogram(stat="identity")+labs(x = "Month", y = "Sales", fill = "Month") +
  ggtitle("Sales vs Month")
#By this histogram it can be seen that The sales are maximum around the months 5,6,7 i.e Summer Season
ggplot(txhousing, aes(x = date, y = sales,col = city)) +
  geom_line() +
  labs(x = "Date", y = "Sales") +
  ggtitle("Sales over Years in Cities")
#this plot shows total Sales over the years in cities and The city with maximum sales over the years can be observed
ggplot(txhousing, aes(sales, volume, color = month)) +
  geom_point() +
  labs(x = "Sales", y = "Volume", color = "Month") +
  ggtitle("Volume Vs Sales")
#this is a scatterplot of Volume vs Sales from this it can be seen that Volume and Sales are directly proportional
# and it was dense in less volume regions it shows high fraction of sales are in less Volume Region

#Q3

data <- read.csv("titanic.csv")

Status <- data$Survived == 1
Status <- as.factor(Status)
levels(Status) <- c( "Died","Survived")


final_Plot <-ggplot(data, aes(x = Fare, y = Status, col = Sex)) +
  geom_boxplot()+
  labs(title="Fare vs Survival\nIrrespective of Sex, richer people survived", x = "Fare",y= "") 




                
