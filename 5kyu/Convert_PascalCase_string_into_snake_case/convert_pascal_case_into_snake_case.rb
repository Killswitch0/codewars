# Complete the function/method so that it takes a PascalCase string and
# returns the string in snake_case notation.
# Lowercase characters can be numbers.
# If the method gets a number as input, it should return a string.
#
#   Examples
#     "TestController"  -->  "test_controller"
#     "MoviesAndBooks"  -->  "movies_and_books"
#     "App7Test"        -->  "app7_test"
#      1                 -->  "1"

def to_underscore(string)
  string = string.to_s if string.is_a? Integer

  string = string.split(/(?=[A-Z])/).map(&:downcase)
  string.map! do |w|
    if w == string.last
      w
    else
      w.concat('_')
    end
  end.join
end