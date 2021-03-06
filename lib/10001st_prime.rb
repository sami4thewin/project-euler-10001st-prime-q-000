# Implement your procedural solution here!
# require 'prime'

def is_prime?(num)
  return false if num.zero? || num == 1
  (2..num - 1).to_a.each do |n|
    if num % n == 0
      return false
    end
  end
  true
end

def prime_number_for(place)
  array = []
  x = 0
  until array.length == place
    if is_prime?(x)
      array << x
    end
    x += 1
  end
  array[-1]
  # binding.pry
end
