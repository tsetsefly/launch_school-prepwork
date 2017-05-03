response = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  response = gets.chomp.to_i
  if response > 2
    response.times do
      puts "Launch School is the best!"
    end
    break
  else response < 3
    puts "That's not enough lines."
  end
end
