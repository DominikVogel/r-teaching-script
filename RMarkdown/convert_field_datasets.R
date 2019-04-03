library(tidyverse)

#Disable scientific notation (1.05e10)
options(scipen=999)

# Album sales #################################################################
albums <- read.delim("data/Album Sales 2.dat",
                   stringsAsFactors = FALSE)

hiphop <- c(1,0,1,1,0,0,1,1,1,1,1,1,0,1,0,0,0,1,1,1,1,0,1,0,1,0,0,1,1,0,1,0,0,
            0,1,1,0,0,0,0,1,1,1,1,1,0,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,0,1,1,
            1,1,0,1,0,1,0,0,1,0,1,1,0,0,1,0,1,0,1,1,1,1,0,1,0,1,1,1,1,0,1,0,1,
            1,1,1,1,1,1,0,1,0,0,0,1,0,1,1,1,1,0,1,0,1,1,0,1,1,1,1,1,1,1,1,0,0,
            1,0,0,1,0,1,0,1,1,0,0,0,1,1,0,1,0,0,0,0,1,0,1,0,1,0,0,1,0,0,1,0,0,
            0,0,1,1,0,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,0,0,0,1,0,1,0,1,1,1,1,0,0,
            1,1)

albums <- cbind(albums, hiphop)

albums <- albums %>% 
  mutate(adverts = adverts * 1000,
         sales = sales * 1000)

albums[1,1] <- 256
albums[8,1] <- 8352
albums[13,1] <- 2192
albums[18,1] <- 19665
albums[23,1] <- 1659
albums[27,1] <- 33651
albums[42,1] <- 5
albums[43,1] <- 2
albums[51,1] <- 78422
albums[56,1] <- 111247
albums[62,1] <- 15
albums[67,1] <- 2757
albums[72,1] <- 2568
albums[72,2] <- 590000
albums[75,1] <- 15
albums[93,1] <- 16
albums[100,1] <- 1
albums[122,1] <- 47476
albums[131,1] <- 50943
albums[132,1] <- 96411
albums[161,1] <- 52648
albums[183,1] <- 29584
albums[184,1] <- 227186
albums[199,1] <- 15
albums[200,1] <- 900694


  
write.csv(albums, file="data/album_sales.csv", row.names = FALSE)


# Drug ########################################################################
drug <- read.delim("data/Viagra.dat",
                   stringsAsFactors = FALSE)

# Rename Variables
drug <- drug %>%
  rename(health = libido)

write.csv(drug, file="data/drug.csv", row.names = FALSE)



# Exam Anxiety ################################################################
exam <- read.delim("data/Exam Anxiety.dat",
                   stringsAsFactors = FALSE)

write.csv(exam, file="data/exam_anxiety.csv", row.names = FALSE)


# Lecturer data ###############################################################
lecturer <- read.delim("data/Lecturer Data.dat",
                       stringsAsFactors = FALSE)

lecturer <- lecturer %>%
  mutate(ID = 1:n()) %>%
  select(ID, name, birth_date, job, friends, alcohol, income, neurotic) 

write.csv(lecturer, file="data/Lecturer_Data.csv", row.names = FALSE)


# Lecturer data missing #######################################################
lecturer[9,7] <- NA
lecturer[6,8] <- NA

write.csv(lecturer, file="data/Lecturer_Data_Missing2.csv", row.names = FALSE,
          na = "")



# Spider long #################################################################
spider_long <- read.delim("data/SpiderLong.dat",
                          stringsAsFactors = FALSE)

spider_long <- spider_long %>%
  rename(anxiety = Anxiety,
         group = Group)

write.csv(data, file="data/spider_long.csv", row.names = FALSE)



# Spider wide #################################################################

spider_wide <- read.delim("data/SpiderWide.dat",
                   stringsAsFactors = FALSE)

write.csv(data, file="data/spider_wide.csv", row.names = FALSE)
