# DESCRIPTION:
#   You are given a secret message you need to decipher. Here are the things you need to know to decipher it:
#
#   For each word:
#
#     # the second and the last letter is switched (e.g. Hello becomes Holle)
#     # the first letter is replaced by its character code (e.g. H becomes 72)
#
# Note: there are no special characters used, only letters and spaces
#
# Examples
#
# decipherThis('72olle 103doo 100ya'); // 'Hello good day'
# decipherThis('82yade 115te 103o'); // 'Ready set go'


def decipher_this(string)
  words = string.split(" ")

  words.map do |w|
    first_letter = w.scan(/\d+/).first.to_i
    w.gsub!(/^\d+/, first_letter.chr)
    w[-1], w[1] = w[1], w[-1] if w.size > 2
    w
  end.join(" ")
end