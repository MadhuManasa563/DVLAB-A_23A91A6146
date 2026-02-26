#Loading and understanding dataset
data(diamonds)
#checking all packages
data(package = .packages(all.available = TRUE))
#loading library containing diamonds pack
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
#about dataset
?diamonds
#Basic scatterplot
plot(diamonds$carat,diamonds$price)
#Improved scatterplot
plot(diamonds$carat,diamonds$price,col=rgb(0,0,1,0.1),pch=16,main="Scatter plot")
#Hexbin using base R
install.packages('hexbin')
library(hexbin)
install.packages("hexbin", type = "source")
options(repos = c(CRAN = "https://cloud.r-project.org"))
install.packages('hexbin')
library(hexbin)
hb <- hexbin(diamonds$carat,diamonds$price,xbins = 40)
plot(hb,main= "Hexbin plot")
#Basic hexbin
ggplot(diamonds,aes(x=carat,y=price))+geom_hex()
#Labeled Hexbin PLot
ggplot(diamonds,aes(carat,price))+geom_hex()+labs(title = "Hexagon binning: Diamond Structure",x="Carat",y="Price")+theme_grey()
#Control hexagon density
ggplot(diamonds,aes(carat,price))+geom_hex(bins= 10)+theme_grey()
#Adding color palette
ggplot(diamonds,aes(carat,price))+geom_hex(bins=50)+scale_fill_gradient(low="darkblue",high="maroon")+theme_minimal()
#Professional palette(Viridis)
ggplot(diamonds,aes(carat,price))+geom_hex(bins=40)+scale_fill_viridis_c()+theme_minimal()
#Add legend title
ggplot(diamonds,aes(carat,price))+geom_hex(bins=40)+scale_fill_viridis_c(name = "Count")+labs(title = "DensitycStructure of diamonds",x="Carat",y="Price")+theme_minimal()
#Faceted Hexbin
ggplot(diamonds,aes(carat,price))+geom_hex()+scale_fill_viridis_c()+facet_wrap(~cut)+theme_grey()
