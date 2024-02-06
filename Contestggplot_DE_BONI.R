data("USArrests")
Meurtre<-USArrests$Murder
Aggression<-USArrests$Assault
Viol<-USArrests$Rape

library(ggplot2)
names(USArrests)
par(mfrow=c(1,1))
plot(x=USArrests[,1], y=USArrests[,2], main="meurtres en fonction des aggressions", xlab=names(USArrests)[1],
     pch=66, col="darkblue")
abline(v=mean(USArrests[,1]), lty=7)

ggplot(data=USArrests, aes(x=USArrests[,2], y=USArrests[,1])) +
  geom_point(size=21)+
  geom_point(aes(color = USArrests[,1]))+
  scale_color_gradientn(colours = rainbow(5))+
  geom_vline(xintercept=50)+
  geom_vline(xintercept=1)+
  geom_vline(xintercept=25)+
  geom_vline(xintercept=75)+
  geom_vline(xintercept=100)+
  geom_vline(xintercept=500)+
  geom_hline(yintercept=1)+
  geom_hline(yintercept=3)+
  geom_hline(yintercept=5)+
  geom_hline(yintercept=10)+
  geom_hline(yintercept=16)+
  geom_hline(yintercept=40)+
  geom_hline(yintercept=-10)+
  geom_boxplot()+geom_smooth(method=lm) +
  geom_line()+
  geom_text(x=350, y=30, label="LE GRAPHIQUE TROP BEAU",size=6)+
  geom_text(x=350, y=1, label="Wouah",size=10)
  

ggplot(USArrests, mapping=aes(x=USArrests$Murder, y=USArrests$Assault))+geom_boxplot()
crop

boxplot(USArrests)