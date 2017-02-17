[]
[5]
['Hello','Goodbye']

flavor = 'vanilla'

[89.9, flavor, [true, false]]


names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]  # This is out of range.


languages = ['English', 'German', 'Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'


3.times do
	puts 'Hip-Hip-Hooray!'
end


foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'

200.times do
	puts []
end