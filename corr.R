corr <- function(directory="./specdata", threshold = 0){
        files <- as.character( list.files(directory))
        open_file <- paste(directory,files,sep = "/")
        not_na <- complete("specdata",1:332)
        req_ids <- not_na$id[not_na$nobs > threshold]
        j <- 1
        co_r <- c()
        for (i in req_ids) {
                opened <- read.csv( open_file[i])
                co_r[j] <- cor(opened$sulfate,opened$nitrate,use = "complete.obs")
                j <- j + 1
        }
        co_r
}