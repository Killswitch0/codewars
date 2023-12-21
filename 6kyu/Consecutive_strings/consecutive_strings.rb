# https://www.codewars.com/kata/56a5d994ac971f1ac500003e/train/ruby

# You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

# Examples:
#   strarr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], k = 2

#   Concatenate the consecutive strings of strarr by 2, we get:

#   treefoling   (length 10)  concatenation of strarr[0] and strarr[1]
#   folingtrashy ("      12)  concatenation of strarr[1] and strarr[2]
#   trashyblue   ("      10)  concatenation of strarr[2] and strarr[3]
#   blueabcdef   ("      10)  concatenation of strarr[3] and strarr[4]
#   abcdefuvwxyz ("      12)  concatenation of strarr[4] and strarr[5]

#   Two strings are the longest: "folingtrashy" and "abcdefuvwxyz".
#   The first that came is "folingtrashy" so 
#   longest_consec(strarr, 2) should return "folingtrashy".

# In the same way:
# longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
# n being the length of the string array, if n = 0 or k > n or k <= 0 return "" (return Nothing in Elm, "nothing" in Erlang).


def longest_consec(strarr, k)
  return '' if strarr.length < k || k.zero? || k.negative?
  return strarr.max_by(&:length) if k == 1
    
  concat_list = strarr.each_cons(k).map(&:join)
  concat_list.max_by(&:length)
end

p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2) # => "abigailtheta")
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) # => "oocccffuucccjjjkkkjyyyeehh")
p longest_consec([], 3) # => ""
p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) # => "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) # => "wlwsasphmxxowiaxujylentrklctozmymu")
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) # => "")
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3), "ixoyx3452zzzzzzzzzzzz"
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) # => ''
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) # => ''


