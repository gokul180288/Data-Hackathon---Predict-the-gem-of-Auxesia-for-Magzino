for(j in seq_len(nrow(train)))
{
 if(j==1)
 {
   a=0
   b=0
   c=0
   d=0
   e=0
   LDA_00 = vector()
   LDA_01 = vector()
   LDA_02 = vector()
   LDA_03 = vector()
   LDA_04 = vector()
 }
   x = c(train$LDA_00[j],train$LDA_01[j],train$LDA_02[j],train$LDA_03[j],train$LDA_04[j])
   max = which.max(x)
 if(max==1)
 {
   a=a+1
   LDA_00[a] = j
 }
 if(max==2)
 {
   b=b+1
   LDA_01[b] = j
 }
 if(max==3)
 {
   c=c+1
   LDA_02[c] = j
 }
 if(max==4)
 {
   d=d+1
   LDA_03[d] = j
 }
 if(max==5)
 {
   e=e+1
   LDA_04[e] = j
 }
}

train$LDA = ifelse(train$LDA_03 > train$LDA_00 & train$LDA_01 & train$LDA_02 & train$LDA_04,1,0)

for(j in seq_len(nrow(test)))
{
  if(j==1)
  {
    a=0
    b=0
    c=0
    d=0
    e=0
    LDA_00 = vector()
    LDA_01 = vector()
    LDA_02 = vector()
    LDA_03 = vector()
    LDA_04 = vector()
  }
  x = c(train$LDA_00[j],train$LDA_01[j],train$LDA_02[j],train$LDA_03[j],train$LDA_04[j])
  max = which.max(x)
  if(max==1)
  {
    a=a+1
    LDA_00[a] = j
  }
  if(max==2)
  {
    b=b+1
    LDA_01[b] = j
  }
  if(max==3)
  {
    c=c+1
    LDA_02[c] = j
  }
  if(max==4)
  {
    d=d+1
    LDA_03[d] = j
  }
  if(max==5)
  {
    e=e+1
    LDA_04[e] = j
  }
}

test$LDA = ifelse(test$LDA_03 > test$LDA_00 & test$LDA_01 & test$LDA_02 & test$LDA_04,1,0)

#> sum(train$shares[LDA_00])/length(LDA_00)
#[1] 2996.37
#> sum(train$shares[LDA_01])/length(LDA_01)
#[1] 2171.529
#> sum(train$shares[LDA_02])/length(LDA_02)
#[1] 3367.756
#> sum(train$shares[LDA_03])/length(LDA_03)
#[1] 4949.44
#> sum(train$shares[LDA_04])/length(LDA_04)
#[1] 3189.968


