# Data frame manipulation


# Create a frame

```r
a <- c(1,2,3,4)
b <- c("test","test22","test4","test1")
df <- data.frame(a,b)

```

# Add column

```r
df$c <- c(1,2,3,4)

```
# Remove column

```r
drops <- c("c","b")
# Blacklist
df.cols <- df[ , !(names(df) %in% drops)]

# OR whitelist

df.cols <- df[ , c("a")]


```

# Filter rows
```r
df.filtered <- df[df$a == 1,]
```

# Filter sum rows
```r
df$sum_col <- df$a + df$c
```

