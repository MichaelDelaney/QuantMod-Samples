# Install quantmod if required
if (!require("quantmod")) {
  install.packages("quantmod")
  library(quantmod)
}

# Q3 of 2018
start <- as.Date("2018-06-30")
end <- as.Date("2018-09-30")

# Example - Pull Yahoo Finance data for GoPro
getSymbols("GPRO", src = "yahoo", from = start, to = end)

# Plot Q3 Close Prices
class(GPRO)
head(GPRO)
plot(GPRO[, "GPRO.Close"], main = "GPRO")