# Write a function that takes a message and an increment amount.
# Output the same letters shifted by that amount in the alphabet.
# Assume lowercase and no punctuation.
# Preserve spaces.
def caesar_cipher(string, shift)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

p caesar_cipher("testing hi", 1).join

# def caesar_cypher(string, shift)
# num_string = string.chars.map(&:ord) #changes number into array of the numbers [104, 105, 32, 104, 105, 32]
# encrypted_num = num_string.map {|c| c + shift} #shifts the numbers according to the argument passed [115, 116, 43, 115, 116, 43]
# encrypted_let = encrypted_num.map {|c| c.chr}.join #change into letters and join  "st+st+"
# p encrypted_let
#   if encrypted_let.include? '[^a-zA-Z]'
#     encrypted_let.gsub!('[^a-zA-Z]', ' ')
#   else
#     encrypted_let
#   end
# end

  # num_string.map! do |num|
  #   if num < 97
  #     num.to_s.gsub('num', ' ')
  #   end
  # end