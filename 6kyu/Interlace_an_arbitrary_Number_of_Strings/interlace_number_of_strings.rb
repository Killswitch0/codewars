# Write a function that takes an arbitrary number of strings and 
# interlaces them (combines them by alternating characters from each string).

# For example combineStrings('abc', '123') should return 'a1b2c3'.

# If the strings are different lengths the function should interlace them until each string runs out, continuing to add characters from the remaining strings.

# For example combineStrings('abcd', '123') should return 'a1b2c3d'.

# The function should take any number of arguments and combine them.

# For example combineStrings('abc', '123', '£$%') should return 'a1£b2$c3%'.

# Note: if only one argument is passed return only that string. If no arguments are passed return an empty string.

def combine_strings(*args)
  return "" if args.count.zero?
  return args[0] if args.count == 1
  
  result = ""
  max_length = args.map(&:length).max

  (0...max_length).each do |i|
    args.each do |str|
      result += str[i] if i < str.length
    end
  end

  return result
end

p combine_strings() # => "" "You need to return an empty string when no arguments are passed"
p combine_strings("abc") # => "abc", "You need to return the string when only one argument is passed"
p combine_strings("abc", "123") # => "a1b2c3"
p combine_strings("abcd", "123") # => "a1b2c3d"
p combine_strings("abc", "1234") # => "a1b2c34"
p combine_strings("abc", "123", "$%") # => "a1$b2%c3"
p combine_strings("abcd", "123", "$%") # => "a1$b2%c3d"
p combine_strings("abcd", "123", "$%^&") # => "a1$b2%c3^d&"
p combine_strings("abcd", "123", "$%^&", "qwertyuiop") # => "a1$qb2%wc3^ed&rtyuiop"
p combine_strings("abcd", "123", "$%^&", "qwertyuiop", "X") # => "a1$qXb2%wc3^ed&rtyuiop"