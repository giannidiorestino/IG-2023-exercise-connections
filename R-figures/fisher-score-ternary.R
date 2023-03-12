library("Ternary")
rm(list = ls())

pdf(file="fisher-score-ternary.pdf")

TernaryPlot(alab = "a", blab = "b", clab = "c",main="Fisher's score")
t <- seq(0,sqrt(3)/2,by=0.001)
MODEL <- function(t) {matrix(c(t,(t-1/2)^2,1-t-(t-1/2)^2),ncol=3)}
list(MODEL(t))
TernaryLines(MODEL(t),col="red")
points <- list(P=c(1/6,2/3,1/6),R=c(1/5,2/5,2/5))
TernaryPoints(points,col="darkblue")
s <- seq(from=-1,to=2,by=0.01)
EXPONENTIAL <- function(s){matrix(c((1/6)^s*(1/5)^(1-s),(2/3)^s*(2/5)^(1-s),(1/6)^s*(2/5)^(1-s)),ncol=3)}
TernaryLines(EXPONENTIAL(s),col="darkblue")
dev.off()
