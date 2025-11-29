#Environment Set-up
library(tidyverse)
library(ggplot2)
library(skimr)


#Data Import and Merge
activity_1<-read_csv("mturkfitbit_export_4.12.16-5.12.16/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv")
activity_2<-read_csv("mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/dailyActivity_merged.csv")
activity_1<-tibble(activity_1)
activity_2<-tibble(activity_2)
activity<-merge(activity_1, activity_2, all=TRUE)
glimpse(activity)
activity<-activity%>%
  group_by(Id)%>%
  summarise(across(everything(), ~ paste(unique(.), collapse = ", ")))
view(activity)

sleep<-read_csv("mturkfitbit_export_4.12.16-5.12.16/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv")
sleep<-tibble(sleep)
glimpse(sleep)
sleep<-sleep%>%
  group_by(Id)%>%
  summarise(across(everything(), ~ paste(unique(.), collapse = ", ")))
view(sleep)

heart_1<-read_csv("mturkfitbit_export_4.12.16-5.12.16/Fitabase Data 4.12.16-5.12.16/heartrate_seconds_merged.csv")
heart_2<-read_csv("mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/heartrate_seconds_merged.csv")
heart_1<-tibble(heart_1)
heart_2<-tibble(heart_2)
heartrate<-merge(heart_1,heart_2,all = TRUE)
heartrate<-heartrate%>%
  group_by(Id)%>%
  summarise(across(everything(), ~ paste(unique(.), collapse = ", ")))
view(heartrate)

ac_slp<-merge.data.frame(activity,sleep,all.x = TRUE,all.y = TRUE)
View(ac_slp)
fulldata<-merge.data.frame(ac_slp,heartrate,all.x = TRUE,all.y = TRUE)
View(fulldata)

fulldata<-fulldata%>%
  group_by(Id)%>%
  summarise(across(everything(), ~ paste(unique(.), collapse = ", ")))
view(fulldata)

data2<-read.csv("Sleep_health_and_lifestyle_dataset.csv")
data2<-data.frame(data2)
data2<-subset.data.frame(data2,select = c(Person.ID,Sleep.Duration,Heart.Rate,Daily.Steps))
data2$Sleep.Duration<-data2$Sleep.Duration*60
view(data2)


#Cleaning
fulldata<-subset.data.frame(fulldata,select = c(Id, TotalSteps, TotalDistance,VeryActiveDistance,SedentaryActiveDistance,TotalMinutesAsleep,Value))
fulldata <- fulldata %>%
  rename(Heart_rate = Value)
view(fulldata)

fulldata$TotalSteps <- sapply(fulldata$TotalSteps, function(x) {
  nums <- as.numeric(trimws(str_split(x, ",")[[1]]))  
  mean(nums)        
})
fulldata$TotalDistance <- sapply(fulldata$TotalDistance, function(x) {
  nums <- as.numeric(trimws(str_split(x, ",")[[1]]))  
  mean(nums)        
})
fulldata$SedentaryActiveDistance<- sapply(fulldata$SedentaryActiveDistance, function(x) {
  nums <- as.numeric(trimws(str_split(x, ",")[[1]]))  
  mean(nums)                                       
})
fulldata$VeryActiveDistance<- sapply(fulldata$VeryActiveDistance, function(x) {
  nums <- as.numeric(trimws(str_split(x, ",")[[1]]))  
  mean(nums)                                       
  })
fulldata$TotalMinutesAsleep<- sapply(fulldata$TotalMinutesAsleep, function(x) {
  nums <- as.numeric(trimws(str_split(x, ",")[[1]]))  
  mean(nums)                                       
})
fulldata$Heart_rate<- sapply(fulldata$Heart_rate, function(x) {
  nums <- as.numeric(trimws(str_split(x, ",")[[1]]))  
  mean(nums)                                       
})
