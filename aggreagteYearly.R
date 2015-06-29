mydata<-read.csv("/Users/Ahmed/Documents/Apps/R_trials/Trials/growth_appended_monthly.csv")
mydata$date<-NULL
mydata$Year<-rep(format(seq(as.Date('1980-01-01'),as.Date('2014-12-01'),by = "month"), "%Y"),58)
new.aggregated<-aggregate(mydata[,2:4],list("Year"=mydata$Year,"Country"=mydata$country), mean, na.rm=TRUE)
write.csv(new.aggregated,"/Users/Ahmed/Documents/Apps/R_trials/Trials/growth_appended_yearly.csv")