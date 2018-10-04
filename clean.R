
df_fun <- function(states) {
  states<- states[c(-1,-53),-1:-4] 
  colnames(states)<- c("stateName", "population", "popOver18", "percentOver18") 
  return(states)
  }
 
dfStates<- df_fun(raw_data)
head(dfStates,2)

head(USArrests,2)

