#write your code here
def echo str
  str
end
def shout str
  str=str.upcase
  str
end

def repeat str,x=2
  str=str+" "
  str=str*x
  l=str.length
  str=str[0..l-2]
end

def start_of_word str,x
	word=str[0..x-1]
	word
end

def first_word sent
  l=sent.length
  i=0
  while i<l
  	if sent[i]==' '
      index=i
  	end
  	i+=1
  end
  word=sent[0..index-1]
  word
end

def titleize word 
  l=word.length
  l=l-1
  index=0
  a=""
  z=""
  w=""
  (0..l).each do |i|
  	if(word[i]==' ' or i>=l)
  	    z=word[index..i]
  	    if((z=="and " or z=="the " or z=="over ") and index!=0)
          a=a+z
          index=i+1
  	    else	
  	      a=a+z.capitalize
          index=i+1
        end
  	end
  end
  a
end











