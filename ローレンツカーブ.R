

  xv <- 0:800/800;

  pdf ( file = "Rplots.pdf" )
  par(mai=c(1.0,1.0,0.5,0.5));

  vals<-scan('stdin');
  yv <- quantile(vals, xv, type=1) ;
  plot(xv ,yv,ylim=0:1,type="S",col="royalblue",xaxt="n",yaxt="n", xaxs="i",yaxs="i",cex.axis=1.5,las=2,xlab="",ylab="",lwd=3, log="");


  axis(1,0:4/4,paste(0:4*25,"%"),cex.axis=1.55);
  axis(2,0:4/4,paste(0:4*25,"%"),cex.axis=1.55, las=1);
  title( main = "", cex.main=2.1);

  gridmesh = function(x,y) {nx<-length(x);ny<-length(y);return( list(x=matrix(x,ny,nx,TRUE),y=matrix(y,ny,nx,FALSE)))}
  xt1 <- 0:4/4;
  xt2 <- 0:20/20;
  xt3 <- 0:100/100;

  yt1 <- 0:4/4;
  yt2 <- 0:20/20;
  yt3 <- 0:100/100;

  points( gridmesh( xt1, yt1) , pch=3, cex=3., lwd = 1 , col="gray0" ) ;
  points( gridmesh( xt2, yt2) , pch=3, cex=.6, lwd = 1 , col="gray50" ) ;
  points( gridmesh( xt3, yt3) , pch=3, cex=.1, lwd = 1 , col="gray70" ) ;


# sort -nr  lo000  | cumsum -/ 2> /dev/null | tgawk '{print $1}'  | R --slave -q --vanilla -f lc.rs