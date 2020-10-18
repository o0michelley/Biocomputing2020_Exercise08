scores <- read.csv("UWvMSU_1-22-13.txt", sep="", stringsAsFactors = FALSE)

# create variables
MSU <- 0
UW <- 0

# create for loop with if else statement (nevermind, do not run this!)
for (i in 1:nrow(scores)){
  if (scores$team[i]=="UW"){
  UW <- UW+scores$score[i]
  } else {
    MSU <- MSU+scores$score[i]
  }
}

# create new variables
UWlist <- vector(length=0)
MSUlist <- vector(length=0)
# extract scores for UW and MSU
for (i in 1:nrow(scores)){
  if (scores$team[i]=="UW"){
    UWlist <- c(UWlist, scores$score[i])
  } else {
    MSUlist <- c(MSUlist, scores$score[i])
  }
}
# create vector with cumulative sums
UWcumsum <- cumsum(UWlist)
MSUcumsum <- cumsum(MSUlist)

# create plot of cumulative sums
plot(x=1:length(UWcumsum),y=UWcumsum,type="l",xlab="time",ylab="score",col="red")
lines(x=1:length(MSUcumsum),y=MSUcumsum,col="forest green")
abline(v=1:length(MSUcumsum),col="light grey")
abline(h=1:max(MSUcumsum),col="light grey")
points(x=1:length(UWcumsum),y=UWcumsum,col="red",pch=18)
points(x=1:length(MSUcumsum),y=MSUcumsum,col="forest green",pch=20)
