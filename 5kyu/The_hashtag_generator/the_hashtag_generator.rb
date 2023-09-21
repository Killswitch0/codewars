# DESCRIPTION:
#   The marketing team is spending way too much time typing in hashtags.
#   Let's help them with our own Hashtag Generator!
#
# Here's the deal:
#
#   It must start with a hashtag (#).
#   All words must have their first letter capitalized.
#   If the final result is longer than 140 chars it must return false.
#   If the input or the result is an empty string it must return false.
#
#   Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false

def generate_hashtag(str)
  words = str.split(' ')
  word_count = words.length
  joined_length = words.join.length


  return false if str.strip.empty? ||
                  word_count == 1 && words.first.length >= 140 ||
                  joined_length >= 140


  str.split(' ').map!(&:capitalize).join.insert(0, '#')
end