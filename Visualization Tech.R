#airquality<-read.csv('path/airquality.csv',header=TRUE,sep",")


airquality<- datasets::airquality

####top 10 rows amd last 10 rows
head(airquality,10)
tail(airquality,10)

######columns
airquality[50:60,c(1,2)]

df<-airquality[,-6]

#Descriptive statistics
#1
summary(airquality[,c(4,5)])    #generate for coiumn 2,3

airquality$Temp
airquality$Wind
airquality$Ozone

airquality$Solar.R

#1
summary(airquality$Wind)
summary(airquality$Month)

#ozone
summary(airquality$Ozone)

######Summary of the data######

summary(airquality)
summary(airquality$Wind)

###############################
#visulation
##scatter plot
plot(airquality$Wind)

plot(airquality$Temp,airquality$Ozone,type="l")

plot(airquality)    #scatter matrix

#points and lines
plot(airquality$Wind,type="l")#p: point l: lines,b:both

plot(airquality$Wind, type="b")
plot(airquality$Wind, xlab= 'Ozone concentraction',
        ylab= 'No of Instances',main='Ozone levels in NY city',
        col='blue',type='l')

#Horizontal bar plot
barplot(airquality$Ozone,main='Ozone Conceteration in air',
        ylab='ozone levels',col = 'blue',horiz = F,axes = T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'solar Radiation values in air',
     xlab = 'solar rad',col='blue')

#single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out

boxplot.stats(airquality$Ozone,main='Boxplot')$out

#multiple box plots

boxplot(airquality[,1:4],main='Multiple')


-------------------------------------------------
#margin of the grid(mar),
  #no of rows and columns(mfrow),
#whether a border is to be included(bty)
  #and positions of the
  #lables(las:1 for horizontal,las 0 for vertical)
  #bty-box around the plot
  
par(mfrow=c(3,3),mar=c(2,5,2,1),   las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
barplot(airquality$Ozone, main = 'ozone Concenteration in air',
        xlab = 'ozone levels', col = 'green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')