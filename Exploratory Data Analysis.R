rm(list=ls())

data <- read.csv("FRB_H8.csv")

assets.total <- as.numeric(data$Total.assets..all.commercial.banks..seasonally.adjusted..annual.growth.rate..break.adjusted.[6:nrow(data)])
liabilities.total <- as.numeric(data$Total.liabilities..all.commercial.banks..seasonally.adjusted..annual.growth.rate..break.adjusted.[6:nrow(data)])
assets.cash <- as.numeric(data$Cash.assets..all.commercial.banks..seasonally.adjusted..annual.growth.rate..break.adjusted.[6:nrow(data)])
loans.consumer <- as.numeric(data$Consumer.loans..all.commercial.banks..seasonally.adjusted..annual.growth.rate..break.adjusted.[6:nrow(data)])
borrowings <- as.numeric(data$Borrowings..all.commercial.banks..seasonally.adjusted..annual.growth.rate..break.adjusted.[6:nrow(data)])

hist(assets.total,breaks=10,main="Total Assets",xlab="Percent Change")
boxplot(assets.total,main="Total Assets",ylab="Percent Change")
summary(assets.total)

hist(liabilities.total,breaks=10,main="Total Liabilities",xlab="Percent Change")
boxplot(liabilities.total,main="Total Liabilities",ylab="Percent Change")
summary(liabilities.total)

hist(assets.cash,breaks=10,main="Cash Assets",xlab="Percent Change")
boxplot(assets.cash,main="Cash Assets",ylab="Percent Change")
summary(assets.cash)

hist(loans.consumer,breaks=10,main="Consumer Loans",xlab="Percent Change")
boxplot(loans.consumer,main="Consumer Loans",ylab="Percent Change")
summary(loans.consumer)

hist(borrowings,breaks=10,main="Borrowings",xlab="Percent Change")
boxplot(borrowings,main="Borrowings",ylab="Percent Change")
summary(borrowings)