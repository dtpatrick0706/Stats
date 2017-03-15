sample(c("H","T"),1)
replicate(10,sample(c("H","T"),1))

coin = replicate(1000,sample(c("H","T"),1))
coin[coin=="H"]
length(coin[coin=="H"])/1000
