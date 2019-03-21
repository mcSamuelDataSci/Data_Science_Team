height.mean <- 66
height.sd   <-  6

weight.mean <- 130
weight.sd   <-  20

sim.height <- rnorm(500,mean=height.mean,sd=height.sd)
sim.weight <- rnorm(500,mean=weight.mean,sd=weight.sd)

plot(x=sim.height,y=sim.weight,
         xlab="Height",
         ylab="Weight")

points(72,130,col="red",cex=4,pch=21 ,new=T,bg="red")

par(new=F)
