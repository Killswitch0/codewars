# https://www.codewars.com/kata/59daf400beec9780a9000045/train/ruby

def name_in_str(str, name)
  result = []
  str_chars = str.downcase.chars

  name.downcase.chars.each do |name_let|
    str_index = str_chars.index(name_let)
    return false if str_index.nil?

    result << name_let
    str_chars = str_chars[(str_index + 1)..-1]
  end

  result.join == name.downcase
end

name_in_str("Across the rivers", "chris") # true
name_in_str("Next to a lake", "chris") # false
name_in_str("Under a sea", "chris") # false
name_in_str("A crew that boards the ship", "chris") # false
name_in_str("A live son", "Allison") # false
name_in_str("Just enough nice friends","Jennifer") # false
name_in_str("thomas","Thomas") # true
name_in_str("pippippi","Pippi") # true
name_in_str("pipipp","Pippi") # false
name_in_str("ppipip","Pippi") # false