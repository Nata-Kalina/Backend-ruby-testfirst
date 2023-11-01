class Book
# write your code here
    attr_accessor :title

    def title=(new_title)
        little_words = ["a","an","and","the","in","of"]
        words = new_title.split(" ")
        words.first.capitalize!
        words[1..-1].each do |word|
            word.capitalize! unless little_words.include?(word.downcase)
        end

        @title = words.join(" ")
    end

end

book = Book.new
book.title = "inferno"
puts book.title
book.title = "stuart little"
puts book.title
book.title = "alexander the great"
puts book.title
book.title = "to kill a mockingbird"
puts book.title
book.title = "to eat an apple a day"
puts book.title