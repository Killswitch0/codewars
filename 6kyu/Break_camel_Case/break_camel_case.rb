# Complete the solution so that the function will break up camel casing, using a space between words.

# Example
#   "camelCasing"  =>  "camel Casing"
#   "identifier"   =>  "identifier"
#   ""             =>  ""

def solution(string)
    result = []
    
    string.chars.each_with_index do |l, i|
      next_let = string[i + 1]  
      result << l

      break if next_let.nil?

      result << ' ' if l == l.downcase && 
                        next_let == next_let.upcase
    end
    
    result.join
  end

p solution('camelCasing')   # 'camel Casing')
p solution('camelCasingTest') # 'camel Casing Test')