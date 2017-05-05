def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil
sum = nil

loop do
  puts ">> Please enter a positive or negative integer:"
  num1 = gets.chomp
  
  puts ">> Please enter a positive or negative integer:"
  num2 = gets.chomp

  if valid_number?(num1) || valid_number?(num2)
    puts ">> Invalid input. Only non-zero integers are allowed."
    puts ">> Please start over."
    next
  elsif (num1.to_i > 0 && num2.to_i > 0) || (num1.to_i < 0 || num2.to_i < 0)
    puts ">> Sorry. One integer must be positive, one must be negative."
    puts ">> Please start over."
    next
  end
  sum = num1.to_i + num2.to_i
  puts "#{num1} + #{num2} = #{sum}"
end