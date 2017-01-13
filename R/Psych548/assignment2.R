#Assignment 2 for Psych 548, Winter 2017


#Problem 1
p1.1 = c(9,8,1,9,5) #create a vector containing the numbers 9, 8 ,1 9, and 5

p1.2 = 2*p1.1 #multiple each element of the vector by 2

p1.3 = sqrt(p1.1) #find the square root of each element of the vector


#Problem 2
#create matrices m1 and m2 (given in assignment)
m1 = matrix( 1:12, ncol = 3 )
m2 = matrix( 1:12, ncol = 3, byrow = TRUE )

#create matrices m3 and m4 (described in assignment)
m3 = matrix( 11:16, ncol = 2)
m4 = matrix( 11:16, ncol = 2, byrow = TRUE)


#Problem 3
#create vectors x1, x2, x3, s1, and s2 (given in assignment)
x1 = c(1,3,5,7)
x2 = 1:4
x3 = (1:4)+3
s1 = c("Bob","Joe","Tom","Sol")
s2 = c("Lin","Aki","Kyu","Kim")

#bind vectors x1,x2,x3 and s1,s2 together as columns for matrices
mx1 = cbind(x1,x2,x3)
ms1 = cbind(s1,s2)

#bind vectors x1,x2,x3 and s1,s2 together as rows for matrices
mx2 = rbind(x1,x2,x3)
ms2 = rbind(s1,s2)

#this will fail because it attempts to put data of two different types into the same matrix
#well, not fail, but x1 has been forced into string type
odd1 = cbind(x1,s1)


#Problem 4
#define rudimentary Bayesian Inference function

bayinf = function(
  priors,  #vector of n probabilities that represent the probablities of n hypotheses
  likelihoods ) #vector of n likelihoods of the data D given hypothesis Hn
  
  {
  
    #calculate the probability of the data (our denominator in Bayes' Rule)
    pD2 = sum(priors*likelihoods)
  
    #calculate the posterior (i.e apply Bayes' Rule)
    p.post = priors*likelihoods/pD2
  
    return(p.post)
  
  }

#test the newly created funtion
priors = c(0.2,0.3,0.4,0.1)
likelihoods = c(0.8,0.8,0.3,0.2)
test = bayinf(priors,likelihoods) #it works!


#Problem 5
#use the new BI function to solve some problems

rm(priors,likelihoods) #remove previous priors and likelihoods

#Problem 5i
#set up some givens
p.sick = 0.33
p.nsick = 1-p.sick

p.Tplus..sick = 0.65
p.Tplus..nsick = 0.08

p.Tneg..sick = 1-p.Tplus..sick
p.Tneg..nsick = 1-p.Tplus..nsick  
  
priors = c(p.sick,p.nsick)
likelihoods = c(p.Tneg..sick,p.Tneg..nsick)

sick = bayinf(priors,likelihoods)

#P(sick | neg result) == sick[1] = 0.158
sick[1]

#Problem 5ii
odds = sick[1]/sick[2]
odds  #odds==0.187


