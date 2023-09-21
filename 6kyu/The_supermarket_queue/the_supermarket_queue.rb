# Description link --> https://www.codewars.com/kata/57b06f90e298a7b53d000a86

def queue_time(customers, n)
  tills = Array.new(n, 0)

  customers.each do |time|
    min_till = tills.min
    min_index = tills.index(min_till)
    tills[min_index] += time
  end

  tills.max
end