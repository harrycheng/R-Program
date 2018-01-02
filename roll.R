library("ggplot2")
roll<-function(dice=1:6){
    dic <- sample(dice, 2, replace = TRUE, prob=c(1/8,1/8,1/8,1/8,1/8,4/8))
    sum(dic)
}
res <- replicate(10000,roll())
qplot(res,binwidth=1)




