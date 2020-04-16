class Book
  # write your code here

  def title
    @title
  end

  def title=title_str
    @title = title_str

    if is_there_space?
      new_str = ""
      split_words = @title.split(" ") #array made

      split_words.each do |word|
        word.to_s

        if word == "i"
          new_str += word.capitalize! + " " #capitalize 'I'

        elsif word == "and" or word  == "a" or word == "an" or word == "in" or word == "the" or word == "of"
          new_str += word + " "

        else
          new_str += word.capitalize + " "
        end
      end

      @title = new_str[0].capitalize.to_s + new_str.slice(1, new_str.length).to_s
      @title.strip!

    else # just one word capitalize
      @title.capitalize!

    end
  end

  def is_there_space?
    @title.include?(" ")
  end

end

@book = Book.new
# @book.title = "the man in the iron mask"
# @book.title = "stuart little"
@book.title = "what i wish i knew when i was 20"
@book.title = "love in the time of cholera"
# @book.title = "to eat an apple a day"



p @book.title
