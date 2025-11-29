#Combine Data
comb_sleep<-rbind(fulldata$TotalMinutesAsleep,data2$Sleep.Duration)
comb_sleep<-na.omit(comb_sleep)
comb_sleep<-as.numeric(comb_sleep)


comb_steps<-rbind(fulldata$TotalSteps,data2$Daily.Steps)
comb_steps<-as.numeric(comb_steps)


#Averages
mean_table <- fulldata %>%
  summarise(across(where(is.numeric), mean, na.rm = TRUE)) 
mean_table$Id<-NULL

mean_table2<-data2 %>%
  summarise(across(where(is.numeric), mean, na.rm = TRUE))
mean_table2$Person.ID<-NULL

#Density Plots

plot(density(comb_steps, na.rm = TRUE),
     main = "Total Steps", 
     xlab = "Steps",
     col="black")
     polygon(density(comb_steps, na.rm = TRUE), col = "lightpink", border = "black")
     abline(v=mean(comb_steps),lty=2,lwd="2", col="blue")
     text(x=4000,y=0.00016,"Mean=7116.336",col="blue", lwd=5)
    

plot(density(comb_sleep, na.rm = TRUE), 
       main = "Total Minutes Asleep", xlab = "Sleep (min)", 
       lwd = 2, col = "black")
polygon(density(comb_sleep, na.rm = TRUE), col = "lightblue", border = "black")
abline(v=mean(comb_sleep),lty=2,lwd="2", col="red")
text(x=390,y=0.0065,"Mean=427.9251",col="red", lwd=5)
