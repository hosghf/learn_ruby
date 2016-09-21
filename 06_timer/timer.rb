class Timer
  #write your code here
  def initialize
  	@seconds=0	
  end

  def seconds=(sec)
    @seconds=sec
  end

  def time_string
  
    h=@seconds/3600    
    @seconds=@seconds%3600
    m=@seconds/60
    @seconds=@seconds%60
    s=@seconds

    secstr=padded(s)
    minstr=padded(m)
    hstr=padded(h)

    x=hstr+":"+minstr+":"+secstr
  end 

  def padded(x)
  	str=''
    if x>9
  	  str=x.to_s
  	elsif x<10
  	  str='0'+x.to_s
  	end
  	str
  end

  def seconds
  	@seconds
  end
end

a=Timer.new
puts a.seconds=5000
puts a.time_string
puts a.seconds

