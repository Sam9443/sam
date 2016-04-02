complete <- function(directory="./specdata", id = 1:332){
        files <- as.character( list.files(directory))
        open_file <- paste(directory,files,sep = "/")
        not_na <- c()
        j <- 1
        for (i in id) {
                opened <- read.csv( open_file[i])
                not_na[j] <- sum(complete.cases(opened))
                j <- j + 1
        }
        data.frame(id = id, nobs = not_na)
}