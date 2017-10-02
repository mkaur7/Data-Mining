library(tm)
library(lsa)
TextCorpus <- Corpus(DirSource('C:/Users/Me/Desktop/Sem 3/Data Mining/Assignments/Assignment 2'))
tdm = TermDocumentMatrix(TextCorpus)
matrix = as.matrix(tdm)
colnames(matrix) <- c("DataMining", "LinearAlgebra", "MachineLearning", "Statistics")
matrix2 <- matrix[c("statistics", "analysis", "linear", "data", "learning", "mining",
                   "knowledge", "machine", "information", "pattern", "predictive",
                   "sampling", "dimensional", "vector", "intelligence", "algorithm"),]
cosine(matrix2)




# OUTPUT MATRIX

#                 DataMining LinearAlgebra MachineLearning Statistics
#DataMining      1.00000000    0.01935559      0.34305436 0.50359925
#LinearAlgebra   0.01935559    1.00000000      0.03315957 0.09389176
#MachineLearning 0.34305436    0.03315957      1.00000000 0.20403627
#Statistics      0.50359925    0.09389176      0.20403627 1.00000000
