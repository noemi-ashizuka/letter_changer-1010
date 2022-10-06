ALPHABET = ('A'..'Z').to_a

def encrypt(text)
  # create the alphabet
  # split the text of the string into letters() -> array
  # iterate over the letters (map)
  # find each letter's index within the alphabet
  # change the index back -3
  # ask the alphabet array for that letter using the new index
  # join the array
  # handle the special characters
  text.upcase.chars.map do |char|
    index = ALPHABET.index(char)
    index ? ALPHABET[index - 3] : char
  end.join 
end

# p encrypt('THE QUICK BROWN, FOX JUMPS OVER THE LAZY DOG')
# => "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
