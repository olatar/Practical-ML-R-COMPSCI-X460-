GOTdata <- read.csv("/Users/ola/Desktop/Fall2019/UC-Berkeley/Practical ML (R)/GameOfThrones/Dataset/battles.csv", header = TRUE)

GOTchosen_data <- data.frame(GOTdata[c(14,1,5,6,10,15,18,19,24)])


GOT_train <- GOTchosen_data[train_sample, ]
GOT_test <- GOTchosen_data[-train_sample, ]

m <- c5.0(GOT_train[-2]) #seperates out the name of the battle

#or similar: data_chosen_col <- data.frame(data[18],data[3],data[6],data[19:20])

#data <- data[-1] removes col 1 or data <- data[c(-1,-2,-3)] removes 1, 2 og 3
#table(data$PaymentMethod) how many in the different categories

data_not_na <- na.omit(data_chosen_col) #remove rows with N/A