library(datasets)

#load data --- iris
#data(iris)
#View(iris)
#unique(iris$Species)

data(mtcars)

head(mtcars, 5)

?mtcars

#load ggplot package
library(ggplot2)

#create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")+labs(x = "Displacement", y = "Miles per Gallon")

#create boxplot of the distribution for v-shaped and straight Engine
mtcars$vs <- as.factor(mtcars$vs)

ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) +
  theme(legend.position="none")


ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)


