# main.R
args <- commandArgs(trailingOnly=T)

# Test if there is at least one argument: if not, return an error
if (length(args) == 0) {
  stop("Mode not specified either 'train' or 'serve'", call. = FALSE)
  
} else if (length(args) > 1) {
  stop("Too many arguments supplied", call. = FALSE)
  
} else if (args[1] == 'train') {
  source("train.R")
  train()
  
} else if  (args[1] == 'serve') {
  pr <- plumber::plumb("predict.R")
  pr$run(host="0.0.0.0", port=8080) # SageMaker expects port 8080, although you can control this via docker too
  
} else {
  stop(paste0("Unknown mode ",args[1]," use either 'train' or 'serve'"), call. = FALSE)
}