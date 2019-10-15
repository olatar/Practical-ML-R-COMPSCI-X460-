library(mosaic)
head(Galton)

#1. Create a scatterplot of each person's height against their father's height

plot31_1 <- ggplot(Galton,aes(x = Galton$father, y = Galton$height)) + geom_point()
plot31_1 <- plot31_1 + xlab("Father height") + ylab("Child height")
plot(plot31_1)

#2. Separate your plot into facets by sex

plot31_2 <- plot31_1 + facet_wrap(Galton$sex,nrow=1,ncol=2)
plot31_2

#3. Add regression lines to all of your facets

plot31_3 <- plot31_2 + geom_smooth(method = "auto", size=1.5)
plot31_3