There are mutiple ways in R (just like always)

Write in parts:

```R
sink("outfile.txt") # This will start writing to a file
cat("test1 \n") # contents (note you will need to be explicit with newlines)
cat("test2 \n")

sink() # stop writing to file
```
