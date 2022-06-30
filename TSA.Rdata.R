source("tsdiags.R")
x = scan("drywhitewine.txt")
x = ts(x, start = c(1980, 1), end = c(1994, 12), frequency = 12)

logx = log(x)
par(mfrow = c(3,2))
acf(logx, lag = 50, sub = "(a)(i)", main = "")
plot(logx, sub = "(a)(ii)")
d1logx = diff(logx)
acf(d1logx, lag = 50, sub = "(b)(i)", main = "")
plot(d1logx, sub = "(b)(ii)")
d12d1logx = diff(d1logx, lag=12)
acf(d12d1logx, lag = 50, sub = "(c)(i)", main = "")
plot(d12d1logx, sub = "(c)(ii)")

#2
par(mfrow = c(1,2))
acf(d12d1logx, lag = 50, main = "", sub = "(a)")
pacf(d12d1logx, lag = 50, main = "", sub = "(b)")

#3
fit = arima(logx, order = c(0,1,1), seasonal = list(order = c(0,1,1), period = 12))
fit$coef

#4
par(mfrow = c(1,1))
tsdiags(fit)

par(mfrow = c(1,1))
residfit = resid(fit)
qqnorm(residfit);qqline(residfit)
shapiro.test(residfit)

#5
recipx = 1/x
par(mfrow = c(3,2))
acf(recipx, lag = 50, sub = "(a)(i)", main = "")
plot(recipx, sub = "(a)(ii)")
d1recipx = diff(recipx)
acf(d1recipx, lag = 50, sub = "(b)(i)", main = "")
plot(d1recipx, sub = "(b)(ii)")
d12d1recipx = diff(d1recipx, lag=12)
acf(d12d1recipx, lag = 50, sub = "(c)(i)", main = "")
plot(d12d1recipx, sub = "(c)(ii)")

par(mfrow = c(1,2))
acf(d12d1recipx, lag = 50, sub = "(a)", main = "")
pacf(d12d1recipx, lag = 50, sub = "(b)", main = "")

fitrecip = arima(recipx, order = c(0,1,1), seasonal = list(order = c(0,1,1), period = 12))
fitrecip$coef

tsdiags(fitrecip)

par(mfrow = c(1,1))
residfitrecip = resid(fitrecip)
qqnorm(residfitrecip); qqline(residfitrecip)
shapiro.test(residfitrecip)

#6
fit$loglik
fitrecip$loglik
predrecip = predict(fitrecip, n.ahead = 7)
actual = c(2367, 3819, 4067, 4022, 3937, 4365, 4290)
cbind(1/predrecip$pred, 1/(predrecip$pred-1.96*predrecip$se), 1/(predrecip$pred+1.96*predrecip$se), actual, 1/predrecip$pred - actual)

