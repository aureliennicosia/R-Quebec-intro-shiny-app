### K means algorithm ----




out<- kmeans(mtcars[, c("mpg", "disp")], centers = 3)

out

# graphique ----

mtcars$cluster<- as.factor(out$cluster)

ggplot(data = mtcars,
       aes( x = mpg, y = disp, color = cluster))+
  geom_point()

#### tableau des centroides -----

out$centers


### nb d'iterations -----

out$iter
             