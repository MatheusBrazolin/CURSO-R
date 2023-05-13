setwd("C:/Users/profslvo.ANIMAEDU/Documents/Linguagem R - Matheus Brazolin")
getwd()

df_iris <- read.csv("iris.csv")

View (df_iris)
dim(df_iris)
str(df_iris)

df_iris <- read.csv("iris.csv", stringAsFactors = T)
View(df_iris2)
dim(df_iris2)
str(df_iris2)

write.csv(df_iris2, "iris2.csv")

install.packages("readxl")
library(readxl)

excel_sheets("PopUrbana.xlsx")

read_excel("PopUrbana.xlsx")

read_excel("PopUrbana.xlsx", sheet = "Period2")
read_excel("PopUrbana.xlsx", sheet = 3)
read_excel("PopUrbana.xlsx", sheet = 4)

df_excel <- read_excel("PopUrbana.xlsx", sheet = 3)

view(df_excel)

#======================================================

plot(lynx)
plot(lynx, type = 'p', main = "Type p")
plot(lynx, type = 'l', main = "Type l")
plot(lynx, type = 'b', main = "Type b")
plot(lynx, type = 'o', main = "Type o")
plot(lynx, type = 'h', main = "Type h")
plot(lynx, type = 's', main = "Type s")
plot(lynx, type = 'n', main = "Type n")


#conjunto de dados 
#x=morm (0,5,7)
#y= rpois(10,7)
#z=rnorm (10,6,7)
#a=rpois (10.9)

 #plot(x,y col=123,pch,=10. main= "Scatterplot",
 #     col.main= "red")
 #cex.main=1.5,xlab= "Variavel"
 
 attach(sleep)

boxplot(data = sleep, extra ~ group, main = "Duração dp sono ", 
        col.main = "red", ylab)
 
 