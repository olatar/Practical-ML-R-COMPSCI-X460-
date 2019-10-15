install.packages("dplyr")
library(dplyr)
library(ggplot2)

#Data of all city bike rides in Oslo, Norway, September 2019.
data <- read.csv('/Users/ola/Desktop/Fall2019/UC-Berkeley/Intro to Data Science (R)/Oslo_Oktober.csv',header = TRUE)

summary_each_station = as.data.frame(levels(factor(data$start_station_name)))
summary_each_station = as.data.frame %>% mutuate() 


#Filter out the rides that start and end at the same station
end_equal_start <- data %>% filter(start_station_id == end_station_id)
# or end_eq_start <- filter(data, start_station_id == end_station_id)

summary_end_equal_start <- as.data.frame(summary(end_equal_start$start_station_name))

# lag ny dataframe med en kolonne med plasser, en kolonne med antall returrunder, en kolonne med antall totalrunder

#delt på antall turer. See the amount of rides returned each station and amounts returned per total rides

summary_end_equal_start <-

ggplot(summary_end_equal_start) + geom_histogram()

