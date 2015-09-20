# import required fibonacci function
source("fibseq.R")

goldenRatio = (1 + sqrt(5))/2    # roughly 1.618
kmMiles = 1.609344    # kilometres in one mile

fibs = fibseq(50)
fibRatios = c()
for (i in 2:length(fibs)) {
  fibRatios = append(fibRatios, fibs[i]/fibs[i-1])
}

plot(fibRatios)
abline(h=goldenRatio)
# Notice ratio very quickly tends to golden ratio
# Identical to 6 decimal places at 17th fib number
# Asymptotically approaching forever
goldenDiff = abs(fibRatios-goldenRatio)
milesDiff = abs(fibRatios-kmMiles)

plot(goldenDiff, xlab="Fibonacci number", ylab="Absolute Difference", 
     main="Difference between Fibonacci ratio and Golden Ratio")

plot(milesDiff, xlab="Fibonacci number", ylab="Absolute Difference", 
     main="Difference between Fibonacci ratio and Miles/KM ratio")

# save an image
png(filename="goldenRatioChart.png")
plot(goldenDiff, xlab="Fibonacci number", ylab="Absolute Difference", 
     main="Difference between Fibonacci ratio and Golden Ratio")
dev.off()