# DESCRIPTION:
#   Pair of gloves
#   Winter is coming, you must prepare your ski holidays.
#   The objective of this kata is to determine the number of pair of gloves
#   you can constitute from the gloves you have in your drawer.
#
#   Given an array describing the color of each glove, return the number of pairs you can constitute,
#   assuming that only gloves of the same color can form pairs.
#
#   Examples:
#   input = ["red", "green", "red", "blue", "blue"]
#   result = 2 (1 red pair + 1 blue pair)
#
#   input = ["red", "red", "red", "red", "red", "red"]
#   result = 3 (3 red pairs)

def number_of_pairs(gloves)
  return 0 if gloves.length.zero? || gloves.nil?

  # 0 parameter by default is for incrementing hash values
  pairs = Hash.new(0)

  gloves.each { |g| pairs[g] += 1 }

  pairs.values.reduce(0) { |s, n| s + n / 2 }
end