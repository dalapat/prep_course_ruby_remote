# Exercise 1

family = { uncles: ["bob", "joe", "steve"], 
           sisters: ["jane", "jill", "beth"], 
           brothers: ["frank", "rob", "david"], 
           aunts: ["mary", "sally", "susan"]
         }

def findmems(hash)
  arrhash = hash.select do |k, v|
    k == :sisters || k == :brothers
  end
  arrhash.values.flatten
end

p findmems(family)

# Exercise 3

hash = {name: 'bob', age: 19, sexuality: 'gay'}

hash.each do |k, v|
  puts k
end

hash.each do |k, v|
  puts v
end

hash.each do |k, v|
  puts k.to_s + ' ,' + v.to_s
end

hash.each_key { |k| puts k }
hash.each_values { |v| puts v }

# Exercise 4

def anagrams(arr)
  hash = {}
  arr.each do |word|
    new_word = word.split('').sort.join
    if hash.has_key?(new_word)
      hash[new_word].push(word)
    else
      hash[new_word] = word
    end
  end
end
