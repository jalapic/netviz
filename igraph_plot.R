
library(igraph)
library(tidyverse)
source("mycircle.R")

el <- as.matrix(read_csv("el1.csv"))

net <- graph_from_edgelist(el)

net

V(net)

l <- layout_with_fr(net)

plot(net, 
     edge.arrow.size=.2,
     edge.width=3,
     edge.curved=0,
     vertex.shape="fcircle",
     vertex.color="#C4DAFF", 
     vertex.frame.color="#0902FA",
     vertex.label=V(net)$name, 
     vertex.label.color="black",
     vertex.label.cex=.9,
     vertex.frame.width=3,
     layout=l)




### low density

g1 <- igraph::erdos.renyi.game(n=20,p=.75)
g2 <- igraph::erdos.renyi.game(n=20,p=.25)

par(mfrow=c(1,2), mar=c(0,0,0,0))

plot(g1, 
     edge.arrow.size=.2,
     edge.width=1.5,
     edge.curved=0,
     vertex.shape="fcircle",
     vertex.color="#F0A3B8", 
     vertex.frame.color="#A70A35",
     vertex.label.color="black",
     vertex.label.cex=.9,
     vertex.frame.width=3,
     layout=layout_with_fr(g1))


plot(g2, 
     edge.arrow.size=.2,
     edge.width=1.5,
     edge.curved=0,
     vertex.shape="fcircle",
     vertex.color="#71F289", 
     vertex.frame.color="#066A18",
     vertex.label.color="black",
     vertex.label.cex=.9,
     vertex.frame.width=3,
     layout=layout_with_fr(g2))

