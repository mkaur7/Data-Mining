library(lattice)
PopulaionData <- read.csv("C:/Users/Me/Desktop/Sem 3/Data Mining/Assignments/Data_Mining/Distribution_of_population_by_sex.csv", 
                          header = TRUE)
subset <- t(data.frame(PopulaionData$Female, PopulaionData$Male))
options(scipen = 999)
barplot(subset, main = "Population Graph", xlab = "Year", ylab = "Population", 
        font.lab = 2, names.arg = PopulaionData$Year, beside = TRUE, 
        col = c("red", "black"), border = NA, legend = c("Female", "Male"), 
        args.legend = list(x = 90, y = 100000000, cex = 1.1, bty = "n", 
                           horiz = TRUE, border = NA))