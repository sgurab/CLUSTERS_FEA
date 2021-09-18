#construindo o data frame com os dados do exercício
lanches <- c('AngusBacon','Quarteirão','BigMac','McFish','Hamburguer','CheddarMcMelt')
valor.ener <- c(861,558,504,373,257,458)
carb <- c(57,36,41,38,31,29)
colest <- c(145,86,54,43,22,63)
prot <- c(54,31,25,18,13,27)

dados <- data.frame(lanches,valor.ener,carb,colest,prot)
dados

#padronizando as variáveis
dados_padronizados <- scale(dados[,c('valor.ener','carb','colest','prot')], center = TRUE, scale = TRUE)
dados_padronizados

#distancia
distância <- dist(dados_padronizados, method = "euclidean")
matriz_de_distancias <- as.matrix(distância)
matriz_de_distancias

#clusterização
agrupamento <- hclust(distância, method = "single")
plot(agrupamento)

#Os lanches mais parecidos são os que tem a menor distância
#euclidiana entre si. Portanto, podemos dizer que os lanches mais
#parecidos são BigMac e McFish.
