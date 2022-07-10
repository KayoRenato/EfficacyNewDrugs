# Problema de Negocio - Testar o resultado medio da aplicação novas drogas para determinar sua producao. 

# Dados fornecidos:
# Medicamento A = 4 5 4 3 2 4 3 4 4
# Medicamento B = 6 8 4 5 4 6 5 8 6
# Medicamento C = 6 7 6 6 7 5 6 5 5

# Lista com as respostas dos voluntarios
nota_voluntario <- c(4,5,4,3,2,4,3,4,4,6,8,4,5,4,6,5,8,6,6,7,6,6,7,5,6,5,5)
nota_voluntario

# Lista com o total de testes dos 3 medicamentos
medicamento <- c(rep("A",9), rep("B",9), rep("C",9))
medicamento

# Agora criamos um dataframe
df <- data.frame(nota_voluntario, medicamento)
View(df)

# Aplicamos ANOVA
# H0 - Os medicamentos A, B e C tem o mesmo efeito (mesma media);
# Ha - Os medicamentos A, B e C nao tem o mesmo efeito (mesma media);

?aov
teste_anova <-  aov(nota_voluntario ~ medicamento, data = df)
teste_anova

# Sumario do teste
summary(teste_anova)

# Conclusao:
# Valor-p < 0.05, ou seja, 0.000256 < 0.05, logo, rejeitamos a H0. 
# As medias dos grupos nao sao as mesmas e consequentemente os medicamentos nao tem o mesmo efeito.