def solution(string)
    result = []
    
    string.chars.each_with_index do |l, i|
      if string[i + 1].nil?
        result << l
        break
      end 
      
      if l == l.downcase && string[i + 1] == string[i + 1].upcase
        result << l + ' ' 
      else
        result << l
      end 
    end
    
    result.join
  end

p solution('camelCasing')   # 'camel Casing')
p solution('camelCasingTest') # 'camel Casing Test')