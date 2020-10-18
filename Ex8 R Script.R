scores <- read.csv("UWvMSU_1-22-13.txt", sep="", stringsAsFactors = FALSE)

# create variables
MSU <- 0
UW <- 0

# create for loop with if else statement
for (i in 1:nrow(scores)){
  if (scores$team[i]=="UW"){
  UW <- UW+scores$score[i]
  } else {
    MSU <- MSU+scores$score[i]
  }
}
