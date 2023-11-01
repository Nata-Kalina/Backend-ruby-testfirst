#write your code here

def translate(text)
    
    words = text.split(" ") 
    new_words = []
      
    def translate_word(word)
      
      if word.match(/^[aeiou]/i)
        "#{word}ay"
      else
          if word.match(/^(qu|sch)/i)
          phoneme = word.match(/^(qu|sch)/i)[0]
          rest_word = word[phoneme.length..-1]
          "#{rest_word}#{phoneme}ay"
        else
          consonants = ""
          while !word.match(/^[aeiou]/i) && word.length > 0
              if word.match(/^qu/i)
              consonants += word[0..1]
              word = word[2..-1]
            else
              consonants += word[0]
              word = word[1..-1]
            end
          end
          "#{word}#{consonants}ay"
        end
      end
    end
     
    words.each do |word|
      new_words << translate_word(word)
    end
      
    new_text = new_words.join(" ")  
    new_text
  end
  
  puts translate("apple")
  puts translate("banana")
  puts translate("cherry")
  puts translate("eat pie")
  puts translate("three")
  puts translate("school")
  puts translate("quiet")
  puts translate("square")
  puts translate("the quick brown fox")