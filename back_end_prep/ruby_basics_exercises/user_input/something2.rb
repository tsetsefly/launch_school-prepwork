response = nil

until response == "n"
  puts "Do you want me to print something? (y/n)"
  response = gets.chomp.downcase
  if response == "y"
    puts "something"
    break
  elsif response != "n"
    puts "Invalid input! Please enter y or n"
  end
end
