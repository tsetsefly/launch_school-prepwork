# puts "enter a string: "
# input = gets.chomp

def caps(input)
  if input.length > 10
  	input.upcase
  else
    input
  end
end

puts caps("hello world")
puts caps("nope")