height.mean <- 66
height.sd   <-  6

weight.mean <- 130
weight.sd   <-  20

sim.height <- rnorm(500,mean=height.mean,sd=height.sd)
sim.weight <- rnorm(500,mean=weight.mean,sd=weight.sd)

plot(sim.height,sim.weight,
         xlab="Height",
         ylab="Weight")
