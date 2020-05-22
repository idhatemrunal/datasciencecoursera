my_vector<-function(a=numeric())
{
  i<-NULL
  set<-function(b)
  {
    a<<-b
    i<<-NULL
    
  }
  get<-function() a
  setmean<-function(mean) i<<-mean
  getmean<-function() m
  list(set=set,get=get,setmean=setmean,getmean=getmean)
}



Mycache_mean<-function(a,...)
{
  i<-a$getmean()
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

