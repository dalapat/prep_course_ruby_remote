# Exercise 1

def findnum(arr, num)
  arr.each do |i|
    if i==num
      puts 'found'
      break
    end
  end

  # or arr.include?(num)
end

def twoarrays(arr)
  arr.map do |i|
    i + 2
  end
end

def twoa(arr)
  arr2 = []
  arr.each do |i|
    arr2.push(i + 2)
  end
  arr2
end
puts '[1 2 3]'
p twoarrays([1, 2, 3])
p twoa([1, 2, 3])
