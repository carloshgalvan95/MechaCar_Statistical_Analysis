# Load dplyr package
library(dplyr)

# Import and read file
car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(car)

# Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car)

# determine the p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car))

# Import and read file
suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(suspension)

# Create total_summary
total_summary <- suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary

# Create lot_summary
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary

# determine PSI across all manufacturing lots
t.test(suspension$PSI,mu=1500)

# Test other lots
t.test(subset(suspension$PSI,coil$Manufacturing_Lot == "Lot1"),mu=1500)
t.test(subset(suspension$PSI,coil$Manufacturing_Lot == "Lot2"),mu=1500)
t.test(subset(suspension$PSI,coil$Manufacturing_Lot == "Lot3"),mu=1500)