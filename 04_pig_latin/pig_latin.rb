#write your code here
def translate word
  l=word.length-1
  index=0
  s=''
  w=''
  n=''
  (0..l).each do |i|
    if word[i]==" "
      w=word[index..i-1]
      s=oneword w
      n=n+s+' '
      index=i+1
    elsif i==l
      w=word[index..i]
      s=oneword w
      n=n+s
    end
  end
  return n
end

def oneword word
  l=word.length-1
  str=''

  y=vowel(word[0])
  while(y==false) 
    if(word[0]=='q' and word[1]=='u')
      str=str+word[0..1].to_s
      word=word[2..l]
      y=vowel(word[0])
    else
      str=str+word[0].to_s
      word=word[1..l]
      y=vowel(word[0])
    end
  end
  word=word+str+'ay'
  word
end

def vowel(char)
  a=['a','e','i','o','u']
  x=false
  6.times do |n|
    if(char==a[n])
      x=true
      break
    else
      x=false
    end
  end  
  return x
end



