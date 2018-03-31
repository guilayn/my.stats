my.stats.lm.eqn.bydataxy = function(dataxy, xpos, ypos) {
  if(nrow(dataxy)>2){
    m <- lm(as.matrix(dataxy[,ypos])~as.matrix(dataxy[,xpos]),data=dataxy,na.action = na.exclude)
    ###ADJUST IF NEEDED
    aaa = format(coef(m)[1], digits = 2)
    bbb = format(coef(m)[2], digits = 2)
    R222 = format(summary(m)$r.squared, digits = 2)
    pvvv = signif(summary(m)$coef[2,4], 2)
    nnnn = nrow(m$model)
    eqqq = paste0("y=",bbb,"*x","+(",aaa,"). r2=",R222," ,p.value=",pvvv,". n=",nnnn)
  }
  else eqqq=paste0("n=",nrow(dataxy))
  return(eqqq)}
