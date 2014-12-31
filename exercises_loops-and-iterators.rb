# Exercise 2

# do end loops that use an iterator just return the collection of objects

ctr = 0
puts 'first loop'
answer = ""
begin

answer = gets.chomp
ctr += 1
puts ctr

end while answer != 'STOP'

puts 'second loop'
ctr2 = 0
answer2 = ""
while (answer2)!='STOP'
ctr2 +=1
puts ctr2
answer2 = gets.chomp
end

puts 'third loop'
while 1 == 1
  answer = gets.chomp
  if answer == 'STOP'
    break
  end
end

# Exercise 3

a = [ 'apple', 'banana', 'strawberry', 'kiwi' ]

a.each_with_index { |item, index|

  puts item + ' ' + index.to_s

}

# Exercise 4

def recur(num)
  puts num
  if num == 0
    return
  end
  puts recur(num-1)
end

recur(10)
