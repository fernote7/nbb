require(tidyverse)
setwd("/home/fteixeira/Downloads")
nbb=read_csv2("banco-estatisticas-nbb.csv")

nbb = nbb[complete.cases(nbb),]
nnb2 = aggregate(nbb, by= list(nbb$nome_temporada, nbb$id_jogador,
                               nbb$nome_jogador, nbb$apelido_jogador), FUN = mean)
