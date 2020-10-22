# ex8 part 1

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


# ex8 part 2

# create vector 1 through 100
gameset <- c(1:100)

# ask R to randomly select a number from set
randomnumb <- sample(gameset,size=1)

# assign a variable
guess <- 0

# ask R to read user input
guess <- as.numeric(readline(prompt="Guess a number between 1 and 100: "))

# create if else statement
if (guess==randomnumb){
  print("correct!")
} else if (guess>randomnumb){
  print("lower")
  guess <- readline(prompt="Guess: ")
} else if (guess<randomnumb){
  print("higher")
  guess <- readline(prompt="Guess: ")
}

# create while statement
while (guess !=randomnumb){
 if (guess>randomnumb){
    print("lower")
    guess <- readline(prompt="Guess: ")
  } else if (guess<randomnumb){
    print("higher")
    guess <- readline(prompt="Guess: ")
  }
}

if (guess==randomnumb){
  print("correct!")
}

# put everything into a function to run smoothly 
##### start run from here!

game <- function(){
  gameset <- c(1:100)
  randomnumb <- sample(gameset,size=1)
  guess <- 0
  guess <- as.numeric(readline(prompt="Guess a number between 1 and 100: "))
  while (guess !=randomnumb){
    if (guess>randomnumb){
      print("lower")
      guess <- readline(prompt="Guess: ")
    } else if (guess<randomnumb){
      print("higher")
      guess <- readline(prompt="Guess: ")
    }
  }
  if (guess==randomnumb){
    print("correct!")
  }
}

# run the game
game()
