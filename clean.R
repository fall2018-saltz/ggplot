
df_fun <- function(states) {
  states<- states[c(-1,-53),-1:-4] 
  colnames(states)<- c("stateName", "population", "popOver18", "percentOver18") 
  return(states)
  }
 
dfStates<- df_fun(raw_data)
head(dfStates,2)

head(USArrests,2)

df_usa<- USArrests
df_usa<- cbind(df_usa, n= row.names(df_usa))
df_usa$n<- as.character(df_usa$n)
str(df_usa)
