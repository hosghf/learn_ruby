#write your code here
def add(x,y)
  x=x+y
  x
end

def subtract x,y
  x=x-y
  x
end

def sum arr
  l=arr.length
  i=0
  sum=0
    while i<l
      sum=sum+arr[i]
  	  i+=1
    end
  sum
end

def multiply x,y
  x=x*y
  x
end

def multiply x,y,z=1,a=1
  x=x*y*z*a
  x
end

def power x,y
  a=1
  (1..y).each do
  	a=a*x
  end
  a
end

def factorial x
  f=1
  if x==0
  	1
  else
  (1..x).each do |i|
  	f=f*i
  end
  f
end
end
