setwd("/home/saul/Sync/erasmus_kiel/microbiology_project/dilution_plates/")

#lib
library("ggplot2")

pdf(file = "CFU_plot.pdf")

#import my data
df <- read.csv(file='/home/saul/Sync/erasmus_kiel/microbiology_project/dilution_plates/dilution_plates.csv')

#a plot with all my data
general_plot <- ggplot(data = df, aes(x = Day, y = CFUmL, group = interaction(Strain, Replicate, Medium)))+
	geom_line()
print(general_plot)

## import data
#CFU_data <- t(
#	      read.csv(
#		     file='/home/saul/Sync/erasmus_kiel/microbiology_project/dilution_plates/dilution_plates.csv', header=FALSE, row.names=1
#		     )
#	      )
#
## extract the days
#time <- CFU_data[,1]
#
## slice the data for replicates
#mSBW25LB <- CFU_data[,c(2,3,4)]
#mSBW25M9 <- CFU_data[,c(5,6,7)]
#mMG1655LB <- CFU_data[,c(8,9,10)]
#mMG1655M9 <- CFU_data[,c(11,12,13)]
#mREL606LB <- CFU_data[,c(14,15,16,17,18,19)]
#mREL606M9 <- CFU_data[,c(20,21,22,23,24,25)]
#
#
##LB
#plot(time, CFU_data[,2], main = "SBW25", log = "y", yaxt = "n", ylab = "CFU/mL", xlab = "Time (days)", ylim = c(1, 10^10), type = "o", col = "blue")
#lines(time, CFU_data[,3], type = "o", col = "blue")
#lines(time, CFU_data[,4], type = "o", col = "blue")
##M9
#lines(time, CFU_data[,5], type = "o", col = "red")
#lines(time, CFU_data[,6], type = "o", col = "red")
#lines(time, CFU_data[,7], type = "o", col = "red")
#legend(1, 95, legend=c("LB", "M9"),
#       col=c("blue", "red"), lty = c(1,1))
#
## SBW25
##LB
#plot(time, CFU_data[,2], main = "SBW25", log = "y", yaxt = "n", ylab = "CFU/mL", xlab = "Time (days)", ylim = c(1, 10^10), type = "o", col = "blue")
#lines(time, CFU_data[,3], type = "o", col = "blue")
#lines(time, CFU_data[,4], type = "o", col = "blue")
##M9
#lines(time, CFU_data[,5], type = "o", col = "red")
#lines(time, CFU_data[,6], type = "o", col = "red")
#lines(time, CFU_data[,7], type = "o", col = "red")
#legend(1, 95, legend=c("LB", "M9"),
#       col=c("blue", "red"), lty = c(1,1))
#
## MG1655
##LB
#plot(time, CFU_data[,8], main = "MG1655", log = "y", ylab = "CFU/mL", xlab = "Time (days)", ylim = c(1, 10^10), type = "o", col = "blue")
#lines(time, CFU_data[,9], type = "o", col = "blue")
#lines(time, CFU_data[,10], type = "o", col = "blue")
##M9
#lines(time, CFU_data[,11], type = "o", col = "red")
#lines(time, CFU_data[,12], type = "o", col = "red")
#lines(time, CFU_data[,13], type = "o", col = "red")
#legend(1, 95, legend=c("LB", "M9"),
#       col=c("blue", "red"), lty = c(1,1))
#
## REL606
##LB
#plot(time, CFU_data[,14], main = "REL606", log = "y", ylab = "CFU/mL", xlab = "Time (days)", ylim = c(1, 10^10), type = "o", col = "blue")
#lines(time, CFU_data[,15], type = "o", col = "blue")
#lines(time, CFU_data[,16], type = "o", col = "blue")
#lines(time, CFU_data[,17], type = "o", col = "blue")
#lines(time, CFU_data[,18], type = "o", col = "blue")
#lines(time, CFU_data[,19], type = "o", col = "blue")
##M9
#lines(time, CFU_data[,20], type = "o", col = "red")
#lines(time, CFU_data[,21], type = "o", col = "red")
#lines(time, CFU_data[,22], type = "o", col = "red")
#lines(time, CFU_data[,23], type = "o", col = "red")
#lines(time, CFU_data[,24], type = "o", col = "red")
#lines(time, CFU_data[,25], type = "o", col = "red")
#legend(1, 95, legend=c("LB", "M9"),
#       col=c("blue", "red"), lty = c(1,1))
dev.off()
