response = [nil, nil]
USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  response[0] = gets.chomp
  puts '>> Please enter your password:'
  response[1] = gets.chomp
  break if response[0] == 'admin' && response[1] == 'SecreT'
  puts '>> Authorization failed!'
end

puts 'Welcome!'