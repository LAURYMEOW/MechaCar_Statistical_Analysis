install.packages()

#DELIVERABLE 1

library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)
lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))


#DELIVERABLE 2
Suspension_Coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F)

total_summary<-Suspension_Coil%>%summarize(Mean=mean(PSI), Median=median(PSI), var(PSI, na.rm = FALSE), sd(PSI, na.rm = FALSE))

lot_summary<-Suspension_Coil%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), var(PSI, na.rm = FALSE), sd(PSI, na.rm = FALSE), .groups='keep')

                                         
plt<-ggplot(Suspension_Coil,aes(y=PSI))
plt+geom_boxplot()


#DELIVERABLE 3

t.test(Suspension_Coil$PSI, mu=1500)

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)

