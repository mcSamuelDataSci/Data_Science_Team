height.mean <- 66
height.sd   <-  6

weight.mean <- 130
weight.sd   <-  20

N <- 10000

sim.height <- rnorm(10000,mean=height.mean,sd=height.sd)
sim.weight <- rnorm(10000,mean=weight.mean,sd=weight.sd)

height_weight_plot <- function(myCol="blue"){
  plot(sim.height,sim.weight,
       xlab="Height",
       ylab="Weight",
       col=myCol)
}

height_weight_plot()
height_weight_plot(myCol="green")
height_weight_plot("green")

