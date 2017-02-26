def add_three(n)
  n + 3
end

add_three(5).times { puts 'this should print 8 times'}
puts
add_three(5).times do |x|
  puts 'this should print 8 times'
end 
