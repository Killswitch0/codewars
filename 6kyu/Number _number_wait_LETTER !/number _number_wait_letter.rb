# Your task is to write a function that receives as its single argument a
# string that contains numbers delimited by single spaces.
# Each number has a single alphabet letter somewhere within it.
#
#   Example : "24z6 1x23 y369 89a 900b"
#     As shown above, this alphabet letter can appear anywhere within the number.
#     You have to extract the letters and sort the numbers according to their corresponding letters.
#
#   Example : "24z6 1x23 y369 89a 900b" will become 89 900 123 369 246 (ordered according to the alphabet letter)
#     Here comes the difficult part, now you have to do a series of computations on the numbers you have extracted.
#
#   The sequence of computations are + - * /. Basic math rules do NOT apply,
#   you have to do each computation in exactly this order.
#   This has to work for any size of numbers sent in (after division, go back to addition, etc).
#   In the case of duplicate alphabet letters,
#   you have to arrange them according to the number that appeared first in the input string.
#   Remember to also round the final answer to the nearest integer.

# Examples :
  # "24z6 1x23 y369 89a 900b" = 89 + 900 - 123 * 369 / 246 = 1299
  # "24z6 1z23 y369 89z 900b" = 900 + 369 - 246 * 123 / 89 = 1414
  # "10a 90x 14b 78u 45a 7b 34y" = 10 + 45 - 14 * 7 / 78 + 90 - 34 = 60
  # Good luck and may the CODE be with you!


def do_math(str)
  numb_hash = {}
  operations = %w[+ - * /].cycle.take(str.split.length - 1)

  str.split.each { |n| numb_hash[n.delete('a-z')] = n.delete('0-9') }
  numbers = numb_hash.sort_by(&:last).map(&:first)

  expression = ''
  numbers.each_with_index { |n, i| expression << "#{n}.#{operations[i]}" }

  result = 0

  expression.split('.').each_with_index do |n, i|
    if i.zero?
      result += n.to_i
      next
    end

    result = eval("#{result.to_f}#{n}") if i.positive?
  end

  result.round
end