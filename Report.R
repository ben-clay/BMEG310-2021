
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

##Q4
count_ALT<-function(file){
  data<-read.csv(basename(file))
  ALT=data$ALT
  row=1
  A=0
  C=0
  T=0
  G=0
  for (val in data$INDEL){
    if(val==TRUE){
      x=strsplit(ALT[row],"")[[1]]
      for(char in x){
        if(char=="A"){
          A=A+1
        }
        if(char=="T"){
          T=T+1
        }
        if(char=="C"){
          C=C+1
        }
        if(char=="G"){
          G=G+1
        }
      }
     
    }
    row=row+1
  }
  sprintf("A:%s T:%s C:%s G:%s", A,T,C,G)
}

##Output: with input of file "VCFdata.csv"
##[1] "A:151 T:155 C:278 G:201"

### Q5: How many variants have more than two deletions? In essence, we need to look at the ALT field and see if the length of the characters in the ALT field is larger than the characters in the REF field (ie ALT > REF +2). 
myData <- read.csv("VCFdata.csv")
```{r}

IDEL <- which (myData[,9] == "TRUE")
count <- 0 
for(i in 1:length(IDEL)){
  ALT <- nchar(myData[(IDEL[i]), 6], type = "chars")
  REF <- nchar(myData[(IDEL[i]), 5], type = "chars")
  if(ALT > (REF + 2)){
    
  }
 count <- count + 1
}
show(count)

```

