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