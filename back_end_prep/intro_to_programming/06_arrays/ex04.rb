arr = [15, 7, 18, 5, 12, 8, 5, 1]

# finds the location of 5 and returns the index value / location
a = arr.index(5)
puts a # returns 3 because 5 is at the index of 3

# a = arr.index[5] # returns "ex04.rb:6:in `<main>': undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)"
# puts a 

a = arr[5]
puts a