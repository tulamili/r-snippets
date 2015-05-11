library(matlab)

for ( i in 1001:1100 )  {
	png( paste ("v",i,".png",sep=""),400,400)
	par(mai=rep(0,4))
	qqplot(0:1500/1500,runif(1000),xlim=0:1,ylim=0:1,type="s",lwd=3,xaxs="i",yaxs="i")
	abline(0,1)
	points(meshgrid(0:4/4,0:4/4) , pch=3,cex=3,col="gray70")
	points(meshgrid(0:20/20,0:20/20) , pch=3,cex=.7, col="gray70")
	points(meshgrid(0:100/100,0:100/100) , pch=3,cex=.1 , col="gray70")
	dev.off()
}

par(mai=c(1,1,1,1))
qqplot(0:300/300,a<-replicate( 1e6, max(abs(sort(runif(1000))-0:999/999)) )*10)

sum(a>0.51)
binom.test(1204,1e5)



## ここから実行結果

> sum(a>0.5)
[1] 11798
> sum(a>0.51)
[1] 9609
> binom.test(9609,1e6)

	Exact binomial test

data:  9609 and 1e+06
number of successes = 9609, number of trials = 1e+06, p-value < 2.2e-16
alternative hypothesis: true probability of success is not equal to 0.5
95 percent confidence interval:
 0.009418720 0.009802128
sample estimates:
probability of success 
              0.009609 

> 
> sum(a>0.6)
[1] 1289
> sum(a>0.7)
[1] 76
> max(a)
[1] 0.8689204
> 
