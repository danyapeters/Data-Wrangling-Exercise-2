titanic_original = read.csv("C:\\Users\\Danya\\Documents\\Foundations in Data Science\\Data Wrangling Exercise 2\\titanic_original.csv", 
                            header =T, na.strings=c(""," "))

titanic_original%>%count(embarked)

titanic_original$embarked[is.na(titanic_original$embarked)] <- "S"
titanic_original%>%count(embarked)



age.mean<-mean(titanic_original$age, na.rm = TRUE)
titanic_original$age[is.na(titanic_original$age)] <- age.mean

titanic_original$boat <- as.character(titanic_original$boat)
titanic_original$boat[is.na(titanic_original$boat)] <- "None"

titanic_original$has_cabin_number[!is.na(titanic_original$cabin)] <- "1"
titanic_original$has_cabin_number[is.na(titanic_original$has_cabin_number)] <- "0"


write.csv(file = 'c:\\Users\\Danya\\Documents\\Foundations in Data Science\\Data Wrangling Exercise 2\\titanic_clean.csv', x = titanic_original)

