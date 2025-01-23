def first_method(num)
  num * 2
end

puts first_method(15)

#First exercise (print numbers in array)

array = (1..10).to_a
print array.to_a

array.each do |num|
  print num
end

#second exercise (print numbers above 5)

array.each do |num|
  if num > 5
    print num
  end
end

#third exercise (make array with all odds using select)

new_array = array.select do |num|
    num % 2 != 0
end 

print new_array

#fourth exercise (append 11 and prepend 0)

array.push(11)
array.unshift(0)

print array

#fifth (get rid of 11 and append 3)

array.pop()
array.push(3)

print array

#sixth (remove duplicates)

no_dup_array = array.each do |num|
  if
end

