library(fields)

x <- seq(0,1,by=1/500)
y <- seq(0,1,by=1/500)
P <- function(x,y){x}
Q <- function(x,y){ifelse(y <= 1-x,y,NA)}
p <- outer(x,y,FUN=P)
q <- outer(x,y,FUN=Q)
# plot(p,q,type="p")
POLARIZATION <- function(p,q) {4*(p^2*(1-p)+q^2*(1-q)+(1-p-q)*(p+q))}
pol <- POLARIZATION(p,q)
# pdf(file="polarization.pdf") # colormodel=gray
object <- list(x=P,y=Q,z=pol)
plot.surface(object,xlab="",ylab="",axes=FALSE,asp=1,type="c", levels=0:10/10, zlim=c(0,1))
# lines(c(0,1/2,1,0),c(0,sqrt(3)/2,0,0),lwd=2,lty=2)
# points(1/2,1/(2*sqrt(3)),pch=1,cex=2)
# points(c(0,1/2,1),c(0,sqrt(3)/2,0),pch=2,cex=2)
#points(c(1/2,1/4,3/4),c(0,sqrt(3)/4,sqrt(3)/4),pch=0,cex=2)
#dev.off()
