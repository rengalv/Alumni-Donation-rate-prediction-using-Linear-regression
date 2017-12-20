######### ASSIGNMENT 5 #############


library(readxl)
alumni.data<-read_excel("D:/BANA_Renga/Coursework/Applied_LinearRegression/HW/alumni.xls")
head(alumni.data)

#colnames(alumni.data)

#summary(alumni.data$Pct_of_Classes_Under_20)
#summary(alumni.data$Student_Faculty_Ratio)
#table(alumni.data$Private)

## Summary Stats for the parameters
summary(alumni.data)

## To Check for the Normality of Y
hist(alumni.data$Alumni_Giving_Rate, main="Distribution of Alumni giving rate", xlab = "Giving rate (%)")
boxplot(alumni.data$Alumni_Giving_Rate~alumni.data$Private, main = "Distribution of Giving rate with respect to Type 
        of institution", xlab = "Type of Institution(Public or Private)")

#abline(dnorm(70,mean=30, sd = 10))

## Box plot: Checking for the outliers in the Predictor Variable
boxplot(alumni.data$Pct_of_Classes_Under_20,main="Finding outliers in Pct_of_Classes_Under_20")
boxplot(alumni.data$Student_Faculty_Ratio,main="Finding outliers in Student_Faculty_Ratio")


## Scatter plots to find relationship between X's and Y

par(mfrow=c(1,2))
plot(alumni.data$Alumni_Giving_Rate~alumni.data$Pct_of_Classes_Under_20, main = "Alumni Giving Rate Vs % of Classes Under 20 students"
     , xlab = "% of Classes Under 20 students", ylab = "Alumni Giving Rate (%)" )
plot(alumni.data$Alumni_Giving_Rate~alumni.data$Student_Faculty_Ratio, main = "Alumni Giving Rate Vs Student/Faculty Ratio"
     , xlab = "Ratio", ylab = "Alumni Giving Rate (%)" )


cor(alumni.data$Alumni_Giving_Rate,alumni.data$Pct_of_Classes_Under_20)
# [1] 0.6456504

cor(alumni.data$Alumni_Giving_Rate,alumni.data$Student_Faculty_Ratio)
# [1] -0.7423975

std_cls20 <- (alumni.data$Pct_of_Classes_Under_20)- mean(alumni.data$Pct_of_Classes_Under_20)
std_cls20
cor(alumni.data$Pct_of_Classes_Under_20,alumni.data$Student_Faculty_Ratio)
cor(std_cls20,alumni.data$Student_Faculty_Ratio)

cls20<-alumni.data$Pct_of_Classes_Under_20
ratio<- alumni.data$Student_Faculty_Ratio
Pri <- alumni.data$Private
Pri_1 <- 1*(alumni.data$Private == 1)

gRate<-alumni.data$Alumni_Giving_Rate
m1<- lm(gRate~ratio+ Pri + ratio*Pri)
      
summary(m1)
