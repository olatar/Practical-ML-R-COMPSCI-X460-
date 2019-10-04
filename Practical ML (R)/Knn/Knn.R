#Normalize function
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

data <- read.csv("/Users/ola/Desktop/Fall2019/UC-Berkeley/Practical ML (R)/TelecompanyChurn/churn.csv", header = TRUE)
#str(data)
data_chosen_col <- data.frame(data[c(18,3,6)], data[19:20]) #Getting the relevant columns
#or similar: data_chosen_col <- data.frame(data[18],data[3],data[6],data[19:20])

#data <- data[-1] removes col 1 or data <- data[c(-1,-2,-3)] removes 1, 2 og 3
#table(data$PaymentMethod) how many in the different categories

data_not_na <- na.omit(data_chosen_col) #remove rows with N/A
data_normalized <- as.data.frame(lapply(data_not_na[2:5], normalize)) #normalize data (lapply: applies function to all data given in the data structure in the right function)

data_train <- data_normalized[1:5500,] #around 75%
data_test <- data_normalized[5501:7032,]

data_train_labels <- data_not_na[1:5500, 1] #returns a vector: data_train_labels[1:10]
data_test_labels <- data_not_na[5501:7032, 1]

prediction <- knn(train = data_train, test = data_test, cl = data_train_labels, k = 75) #rule of thumb: k=sqrt(lenght(train_data))

CrossTable(x = data_test_labels, y = prediction, prop.chisq = FALSE)

#Conclusion: discard hypthesis at once