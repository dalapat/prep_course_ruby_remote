# Exercise 2

def tocaps(string)
  if string.length >= 10
    return string.upcase
  end
  string
end

# Exercise 3

def other()
  num = gets.chomp.to_i
  a = case num 
  when 0..50
        'case 1'
  when 50..100
        'case 2'
  else 
        'case 3'
  end

  puts a
end

other()
