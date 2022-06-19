#Análise, Interpretação e Exercício com Teste do Qui-Quadrado

# Se não considerarmos os imóveis do tipo Apartamento, há diferença no resultado do teste?

# Definindo as hipóteses:

# H0 = Não há relação entre x e y
# H1 = x e y estão relacionados

# Se o valor-p for menor que 0.05 rejeitamos a H0

# Carrega os dados 
dados = read.csv("dados.csv")
dim(dados)

# Extrai um subset filtrando os dados conforme condição proposta para este exercício
dados = droplevels(subset(dados, Tipo_Imovel != "Apartamento"))
dim(dados)
View(dados)

# Separa as variáveis
x = dados$Tipo_Imovel
y = dados$Status_Imovel

# Tabela cruzada
table(x, y)

# Executa o teste
chisq.test(table(x, y))






