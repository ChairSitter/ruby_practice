def first_method(num)
  num * 2
end

puts first_method(15)

#First exercise (print numbers in array)
puts "1: "

array = (1..10).to_a
print array.to_a

array.each do |num|
  print num
end

#second exercise (print numbers above 5)
puts "\n2: "

array.each do |num|
  if num > 5
    print num
  end
end

#third exercise (make array with all odds using select)
puts "\n3: "

new_array = array.select do |num|
    num % 2 != 0
end 

print new_array

#fourth exercise (append 11 and prepend 0)
puts "\n4: "

array.push(11)
array.unshift(0)

print array

#fifth (get rid of 11 and append 3)
puts "\n5: "

array.pop()
array.push(3)

print array

#sixth (remove duplicates)
puts "\n6: "

array.push(12, 2, 4, 6, 16) #push a few more numbers to test removal of duplicates

new_array = []
array.each do |num|
  if new_array.include?(num)
    next
  else
    new_array.push(num)
  end
end

print new_array

#hash with both syntax styles
hash1 = Hash.new 
hash1[:name] = "Bryan"
hash1[:age] = 33
hash1[:is_tall] = true

hash2 = {
  name: "Ruby",
  age: 30,
  is_tall: false
}

puts hash1; puts hash2

#hash exercises
h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
  puts h[:b]
#2. Add to this hash the key:value pair `{e:5}`
  h[:e] = 5
  puts h
#3. Remove all key:value pairs whose value is less than 3.5
h = h.select { |key, value| value < 3.5 }
puts h

#method that puts contact info from array into appropriate info hash within contacts hash
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def update_hash(contacts, contact_data)
  num = 0
  contacts.each do |key, value|
    value[:email] = contact_data[num][0]
    value[:address] = contact_data[num][1]
    value[:phone] = contact_data[num][2]
    num += 1
  end
  puts contacts
end

update_hash(contacts, contact_data)

puts "joe's email:"
puts contacts["Joe Smith"][:email]
puts "sally's phone:"
puts contacts["Sally Johnson"][:phone]

