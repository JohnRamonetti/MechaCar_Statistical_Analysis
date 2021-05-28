library(dplyr)

## Linear Regression to Predict MPG

Mecha_data <- read.csv('MechaCar_mpg.csv') #import dataset

# Multiple Linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data)) #generate summary statistics

