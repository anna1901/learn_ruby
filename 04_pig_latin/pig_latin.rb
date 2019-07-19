def translate (text)
  text = text.split
  vowels = %w[a e i o u y]

  textPigLatin = text.map do |word|
    if vowels.include?(word[0])
      word + "ay"
    else
      i = 1
      until vowels.include?(word[i])
        i+=1
      end
      if word[i-1..i] == "qu"
        word[i+1..word.length] + word[0..i] + "ay"
      else
        word[i..word.length] + word[0..i-1] + "ay"
      end
    end
  end
  textPigLatin.join(" ")
end
