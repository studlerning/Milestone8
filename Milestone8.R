library(readr)
taxi <- read.csv("jan30_2019_yellow_taxi (1).csv")
View(taxi)
taxi.lm <- lm(taxi$fare_amount ~ taxi$trip_distance, data = taxi)
#Assess the fit of the model by computing R-squared
#correlation of fare_amount and trip_distance for the taxi data set
cor(taxi$fare_amount,taxi$trip_distance)
#square of that correlation = R square
cor(taxi$fare_amount,taxi$trip_distance)^2
#plotting a histogram of the residuals
hist(resid(taxi.lm))
#plotting a scatter plot of the actual 
#observed response value (x axis) vs. residual (y axis)
plot(taxi$fare_amount,taxi$trip_distance)
plot(taxi$fare_amount,resid(taxi.lm))
plot(taxi$trip_distance,resid(taxi.lm))