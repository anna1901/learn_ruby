def echo (sentense)
  sentense
end

def shout (sentense)
  sentense.upcase
end

def repeat (sentense, times = 2)
  (sentense + " ") * (times-1) + sentense
end

def start_of_word (word, n)
  word[0..n-1]
end

def first_word(sentense)
  sentense.split[0]
end

def titleize(text)
  words = text.split
  arr = ["of", "and", "over", "by", "in", "on", "the"]
  words.each {|word| word.capitalize! unless arr.include?(word) }
  words[0].capitalize!
  words.join(" ")
end
