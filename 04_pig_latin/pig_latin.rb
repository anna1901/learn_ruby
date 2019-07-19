def translate (text)
  text = text.split
  vowels = %w[a e i o u y]
  consonantSoundsofTwo = %w[ch gh ph qu sc sh th wh kn ps wr br]
  consonantSoundsofThree = %w[squ sch thr]
  textPigLatin = text.map do |word|
    if vowels.include?(word[0])
      word + "ay"
    elsif consonantSoundsofThree.include?(word[0..2])
      a = word[0..2]
      word[3..word.length] + a + "ay"
    elsif consonantSoundsofTwo.include?(word[0..1])
      a = word[0..1]
      word[2..word.length] + a + "ay"
    else
      a = word[0]
      word[1..word.length] + a + "ay"
    end
  end
  textPigLatin.join(" ")
end
