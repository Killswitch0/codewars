# ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet.
# ROT13 is an example of the Caesar cipher.
#
#   Create a function that takes a string and returns the string ciphered with Rot13.
#   If there are numbers or special characters included in the string,
#   they should be returned as they are.
#   Only letters from the latin/english alphabet should be shifted,
#   like in the original Rot13 "implementation".


def rot13(string)
  alphabet = ('a'..'z').to_a * 2

  result = string.downcase.chars.map! do |l|
    if alphabet.include? l
      alphabet[(alphabet.index l) + 13]
    else
      l
    end
  end.join

  string[0] == string[0].upcase ? result.capitalize : result
end