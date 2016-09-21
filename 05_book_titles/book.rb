class Book
# write your code here

  def title=(title)
  	index=0
  	l=title.length-1
    s=''
    n=''
  	(0..l).each do |i|
      if (title[i]==' ' or i==l)
        n=title[index..i]
        if(except1(n)==true and index!=0)
          s=s+n	
          index=i+1
        else
          s=s+n.capitalize
          index=i+1
        end
      end
    end
    @title=s 
  end

  def except1(word)
  	y=true
    exArr=['or ','in ','of ','the ','a ','and ','an ']

    exArr.each do |x|
      if word== x
        y=true
        break
      else
      	y=false
      end
    end
    y
  end

  def title
    @title
  end
  
end

