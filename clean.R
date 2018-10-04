
dfStates<- function(states) {
  states<- states[c(-1,-53),-1:-4] 
  colnames(states)<- c("stateName", "population", "popOver18", "percentOver18") 

