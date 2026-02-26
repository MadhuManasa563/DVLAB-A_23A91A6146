#Loading dataset
data("iris")
str(iris)
View(iris)

#Basic sctterplot
plot(iris$Sepal.Length,iris$Sepal.Width)

#Labled plot
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main="Sepal len VS sepal width",
  xlab = "Sepal len",
  ylab = "Sepal width",
  col = "darkred",
  pch = 16
)
#colored Scatter  plot by species
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  main = "Sepal Dimensions by Species"
)
legend("topright",legend = levels(iris$Species), col = 1:3, pch=16)
