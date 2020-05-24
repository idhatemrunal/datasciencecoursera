#this fuction calculate the values of the mean functions 
#set  value of the vectors
my_vector<-function(a=numeric())
{
  i<-NULL
  set<-function(b)
  {
    a<<-b
    i<<-NULL
    
  }
  get<-function() a #get the value of the vector
  setmean<-function(mean) i<<-mean  #set the mean value of the vector
  getmean<-function() m  #get the mean value of the vector
  list(set=set,get=get,setmean=setmean,getmean=getmean)
}


#The following function calculates the mean of the special “vector” created with the above function
# first checks to see if the mean has already been calculated
Mycache_mean<-function(a,...)
{
  i<-a$getmean()# it gets the mean from the cache and skips the computation
  if(is.null(i))
  {
    msg("getting cached data")
    return(i)
    
  }
  data<-a$get()
  i<-mean(data,...)
  a$setmean(i)
  i
}

