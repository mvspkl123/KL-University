install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
install.packages("hrbrthemes")
library(hrbrthemes)
install.packages("tseries")
library(tseries)
install.packages("forecast")
library(forecast)
Data <- read.csv("C:/Users/M V S P K L/Desktop/coronadataset.csv")
head(Data)
df<-Data[2]
df
tsdata <- ts(df$X.Total.Confirmed.Cases.)
ts.plot(tsdata)
adf.test(tsdata)
tsdata1 <- diff(tsdata,differences = 2)
adf.test(tsdata1)
acf(tsdata1)
pacf(tsdata1)
fit1 <- arima(df$X.Total.Confirmed.Cases.,c(1,2,3))
fit1
forecast1 <- forecast(fit1,h=10)
forecast1
plot(forecast1)
fit2 <- auto.arima(df$X.Total.Confirmed.Cases.,seasonal = FALSE)
fit2
forecast2 <- forecast(fit2, h = 9)
forecast2
plot(forecast2)