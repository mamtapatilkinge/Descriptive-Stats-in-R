var1<-5

#vector
vect<-c(1,2,3)

vect2<-c("a",1,2)

#Data frame
df<-data.frame(a=1:3,b=c("a","b","c"))

print(vect[2])


print(vect2[c(1,3)])


vect<-c(1,9,5,4,3,5)

print(vect[c(1,3,6)])
df1<-data.frame(a=1:3,b=c(1,5,"a"),c=c(1,5,4))

#df [rows,column]
print(df1[c(1,3),c(1,3)])


df2<-df1[c(1,3),c(1,3)]

#slicing

print(var[1])

print(vect2[c(1,3)])

#df[row,column]
print(df[c(1,2,3),1])

#in class exercise
df<-data.frame(x=1:3,y=c("a","b","c"))
print(df[1,1])

print(df[1,1:2])

print(df[c(1,3),2])

print(df[c(1,3),1])

print(df[c(1,3),c(1,2)])