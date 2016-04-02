my_mean <- c()

pollutantmean <- function(directory="./specdata", pollutant, id = 1:332){
        files <- as.character( list.files(directory))
        open_file <- paste(directory,files,sep = "/")
        for (i in id) {
                opened <- read.csv( open_file[i])
                filtered <- opened[!is.na(opened[,pollutant]),pollutant]
                my_mean <- c(my_mean,filtered)
        }
        round(mean(my_mean),3)
}