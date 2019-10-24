#load data file New York City Airbnb Open Data. This is a dataset downloaded from Kaggle.
NYC_Airbnb<-read.csv("~/Desktop/MIS_64060_Machine_Learning/new-york-city-airbnb-open-data/AB_NYC_2019.csv")

#print descriptive statistics.
head(NYC_Airbnb)
summary(NYC_Airbnb)
summary(NYC_Airbnb$name)
summary(NYC_Airbnb$price)

#create a histogram of the price variable
hist(NYC_Airbnb$number_of_reviews)
#Transform this variable by taking the log of base 10 of 0
number_of_review_t<-(log10(NYC_Airbnb$number_of_reviews+1))

#create a barplot of the the neighbourhood_group variable.
#First, make a table for this variable
table(NYC_Airbnb$neighbourhood_group)
#Then, make the barplot
barplot(table(NYC_Airbnb$neighbourhood_group), width=0.1,ylab="Frequency", main="Listing Areas")

#create a scatterplot for the price and the availability variables
plot(NYC_Airbnb$availability_365, NYC_Airbnb$price, xlab="Days Available in the Year", ylab="Price")





