# step11-lm-local-predict.R

# Load pre-trained model
model <- readRDS(file = "lm.rds")

#' Predict sales using API
#' @param spend how much is monthly spend
#' @param month current month
#' @get /predict
function(spend = 0, month = 1) {
  inputData <- data.frame(
    spend = c(as.numeric(spend)), # Note: numeric conversion
    month = c(as.numeric(month))
  )
  predict(model, inputData)
}


