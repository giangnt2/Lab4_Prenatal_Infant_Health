race = c(rep("white",3),rep("black",3),rep("other",3))
race = factor(race) 
race = sample(race,15,replace=T)
rrace
wage = rnorm(15)
wage
data=data.frame(list(race=race,wage=wage))
data
model = lm(wage~race, data=data)
summary(model)

data$rrace_releveled = relevel(race,"white")
model = lm(wage~race_releveled, data=data)
model

