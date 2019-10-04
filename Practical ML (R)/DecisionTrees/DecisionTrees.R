data <- read.csv("./../GameOfThrones/Dataset/battles.csv", header = TRUE)
#str(data)
data_chosen_col <- data.frame(data[c(18,3,6)], data[19:20]) #Getting the relevant columns
#or similar: data_chosen_col <- data.frame(data[18],data[3],data[6],data[19:20])

#data <- data[-1] removes col 1 or data <- data[c(-1,-2,-3)] removes 1, 2 og 3
#table(data$PaymentMethod) how many in the different categories

data_not_na <- na.omit(data_chosen_col) #remove rows with N/A