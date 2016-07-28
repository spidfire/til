# GGPLOT graphs

# Point graph
Plot from the dataset iris the

```
data("iris")
str(iris)
library(ggplot2)
ggplot()+
  geom_point(aes(
    x=iris$Sepal.Length,
    y=iris$Sepal.Width,
    color=iris$Petal.Length))

```