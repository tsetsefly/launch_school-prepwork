number_of_lines = nil

loop do
	loop do
	  puts '>> How many output lines do you want? Enter a number >= 3 (Q to Quit):'
	  number_of_lines = gets.chomp
    break if number_of_lines == 'q' || number_of_lines == 'Q'
    number_of_lines = number_of_lines.to_i
	  break if number_of_lines >= 3
	  puts ">> That's not enough lines."
	end

  break if number_of_lines == 'q' || number_of_lines == 'Q'

	while number_of_lines > 0
	  puts 'Launch School is the best!'
	  number_of_lines -= 1
	end
end