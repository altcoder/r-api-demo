# step11-lm-local-train.R

# Train the model
trainData <- read.csv("data-marketing-budget-12mo.csv", header = T, colClasses = c("numeric", "numeric", "numeric"))
model <- lm(sales ~ spend + month, data = trainData)

# Save model as RDS file for use in inference step
saveRDS(model, file = "lm.rds")
