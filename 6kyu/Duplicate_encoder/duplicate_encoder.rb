# DESCRIPTION:
#   The goal of this exercise is to convert a string to a new string where each character in the new string is
#   "(" if that character appears only once in the original string, or ")"
#   if that character appears more than once in the original string.
#   Ignore capitalization when determining if a character is a duplicate.
#
#   Examples
#   "din"      =>  "((("
#   "recede"   =>  "()()()"
#   "Success"  =>  ")())())"
#   "(( @"     =>  "))(("
# Notes
# Assertion messages may be unclear about what they display in some languages.
# If you read "...It Should encode XXX", the "XXX" is the expected result, not the input!

def duplicate_encode(word)
  result = ''

  counted = word.chars.tally

  word.each_char do |c|
    result << if word.downcase.count(c.downcase) > 1 && word[0] == word[0].upcase
                ')'
              elsif counted[c] == 1
                '('
              else
                ')'
              end
  end

  result
end