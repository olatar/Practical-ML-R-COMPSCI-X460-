data <- read.csv('/Users/ola/Desktop/Fall2019/UC-Berkeley/Intro to Data Science (R)/Oslo_Oktober.csv',header = TRUE)
data %>% filter(start_station_id == end_station_id) 