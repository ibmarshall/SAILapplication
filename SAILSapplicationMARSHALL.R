#bar graph of ACC winning percentage
library(readr)
cbb20 <- read_csv("~/Downloads/archive/cbb20.csv")
ACC <- cbb20[cbb20$'CONF'=="ACC",]
meanACCW<- mean(ACC$W)
ACCwinningpercentage <- (ACC$W/ACC$G)*100
barplot(ACCwinningpercentage, names.arg=c("Duke", "Louisville", "FSU", "UVA", "Syracuse", "NC State", "GA Tech", "ND", "Clemson", "UNC", "WF", "Miami", "VA Tech", "Pitt", "BC"), cex.names = 0.5, main = "Winning Percentage of ACC Teams")

#plot winning percentage vs. points scored per 100 possessions, and winning percentage vs. points scored against per 100 posessions
plot(ACCwinningpercentage, ACC$ADJDE, col="red", xlim=c(30,90), ylim=c(80,120), xlab="Winning Percentage", ylab="Points Scored For or Against", main="Winning Percentages vs. Points Scored For and Against Per 100 Possesions")
points(ACCwinningpercentage, ACC$ADJOE, col="green")

#plot winning percentage vs. points scored per 100 possessions for and correlation
plot(ACCwinningpercentage, ACC$ADJOE, xlab="Winning Percentage", ylab="Points Scored for per 100 Possessions", main="Winning Percentage vs. Points Scored For")
cor.test(ACCwinningpercentage, ACC$ADJOE, method="pearson")

#plot winning percentage vs. points score per 100 possessions against and correlation
plot(ACCwinningpercentage, ACC$ADJDE, xlab="Winning Percentage", ylab="Points Scored Against per 100 Possessions", main="Winning Percentage vs. Points Scored Against")
cor.test(ACCwinningpercentage, ACC$ADJDE, method="pearson")

#plot winning percentage vs. field goal rate for and also the percent allowed
plot(ACCwinningpercentage, ACC$EFG_O, col="red", xlim=c(30,90), ylim=c(40,55), xlab="Winning Percentage", ylab="Field Goal Percentage For and Allowed", main="Winning Percentages vs. Field Goal Percentage For and Allowed")
points(ACCwinningpercentage, ACC$EFG_D, col="green")

#plot winning percentage vs. field goal rate for and correlation
plot(ACCwinningpercentage, ACC$EFG_O, xlab="Winning Percentage", ylab="Field Goal Rate", main="Winning Percentage vs. Field Goal Rate")
cor.test(ACCwinningpercentage, ACC$EFG_O, method="pearson")

#plot winning percentage vs. field goal rate against and correlation
plot(ACCwinningpercentage, ACC$EFG_D, xlab="Winning Percentage", ylab="Field Goal Rate Allowed", main="Winning Percentage vs. Field Goal Rate Allowed")
cor.test(ACCwinningpercentage, ACC$EFG_D, method="pearson")

#plot average points scored in 100 possessions vs field goal rate and correlation
plot(ACC$ADJOE, ACC$EFG_O, xlab="Points per 100 Possessions", ylab="Field Goal Rate", xlim=c(90,120), ylim=c(40,55), main="Points Scored vs. Field Goal Rate")
cor.test(ACC$ADJOE, ACC$EFG_O, method="pearson")

#plot average points scored against in 100 possessions vs field goal rate allowed and correlation
plot(ACC$ADJDE, ACC$EFG_D, xlab="Points Against per 100 Possessions", ylab="Field Goal Rate Allowed", xlim=c(90,105), ylim=c(40,55), main="Points Scored Against vs. Field Goal Rate Allowed")
cor.test(ACC$ADJDE, ACC$EFG_D, method="pearson")