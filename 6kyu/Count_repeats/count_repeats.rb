# https://www.codewars.com/kata/598ee7b6ec6cb90dd6000061/train/ruby

# DESCRIPTION:
# Write a function that returns the count of characters that have to be removed in order to get a string with no consecutive repeats.

# Note: This includes any characters

# Examples
#   'abbbbc'  => 'abc'    #  answer: 3
#   'abbcca'  => 'abca'   #  answer: 2
#   'ab cca'  => 'ab ca'  #  answer: 1


def count_repeats(txt)
  txt
  .chars
  .each_cons(2)
  .count { |a, b| a == b }
end


p count_repeats('abbc')   # => 1
p count_repeats('abbcca') # => 2
p count_repeats('ab cca') # => 1      
