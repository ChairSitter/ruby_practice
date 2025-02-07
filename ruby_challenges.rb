#1. count items greater than 5 in an array

def more_than_five(arr)
  count = 0
  arr.each do |num|
    count += 1 if num > 5
  end
  return count
end

array = [17, 7, 3, 6, 10, 1]
puts more_than_five(array)

#2. Prime number algorithm

def is_prime(num)
  prime = true
  half = num / 2
  (2..half).each do |item|
    if num % item == 0
      prime = false
    end
  end
  return prime
end

puts is_prime(1)
puts is_prime(2)
puts is_prime(3)
puts is_prime(4)
puts is_prime(5)
puts is_prime(6)
puts is_prime(7)
puts is_prime(8)
puts is_prime(9)
puts is_prime(10)
puts is_prime(11)
