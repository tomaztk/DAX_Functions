# Both on the same y-axis


plot(dataset[,3], type="l", col="red", lty=1, ylim=c(0,1000),
ylab = "Qty and Temp")
# Add second line
lines(dataset[,2], col="brown",lty=1)
legend("topleft", c("Temperature", "Quantity"),
col = c("red", "brown"), lty = c(1, 1))



# Separate y-Axis

par(mar = c(5, 5, 3, 5))
plot(dataset[, 2], type ="l", ylab = "Quantity",
main = "Quantity and temperature", xlab = "Date", col = "brown")
par(new = TRUE)
plot(dataset[,3], type = "l", xaxt = "n", yaxt = "n",
ylab = "", xlab = "", col = "red", lty = 1)
axis(side = 4)
mtext("temperature", side = 4, line = 3)
legend("topleft", c("Quantity", "Temperature"), col = c("brown", "red"),
lty = c(1, 1))