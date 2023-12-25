# https://www.codewars.com/kata/57fa537f8b0760c7da000407/train/ruby

# Base on the fairy tale Diamonds and Toads from Charles Perrault. 
# In this kata you will have to complete a function that take 2 arguments:

# A string, that correspond to what the daugther says.
# A string, that tell you wich fairy the girl have met, this one can be good or evil.
# The function should return the following count as a hash:

# If the girl have met the good fairy:
# count 1 ruby everytime you see a r and 2 everytime you see a R
# count 1 crystal everytime you see a c and 2 everytime you see a C
# If the girl have met the evil fairy:
# count 1 python everytime you see a p and 2 everytime uou see a P
# count 1 squirrel everytime you see a s and 2 everytime you see a S
# Note: For this kata I decided to remplace the normal Diamonds and Toads by some programming languages.
# And just discover that Squirrel is a programming language.

def diamonds_and_toads(sentence, fairy)
  sides = {
    good: {
      ruby: { 'r' => 1, 'R' => 2 },
      crystal: { 'c' => 1, 'C' => 2 }
    },
    evil: {
      python: { 'p' => 1, 'P' => 2 },
      squirrel: { 's' => 1, 'S' => 2 }
    }
  }

  result = Hash.new(0)
  
  sides[fairy].keys.each do |key|
    sentence.chars.each do |chr|
      result[key] += sides[fairy][key][chr] || 0
    end
    
    result.delete(key) if result[key].zero?
  end
  
  result
end

p diamonds_and_toads("Ruby and Crystal", :good) # => {ruby: 3, crystal: 2 })
p diamonds_and_toads("This string contain some Ruby and some Crystal in it", :good) # => {ruby: 4, crystal: 3 })
p diamonds_and_toads("Python and Squirrel", :evil) # => {python: 2, squirrel: 2})
p diamonds_and_toads("This string contain some Python and some Squirrel in it", :evil) # => {python: 2, squirrel: 6 })


