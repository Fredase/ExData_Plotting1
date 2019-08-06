file <- "household_power_consumption.txt"

## Read the power consumption data file
power <- read.table(file = file, stringsAsFactors = FALSE, header = TRUE, sep = ";", dec = ".")

## subset the needed Date and time variable
power <- power[ 66638:69518, ]

##Convert the 'Date' and 'Time' to the right format

dateTime <- strptime(paste(power$Date, power$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

sub1 <- as.numeric(power$Sub_metering_1)
sub2 <- as.numeric(power$Sub_metering_2)
sub3 <- as.numeric(power$Sub_metering_3)

#Create a png file to make the plot
dev.copy(png, file = "Plot2.png", width = 480, height = 480)

# Create the plot
plot(dateTime, sub1, type = "l", xlab = " ", ylab = "Energy sub metering")
lines(dateTime, sub2, type = "l", col = "red")
lines(dateTime, sub3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
 