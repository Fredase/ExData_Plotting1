file <- "household_power_consumption.txt"

## Read the power consumption data file
power <- read.table(file = file, stringsAsFactors = FALSE, header = TRUE, sep = ";", dec = ".")

## subset the needed Date and time variable
power <- power[ 66638:69518, ]

##Convert the 'Date' and 'Time' to the right format

dateTime <- strptime(paste(power$Date, power$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

#Create a png file to make the plot
dev.copy(png, file = "Plot2.png", width = 480, height = 480)

##Make the plot
plot(dateTime, as.numeric(power$Global_active_power), type = "l",
      xlab = " ", ylab = "Global Active Power(Kilowatts)")

dev.off()