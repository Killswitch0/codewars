# DESCRIPTION:
#   You live in the city of Cartesia where all roads are laid out in a perfect grid.
#   You arrived ten minutes too early to an appointment,
#   so you decided to take the opportunity to go for a short walk.
#   The city provides its citizens with a Walk Generating App on their phones
#   -- everytime you press the button
#   it sends you an array of one-letter strings representing directions to walk
#   (eg. ['n', 's', 'w', 'e']).
#   You always walk only a single block for each letter (direction) and
#   you know it takes you one minute to traverse one city block,
#   so create a function that will return true if the walk the app gives you will take you exactly ten minutes
#   (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.
#
# Note: you will always receive a valid array containing a random assortment of direction letters
# ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

def is_valid_walk(walk)
  count = walk.length

  return false if count > 10 || count < 10

  vert = 0
  horiz = 0

  walk.each do |dir|
    case dir
    when 'n'
      vert += 1
    when 's'
      vert -= 1
    when 'w'
      horiz += 1
    when 'e'
      horiz -= 1
    end
  end

  vert.zero? && horiz.zero?
end
