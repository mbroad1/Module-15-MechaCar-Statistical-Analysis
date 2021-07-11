library(dplyr)
#Read in MechaCar_mpg.csv
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#Perform multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table)) #generate summary statistics

#Read in Suspension_Coil.csv
suspensioncoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#Create total_summary by summarizing suspensioncoil_table
total_summary <- suspensioncoil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
#Groupby Manufacturing_Lot and then summarize
lot_summary <- suspensioncoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
