# https://www.codewars.com/kata/59de1e2fe50813a046000124/train/ruby

# got lots of files beginning like this:

# Program title: Primes
# Author: Kern
# Corporation: Gold
# Phone: +1-503-555-0091
# Date: Tues April 9, 2005
# Version: 6.7
# Level: Alpha
# Here we will work with strings like the string data above and not with files.

# The function change(s, prog, version) given:

# s=data, prog="Ladder" , version="1.1" will return:

# "Program: Ladder Author: g964 Phone: +1-503-555-0090 Date: 2019-01-01 Version: 1.1"

# Rules:

#   The date should always be "2019-01-01".

#   The author should always be "g964".

#   Replace the current "Program Title" with the prog argument supplied to your function. Also remove "Title", so in the example case "Program Title: Primes" becomes "Program: Ladder".

#   Remove the lines containing "Corporation" and "Level" completely.

#   Phone numbers and versions must be in valid formats.

#   A valid version in the input string data is one or more digits followed by a dot, followed by one or more digits. So 0.6, 5.4, 14.275 and 1.99 are all valid, but versions like .6, 5, 14.2.7 and 1.9.9 are invalid.

#   A valid input phone format is +1-xxx-xxx-xxxx, where each x is a digit.

#   If the phone or version format is not valid, return "ERROR: VERSION or PHONE".

#   If the version format is valid and the version is anything other than 2.0, replace it with the version parameter supplied to your function. If it’s 2.0, don’t modify it.

#   If the phone number is valid, replace it with "+1-503-555-0090".

# Note
#   You can see other examples in the "Sample tests".

def change(s, pg, v)
    new_lines = s.split("\n").map do |str|
      category, value = str.split(':').map(&:strip)
      
      case category
      when 'Program title'
        "#{category.split[0]}: #{pg}"
      when 'Author'
        "#{category}: g964"
      when 'Phone'
        if !value.match(/\+1-\d{3}-\d{3}-\d{4}$/)
          return "ERROR: VERSION or PHONE"
        else
          "#{category}: +1-503-555-0090"
        end
      when 'Date'
        "#{category}: 2019-01-01"
      when 'Version'
        if !value.match(/^\d+\.\d+$/)
          return "ERROR: VERSION or PHONE"
        else
          version = value == '2.0' ? '2.0' : v        
          "#{category}: #{version}"  
        end
      else
        next
      end 
    end
    
    new_lines.compact.join(' ')
  end

s1="Program title: Primes\nAuthor: Kern\nCorporation: Gold\nPhone: +1-503-555-0091\nDate: Tues April 9, 2005\nVersion: 6.7\nLevel: Alpha"
s2="Program title: Balance\nAuthor: Dorries\nCorporation: Funny\nPhone: +1-503-555-0095\nDate: Tues July 19, 2014\nVersion: 6.7\nLevel: Release"
s12="Program title: Primes\nAuthor: Kern\nCorporation: Gold\nPhone: +1-503-555-009\nDate: Tues April 9, 2005\nVersion: 6.7\nLevel: Alpha"
s13="Program title: Primes\nAuthor: Kern\nCorporation: Gold\nPhone: +1-503-555-0090\nDate: Tues April 9, 2005\nVersion: 67\nLevel: Alpha"


p change(s1, "Ladder", "1.1")   # => "Program: Ladder Author: g964 Phone: +1-503-555-0090 Date: 2019-01-01 Version: 1.1")
p change(s2, "Circular", "1.5") # => "Program: Circular Author: g964 Phone: +1-503-555-0090 Date: 2019-01-01 Version: 1.5")
p change(s12, "Ladder", "1.1")  # => "ERROR: VERSION or PHONE")
p change(s13, "Ladder", "1.1")  # => "ERROR: VERSION or PHONE")  