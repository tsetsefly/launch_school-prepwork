def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil
quotient = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end
numerator = numerator.to_i

loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  break if valid_number?(denominator) && denominator != '0'
  if denominator == '0'
    puts ">> Invalid input. A denominator of 0 is not allowed."
  else
    puts ">> Invalid input. Only integers are allowed."
  end
end
denominator = denominator.to_i

quotient = numerator / denominator

puts "#{numerator} / #{denominator} is #{quotient}"