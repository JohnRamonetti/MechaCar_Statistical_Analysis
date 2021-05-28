library(dplyr)

## Linear Regression to Predict MPG

Mecha_data <- read.csv('MechaCar_mpg.csv') #import dataset

# Multiple Linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data)) #generate summary statistics



## Summary Statistics on Suspension Coils

suspension_data <- read.csv('Suspension_Coil.csv') #import dataset

total_summary <- suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table

lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table



