data("iris")

str(iris)
View(iris)
class(iris)
?iris
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length,
        main = "Box plot",
        ylab= "Sepal_length",
        col = 'darkblue'
)
?boxplot
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Box plot",
        xlab = "Species",
        ylab= "Sepal_length",
        col = c('darkblue','pink','lavender')
)
boxplot(iris[,1:4],
        main="Multivariable Box Plot",
        col = c('maroon','darkgreen','blue','deeppink')
)
#GGPLOT2
library(ggplot2)
ggplot(iris,
       aes(x=Species,y=Sepal.Length)
)+
  geom_boxplot()
ggplot(iris,aes(x = Species,y=Sepal.Length,fill = Species))+
  geom_boxplot()+
  theme_minimal()
ggplot(iris,aes(x = Species,y=Sepal.Length,fill = Species))+
  geom_boxplot()+
  scale_fill_manual(
    values=c(
      "setosa"='red',
      "versicolor"='green',
      "virginica"='blue'
    )
  )+
  theme_minimal()
