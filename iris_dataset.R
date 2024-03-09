# Importing the Iris data.
data(iris)

# Viewing the head of the Iris data.
head(iris)

#  Viewing the summary of the Iris data.
summary(iris)

# Importing the ggplot2 library.
library(ggplot2)

# Creating a box plot.
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) + geom_boxplot()

# Plotting the speal length and width.
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point()

# K-Means Clustering of the data.
set.seed(123)
clustering <- kmeans(iris[,1:2], centers = 3)
ggplot(iris, aes(Sepal.Length, Sepal.Width)) + geom_point(aes(color = as.factor(clustering$cluster)))