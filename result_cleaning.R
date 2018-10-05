data = read.csv("result_with_masking_v15.csv",header = FALSE)

result = data$V1

submit = vector()

for(i in seq(1,29404))
{
  if(result[i] < 0.5)
  {
    submit[i] = "not_happy"
  }
  if(result[i] > 0.5)
  {
    submit[i] = "happy"
  }
}

write.csv(x = submit,file = "masking_result_v15.csv")
