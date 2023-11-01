#write your code here

def echo(word)
    word
end

def shout(word)
    word.to_s.upcase
end 

def repeat(word, times = 2)
   new_word = (word + " ") * times
   new_word.to_s.rstrip()
end

def start_of_word(word, number)
    word[0, number]
end

def first_word(sentence)
    sentence.split(" ").first
end

def titleize(sentence)
    little_words = %w[and the over]
    words = sentence.split(" ")
    words.first.capitalize!
    words[1..-1].each do |word|
        word.capitalize! unless little_words.include?(word.downcase)
    end
    words.join(" ")
end

puts echo("hello")
puts echo("bye")
puts shout("hello")
puts shout("hello world")
puts repeat("hello")
puts repeat("hello",3)
puts start_of_word("hello", 1)
puts start_of_word("Nata", 2)
puts start_of_word("qwerty", 3)
puts first_word("hello world!")
puts titleize("nata")
puts titleize("natasha kalinicheva")
puts titleize("the bridge over the river kwai")