response = nil

until response == 'SecreT'
  puts '>> Please enter your password:'
  response = gets.chomp
  puts '>> Invalid Password' if response != 'SecreT'
end

puts 'Welcome!'