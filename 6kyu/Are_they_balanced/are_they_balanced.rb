# https://www.codewars.com/kata/57fb44a12b53146fe1000136/train/ruby

# DESCRIPTION:
# Each exclamation mark's weight is 2; each question mark's weight is 3. 
# Putting two strings left and right on the balance - are they balanced?

# If the left side is more heavy, return "Left"; if the right side is more heavy, return "Right"; if they are balanced, return "Balance".

# Examples
#   "!!", "??"     -->  "Right"
#   "!??", "?!!"   -->  "Left"
#   "!?!!", "?!?"  -->  "Left"
#   "!!???!????", "??!!?!!!!!!!"  -->  "Balance"


def balance(left, right)
  left_weight = left.count('!') * 2 + left.count('?') * 3
  right_weight = right.count('!') * 2 + right.count('?') * 3
  
  return 'Left' if left_weight > right_weight
  return 'Right' if right_weight > left_weight
  
  'Balance'
end

p balance("", "") # => "Balance"
p balance("!!", "??") # => "Right"
p balance("!??", "?!!") # => "Left"
p balance("!?!!", "?!?") # => "Left"
p balance("!!???!????", "??!!?!!!!!!!") # => "Balance"