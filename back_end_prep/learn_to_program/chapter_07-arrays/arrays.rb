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

# since array doesn't point to anything, nothing is printed
200.times do
	puts []
end


favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whisky on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length


#####

word = ''
words = []

puts 'Type in words you want in your array (type \'END\' when finished)'
while word != 'END'
  word = gets.chomp
  words.push word.to_s
end

print 'Removing the \'END\': '
words.pop

def fake_sort(list)
	return list if list.size <= 1

	i = 0
	while i < list.length - 1
		j = i + 1
	  while j < list.length - 2
	  	if list[i] > list[i + j]
	  		list[i], list[i + j] = list[i + j], list[i]
	  	end
	  	j = j + 1
	  end
	  i = i + 1
	end

  list
end

puts 'Here is your alphabetized list with sort!'
puts words.sort

puts 'Here is your alphabetized list with fake_sort!'
puts fake_sort(words)
