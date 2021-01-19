########################
### Creating random data
########################
set.seed(2908)

df <- data.frame(time = seq(1,1000, by=1),
                 value = sample(1:34, size=1000, replace=TRUE),
                 valueA = sample(1:100, size=1000, replace=TRUE),
                 valueB = sample(1:100, size=1000, replace=TRUE),
                 city = sample(LETTERS[1:4], size=1000, replace=TRUE), 
                 dist = runif(1000),
                 Date = sample(seq(as.Date('2016/01/01'), as.Date('2021/01/01'), by="day"), 1000)
                 )




########################
### ggplot scatter plot
### Plotly
#######################

library(plotly)
library(ggplot2)

p <- ggplot(df, aes(valueA, valueB)) + geom_point()
p

fig <- ggplotly(p)
fig
