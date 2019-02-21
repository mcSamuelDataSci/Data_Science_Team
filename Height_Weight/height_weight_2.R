height.mean <- 5.5
height.sd   <-  .3

weight.mean <- 130
weight.sd   <-  20

N <- 10000

sim.height <- rnorm(10000,mean=height.mean,sd=height.sd)
sim.weight <- rnorm(10000,mean=weight.mean,sd=weight.sd)

sim.plot <- function(myCol="blue"){
  plot(sim.height,sim.weight,
       xlab="Height",
       ylab="Weight",
       col=myCol)
}

sim.plot()
