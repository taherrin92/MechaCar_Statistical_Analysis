#Deliverable 1

library("dplyr")
car_df <- read.csv(file="MechaCar_mpg.csv")
suspension_df <- read.csv(file = "Suspension_Coil.csv")

linear_model = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_df)
summary(linear_model)


#Deliverable 2

total_summary = suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD = sd(PSI))
lot_summary = suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD = sd(PSI), .groups = "keep")

total_summary
lot_summary


#Deliverable 3

lot1_sub = subset(suspension_df, Manufacturing_Lot == "Lot1",c(PSI))
lot2_sub = subset(suspension_df, Manufacturing_Lot == "Lot2", c(PSI))
lot3_sub = subset(suspension_df, Manufacturing_Lot == "Lot3", c(PSI))

t.test(suspension_df$PSI, mu = 1500)

t.test(lot1_sub, mu=1500)
t.test(lot2_sub,mu=1500)
t.test(lot3_sub,mu=1500)


