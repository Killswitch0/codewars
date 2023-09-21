# DESCRIPTION:
#   Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.
#
#   moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]

def move_zeros arr
  result = []

  arr.each { |e| result << e if e != 0 }

  arr.count(0).times { result << 0 }

  result
end