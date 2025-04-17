library(ggplot2)
library(ggrepel)
library(dplyr)
library(socviz)

#size continuous
ggplot(mpg,aes(displ,hwy,color=class,size = cyl))+
  geom_point()

ggplot(mpg,aes(displ,hwy,color=class,size = cyl))+
  geom_point()+scale_size_continuous(range=c(0.5,3))

ggplot(mpg,aes(displ,hwy,color=class,size = cyl))+
  geom_point()+scale_size_binned(range = c(0.5,3),breaks = c(4,6,8))

ggplot(mpg,aes(displ,cty,size = displ))+geom_point(alpha = 0.4)+
  scale_size_binned(range=c(0,5),breaks = c(5))

#size discrete
ggplot(mpg,aes(displ,hwy,color=class,size = drv))+geom_point(alpha=0.5)+
  scale_size_discrete(range(1,3))

ggplot(mpg,aes(displ,hwy,color=class,size = drv))+geom_point(alpha=0.5)+
  scale_size_manual(values=c(1,1,10))

ggplot(mpg,aes(displ,hwy,color=class,size = class))+geom_point(alpha=0.5)+
  scale_size_manual(values = c(1,3,1,1,1,3,1))

#color categorical
ggplot(mpg,aes(displ,hwy,color=class))+geom_point()+
  scale_color_brewer(palette = "PiYG")

ggplot(mpg,aes(displ,hwy,color=class))+geom_point()+
  scale_color_viridis_d(option = "plasma")

ggplot(mpg,aes(displ,hwy,color=class))+geom_point()+
  scale_color_manual(values = c("red","black","black","black","black","black","black"))

ggplot(iris,aes(Sepal.Length,Sepal.Width,color=Species,shape = Species))+
  geom_point()+scale_color_brewer(palette = "Set2") 

#color continuous
ggplot(mpg,aes(displ,hwy,color=cyl,shape = drv))+geom_point(alpha=0.5)+
  scale_color_viridis_c(option = "plasma")
  
ggplot(mpg,aes(displ,hwy,color=cyl,shape = drv))+geom_point(alpha=0.5)+
  scale_color_gradient(low = "brown",high = "pink")

ggplot(iris,aes(Sepal.Length,Sepal.Width,colour = Petal.Length))+geom_point()+
  scale_color_viridis_c(option = "rocket")

#xy continuous
ggplot(mpg,aes(displ,hwy))+geom_point(alpha=0.5)+
  scale_x_continuous(limits = c(0,10),breaks = c(0,5,10))+
  scale_y_continuous(limits = c(0,50),breaks = c(0,20,50))

#xy categorical
ggplot(mpg,aes(drv))+geom_bar()+
  scale_x_discrete(limits=c("4","r","f"),label=c("reverse-drive","forward drive","4-wheeeeeeeeel drive"))









