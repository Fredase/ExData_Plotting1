## Read the file
file <- "household_power_consumption.txt"
library(readr)
power <- read_csv2(file = file)
## subset the needed Date and time variable
power <- power[ 66638:69518, ]

## plotCopy plot to a PNG file saved as "plot1.png"

dev.copy(png, file = "plot1.png", width = 480, height = 480)

##  Create Histogram of "Global Active Power" 

hist(as.numeric(power$Global_active_power),
     col = "red", main = "Global Active Power",
     xlab = "Global Active Power(Kilowatts)")


## Close PNG file
dev.off()