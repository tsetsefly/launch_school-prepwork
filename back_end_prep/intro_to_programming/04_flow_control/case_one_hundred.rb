# puts "enter a number"
# num = gets.chomp.to_i

def case_100(num)
	case
	when num < 0
	  puts "no negatives"
	when num <= 50
	  puts "greater than or equal to 0, less than or equal to 50"
	when num <= 100
	  puts "greater than or equal to 51, less than or equal to 100"
	else
	  puts "greater than 100"
	end
end

puts "enter a number"
num = gets.chomp.to_i
case_100(num)