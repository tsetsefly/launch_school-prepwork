puts "enter a number"
num = gets.chomp.to_i

if num < 0
  puts "no negatives"
elsif num >= 0 && num <= 50
  puts "greater than or equal to 0, less than or equal to 50"
elsif num >= 51 && num <= 100
  puts "greater than or equal to 51, less than or equal to 100"
elsif num > 100
  puts "greater than 100"
end