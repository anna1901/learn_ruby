class Book
  attr_reader :title

  def title= (title)
    @title = titleize(title)
  end

  def titleize(text)
    words = text.split
    arr = ["of", "and", "over", "by", "in", "on", "the", "a", "an"]
    words.each {|word| word.capitalize! unless arr.include?(word) }
    words[0].capitalize!
    words.join(" ")
  end
end
