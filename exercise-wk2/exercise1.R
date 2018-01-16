## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# because the function sum doesn't take in character

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# the function that finds the length of a string is nchar()

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# becasue the variable initial wasn't initiated anywhere in the previous code


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
hello <- c(1,2)
typeof(hello)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(first.vector, last.vector) {
  diff <- abs(length(first.vector)-length(last.vector))
  return(paste("The difference in lengths is", diff))
}

# Pass two vectors of different length to your `CompareLength` function
bye <- c(1)
CompareLength(hello, bye)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(first.vector, last.vector) {
  diff <- length(first.vector)-length(last.vector)

  if (diff>0) {
    text <- paste0("Your first vector is longer by", diff, "elements")
  } else {
    text <- paste0("Your second vector is longer by", abs(diff), "elements")
  }
  
  return (text)
}
  

# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

CapsTime <- function(courses) {
  courses <- gsub("[0-9]","",courses)
}
