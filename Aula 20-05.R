getwd()

#gráficos

dados = cars$speed
hist(dados, breaks = 10,
     main = "Histograma de velocidades")

hist(dados, labels = TRUE, breaks = c(0,5,10,20,30),
     main = "Histograma de velocidades")

hist(dados, labels =T , breaks = 10, main = "Histograma de velocidades")

hist(dados, labels = TRUE,ylim = c(0,10), breaks = 10, main = "Histograma de velocidades")

View(dados)

#gráficos em barras

dados <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
colnames(dados) <- c("0", "1-150","151-300",">300")
rownames(dados) <- c("Jovem", "Adulto", "Idoso")

View(dados)

#==============================================================================

barplot(dados, beside = TRUE,
        col = c("steelblue1","tan3","seagreen3"))

View(iris)

legend("topright", pch=0.2,
       col = c(steelblue1,tan3,"seagreen3"),
       legend = c("Jovem","Adulto","Idoso"))
#==============================================================================

barplot(table(iris$Species,iris$Sepal.Length),
        col = c("steelblue1","tan3","seagreen3"),
        legend = c("setosa","versicolor","virginica"))

#gráfico em pizza

dados <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
colnames(dados) <- c("0", "1-150","151-300",">300")
rownames(dados) <- c("Jovem", "Adulto", "Idoso")



#criando as fatias
fatias = c(40,20,40)

#criando as labels
paises = c("Brasil", "Argentina", "Chile")

#concatenando 0
paises = paste(paises,fatias)

#concatenando %
paises = paste(paises,"%",sep="")
paises

pie(fatias, labels=paises,
    col = c("darksalmon","gainsboro","lemonchiffon4"),
    main = "Distribuição de Vendas")

#==============================================================================

#gráficos ggplot
install.packages("ggplot2")
library(ggplot2)
View(mpg)

ggplot(data=mpg)+
  geom_point(mapping = aes(x = displ, y = hwy,
                           alpha = class))

ggplot(data=mpg)+
  geom_point(mapping = aes(x = displ, y = hwy,
                           shape = class))

ggplot(data=mpg)+
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~cyl)


ggplot(data=mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy,
                            color = "red"),
              show.legend = FALSE)

ggplot(data=mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy,
                            linetype = drv))


ggplot(data=mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy,
                            color = drv),
              show.legend = FALSE)

ggplot(data=mpg)+
  geom_point(mapping = aes(x = displ, y = hwy,
                           color = class)) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

#==============================================================================

notas = c(6.4, 7.3, 9.8, 7.3, 7.9, 8.2, 9.1, 5.6, 8.5, 6.8) 

mean(notas)
median(notas)

moda = function(dados) {
  vetor = table(as.vector(dados))
  names(vetor)[vetor == max(vetor)]
}

tamanhos = c(38,38,36,37,36,36,40,39,36,35,36)
moda(tamanhos)

#==============================================================================

#medidas para verificar dispersão de elementos

Maq1 = c(181.9, 180.8, 181.9, 180.2, 181.4)
Maq2 = c(180.1, 181.8, 181.5, 181.2, 182.4)
Maq3 = c(182.1, 183.7, 182.1, 180.2, 181.9)
mean(Maq1)
mean(Maq2)
mean(Maq3)

sd(Maq1)
sd(Maq2)
sd(Maq3)

var(Maq1)
var(Maq2)
var(Maq3)

#==============================================================================

#amplitude

diff(c(min(tamanhos), max(tamanhos)))
range(tamanhos)
diff(range(tamanhos))

#==============================================================================
#saber o porcentual dos dados
num_fichas = c(54, 55, 56, 57, 58, 59, 60, 61, 62, 63)
quantile(num_fichas)

quantile(num_fichas, .10)
quantile(num_fichas, c(.80))
quantile(num_fichas, .98)
quantile(num_fichas, c(.80, .90))

#==============================================================================
#coeficiente de variação

# Nike ==> Valor médio da ação = $55.62 / desvio padrão = $5.10
# Adidas ==> Valor médio da ação = $24.86 / desvio padrão = $3.60

CV_Nike = (5.10/55.62)*100
CV_Adidas = (3.60/24.86)*100

CV_Nike
CV_Adidas

#==============================================================================
#coeficiente de assimetria

#permite dizer se uma determinada distribuição é assimétrica ou não

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")

install.packages("e1071")
library(e1071)
resultado = skewness(dados)
resultado