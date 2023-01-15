#bar graph of ACC winning percentage
library(readr)
cbb20 <- read_csv("~/Downloads/archive/cbb20.csv")
ACC <- cbb20[cbb20$'CONF'=="ACC",]
meanACCW<- mean(ACC$W)
ACCwinningpercentage <- (ACC$W/ACC$G)*100
barplot(ACCwinningpercentage, names.arg=c("Duke", "Louisville", "FSU", "UVA", "Syracuse", "NC State", "GA Tech", "ND", "Clemson", "UNC", "WF", "Miami", "VA Tech", "Pitt", "BC"), cex.names = 0.5, main = "Winning Percentage of ACC Teams")

