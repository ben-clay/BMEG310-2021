
##Q1
data<-read.csv("VCFdata.csv")

n=0
for (val in data$INDEL){
  if (val==TRUE)
    n=n+1
}
n
##Output:
##[1] 7
## There are 101 InDel variants in this VCF File

##Q2
data<-read.csv("VCFdata.csv")
row=1
n=0
row_position=list()

for(val in data$INDEL){
  
  if(data[row,9]==TRUE&data[row,12]>15){
    n=n+1
    row_position[n]<-row
  }
  row=row+1
  
}
n

row_position

##Output:
##[[1]]
##[1] 79
##
##[[2]]
##[1] 120
##
##[[3]]
##[1] 318
##
##[[4]]
##[1] 361
##
##[[5]]
##[1] 370
##
##[[6]]
##[1] 724
##
##[[7]]
##[1] 762

##On row 79, 120,318,361,370,724 and 762 these InDels have a read deoth greater than 15.

