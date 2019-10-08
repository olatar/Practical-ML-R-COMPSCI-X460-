data <- read.csv("./baseballdata.csv", header = TRUE)

str(data)
summary(data)
head(data)

# Plot all Teams with batters under 20 years, y-axis year, x-axis age, color Team
age=26
BatAge_under_some_age = subset(data,BatAge < age)
ggplot(BatAge_under_some_age,aes(y=Year,x=BatAge,colour=Tm)) + geom_point() + ggtitle(sprintf('Teams with average bat age under %d years',age)) + theme(plot.title = element_text(hjust = 0.5))

# Plot Year x-axis and attendance Y-axis
team="Boston Red Sox"
data_red_sox <- data[grep(team, data$Tm), ]

ggplot(data_red_sox, aes(Year,value)) + geom_point(aes(y = W, col = "Wins")) + geom_point(aes(y = L, col = "Losses")) + ggtitle(sprintf('Matches over the years - %s',team)) + theme(plot.title = element_text(hjust = 0.5)) + ylab("Number of games")

#