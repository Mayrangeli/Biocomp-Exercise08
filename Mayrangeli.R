#Excersise 8 Creting graph

#Setting WD
setwd(("/Users/mayra/OneDrive/Documents/BioComputing/Biocomp-Exercise08"))

#Part 1 Generating graph ussing score by score 
#Generate matrix of teams scores
teamscores<-read.table(file="UWvMSU_1-22-13.txt",sep = "",header = TRUE, stringsAsFactors = FALSE)

MSU<-matrix(nrow=(nrow(teamscores[teamscores$team=="MSU",])+1),ncol=2)
UW<-matrix(nrow=(nrow(teamscores[teamscores$team=="UW",])+1),ncol=2)

MSU[1,]<-0
UW[1,]<-0

#Creting loop for team scores 
MSUteam<-2
UWteam<-2
MSUscore<-0
USscore<-0

#and I start loop
for (s in 1:nrow(teamscores)) {
  if (teamscores$team[s]=="MSU") {
    MSU[MSUteam,1]<-teamscores$time[s]
    MSUscore<-MSUscore+score[s]
    MSU[MSUteam,2]<-MSUteam
    MSUteam<-MSUteam + 1
    
  }else{ UW[UWteam,1]<-teamscores$time[s] 
  UWscore<-UWscore+score[s]
  UW[UWteam,2]<-UWteam
  UWteam<-UWteam + 1
  }
  
}
#And I end loop

#Creating Plot
plot(MSU[,1],MSU[,2],type = '1')
lines(UW[,1],UW[,2])


#Questions 2 guess my number
#Creting vector
vector<-c(1:100)
mynumber<-sample(vactor,size = 1)

truenNum<-0

#And I start loop
for (n in 1:10) {
  guess<-readline(prompt = "Guess your number that is between 1 and 100:")
  if (guess==mynumber){print"Correct!"
    correct<-1
    
  }else if (guess>mynumber){print("Go lower")} 
  else if (guess<number){print("Go higher")
  }
  if (n==10&&correct==0)
  {print("Player is out of guesses")}
}
#END of loop




