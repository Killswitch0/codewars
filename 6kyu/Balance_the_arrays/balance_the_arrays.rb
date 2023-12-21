# Check that the two provided arrays both contain the same number of different unique items,
# regardless of order. For example in the following:

# [a,a,a,a,b,b] and [c,c,c,d,c,d]
# Both arrays have four of one item and two of another, so balance should return true.

# #Have fun!


def balance(arr1, arr2)
  count_unique_items = -> (arr) do
    count_items = Hash.new(0)
    arr.each { |char| count_items[char] += 1 }
    count_items.values.sort
  end
  
  count_unique_items.call(arr1) == count_unique_items.call(arr2)
end



array1 = ["a","a","a","a","a","b","b","b"]
array2 = ["c","c","c","c","c","d","d","d"]

p balance(array1, array2) # => true

array1 = ["a","a"]
array2 = ["c"]

p balance(array1, array2) # => false

array1 = ["a","b","c","d","e","f","g","g"]
array2 = ["h","h","i","j","k","l","m","n"]

p balance(array1, array2) # => true

array1 = ["a"]
array2 = ["c"]

p balance(array1, array2) # => true

array1 = ["a","b","c","d","e","f","g","g"]
array2 = ["h","h","i","j","k","l","m","m"]

p balance(array1, array2) # => false


