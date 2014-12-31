# Exercise 1

(1..10).each { |i| puts i }

# Exercise 2

(1..10).each { |i| puts i if i > 5 }

# Exercise 3

arr = []
(1..10).each do |i|
  if i > 5
    arr.push(i)
  end
end

p arr.select { |i| i % 2 != 0 }

# Exercise 4

arr = (1..10).select { |i| i==i }

arr.push(11)
arr.unshift(0)

# Exercise 5

arr.delete(11) # or arr.pop since 11 was the last element
arr.push(3)

# Exercise 6

arr.uniq!

# Exercise 8

hash1 = {name: 'bob', age: 50}
hash2 = {:name => 'bob', :age => 50}

# Exercise 9

h = {a: 1, b: 2, c: 3, d: 4}

h[:e] = 5

h.each { |k, v| h.delete(k) if v < 3.5 }

# h.delete_if { |k, v| v < 3.5 }

# Exercise 12

contact_data = [["joe@email.com", "123 Main St.", "555-123-44577"],
                ["sally@email.com", "whoretown", "123-456-7890"]]

contacts = {"joe smith" => {}, "sally johnson" => {}}

contacts["joe smith"][:email] = contact_data[0][0]
contacts["joe smith"][:address] = contact_data[0][1]
contacts["joe smith"][:phone_number] = contact_data[0][2]
contacts["sally johnson"][:email] = contact_data[1][0]
contacts["sally johnson"][:address] = contact_data[1][1]
contacts["sally johnson"][:phone_number] = contact_data[1][2]

# Exercise 13

contacts["joe smith"][:email]
contacts["sally johnson"][:phone_number]

# Exercise 14

contacts = {"joe" => {}, "sally" => {}}

ctr = 0
keys = contacts.keys
val_keys = [:email, :address, :phone_number]
for contact_array in contact_data do
  for i in 0..(val_keys.length - 1) do
    contacts[keys[ctr]][val_keys[i]] = contact_array[i]
  end
  ctr+=1
end

# Exercise 15

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?('s') }
arr.push("snow")
arr.push("slippery")
arr.push("salted roads")
arr.delete_if { |word| word.start_with?("s") || word.start_with?("w") }

# Exercise 16

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk']

finalarr = (splitarr = a.map do |element|
  element.split(' ')
end).flatten

p finalarr
