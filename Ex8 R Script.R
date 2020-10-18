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
