library(ggplot2)

#construindo o data frame com os dados do exercício
países <- c('Áustria','Espanha','Dinamarca','Bulgária','Reino Unido','Itália')
deficit <- c(1.5,6.8,0.7,1.2,5.8,2.8)
gastos_edu <- c(5.6,4.5,7.9,3.5,6.1,4.2)

ex.df <- data.frame(países,deficit,gastos_edu)
ex.df

#padronizando os dados
dados.padro <- scale(ex.df[,c('deficit','gastos_edu')], center = TRUE, scale = TRUE)
dados.padro <- as.data.frame(dados.padro)

#obtendo as distâncias euclidianas
distância <- dist(dados.padro, method = "euclidean")
matriz_de_distancias <- as.matrix(distância)
View(matriz_de_distancias)

#plotando o gráfico de dispersão
ggplot(dados.padro,
       aes(x = deficit, y = gastos_edu, colour = países)) +
  geom_point() +
  xlab("Deficit") + 
  ylab("Gastos com Educação") + 
  ggtitle("Dispersão")

#agrupando e analisando os clusters
agrupamento <- hclust(distância, method = "centroid")
plot(agrupamento)

#Os 3 grupos são: 
#Grupo 1: Dinamarca
#Grupo 2: Bulgária, Itália e Áustria
#Grupo 3: Espanha e Reino Unido
