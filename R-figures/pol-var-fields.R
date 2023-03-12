
library(fields)

x1 <- 0:1000/1000
x2 <- sqrt(3)*x1/2
polarization <- function(x,y)
{p <- - (x - 1/2)- (y - sqrt(3)/2)/sqrt(3);
 q <-   (x - 1/2) - (y - sqrt(3)/2)/sqrt(3);
 ifelse (0 <= p & 0 <=q & p+q <=1, 1-27*p*q*(1-p-q),NA)}
z <- outer(x1,x2,FUN="polarization")
pdf(file="polarization-var.pdf")
object <- list(x=x1,y=x2,z=z)
plot.surface(object,xlab="",ylab="",axes=FALSE,asp=1,type="C")
lines(c(0,1/2,1,0),c(0,sqrt(3)/2,0,0),lwd=2,lty=2)
points(1/2,1/(2*sqrt(3)),pch=1,cex=2)
points(c(0,1/2,1),c(0,sqrt(3)/2,0),pch=2,cex=2)
points(c(1/2,1/4,3/4),c(0,sqrt(3)/4,sqrt(3)/4),pch=0,cex=2)
dev.off()

