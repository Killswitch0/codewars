# DESCRIPTION:
#   Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence,
#   which is the number of times you must multiply the digits in num until you reach a single digit.
#
#   For example (Input --> Output):
#
#   39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
#   999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
#   4 --> 0 (because 4 is already a one-digit number)

def persistence(n)
  return 0 if n.to_s.chars.length < 2

  mult_count = 0
  result = 11

  while result.to_s.chars.length >= 2
    n = n.to_s.chars.map(&:to_i).inject(&:*)
    result = n
    mult_count += 1
  end

  mult_count
end