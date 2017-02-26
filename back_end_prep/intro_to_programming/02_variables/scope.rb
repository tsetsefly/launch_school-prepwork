a = 5        # variable is initialized in the outer scope

3.times do |n|
  a = 3      # is a accessible here, in an inner scope?
end

puts a


a = 5

3.times do |n|
  a = 3
  b = 5      # b is initialized in the inner scope
end

puts a
puts b       # is b accessible here, in the outer scope?