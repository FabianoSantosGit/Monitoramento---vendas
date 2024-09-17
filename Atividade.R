# Criar um vetor com as vendas diárias de 10 vendedores:
Vendas <- c(10,13,25,30,35,40,45,55,60,65)
# Verificando quais vendedores atingiram a meta mínima de 20 vendas:
Metas <- Vendas >= 20
# Calculando quantos vendedores atingiram a meta:
Atingiram_meta <- sum(Metas)
# Substituindo qualquer valor de vendas inferior a 15 por 15:
Vendas[Vendas < 15] <- 15
# Gerando um "relatório" de desempenho:
relatorio <- ifelse(Metas, "Atingiu a meta", "Não atingiu a meta")
# Exibindo os resultados
cat("Vendas ajustadas:", Vendas, "\n")
cat("Vendedores que atingiram a meta:", Atingiram_meta, "\n")
cat("Relatório de desempenho:\n")
for (i in 1:length(Vendas)) {
  cat(paste("Vendedor", i, ":", relatorio[i], "\n"))
}