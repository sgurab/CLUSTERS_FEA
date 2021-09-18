#construindo o data frame com os dados do exercício
lanches <- c('AngusBacon','Quarteirão','BigMac','McFish','Hamburguer','CheddarMcMelt')
valor.ener <- c(861,558,504,373,257,458)
carb <- c(57,36,41,38,31,29)
colest <- c(145,86,54,43,22,63)

dados <- data.frame(lanches,valor.ener,carb,colest)
dados

#padronizando os dados
dados.padro <- scale(dados[,c('valor.ener','carb','colest')], center = TRUE, scale = TRUE)
dados.padro <- as.data.frame(dados.padro)
dados.padro

#obtendo as distâncias euclidianas
distância <- dist(dados.padro, method = "euclidean")
matriz_de_distancias <- as.matrix(distância)
matriz_de_distancias

#agrupando e analisando os clusters
agrupamento <- hclust(distância, method = "centroid")
plot(agrupamento)
