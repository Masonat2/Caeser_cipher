


def caeser_cipher(string, shift)
  alpha_upper = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  alpha_lower = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  sentence=string.split("")
  new_sentence=[]
  sentence.each do |letter|
  if alpha_upper.include?(letter)
    index=alpha_upper.index(letter)
     place=index+shift
     until place<26
       place-=26
     end
     new_sentence.push(alpha_upper[place])
  elsif alpha_lower.include?(letter)
     index=alpha_lower.index(letter)
      place=index+shift
      until place<26
        place-=26
      end
      new_sentence.push(alpha_lower[place])
  else
      new_sentence.push(letter)
  end
end

return new_sentence.join

end


puts caeser_cipher("this is my String", 1)
