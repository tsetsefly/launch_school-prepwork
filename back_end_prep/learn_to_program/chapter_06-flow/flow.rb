puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 1 == 1
puts 2 != 1


# puts 'cat' < 'dog'

# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Chris'
#   puts 'What a lovely name!'
# end


# puts 'I am a fortune-teller.  Tell me your name:'
# name = gets.chomp
# if name == 'Chris'
#   puts 'I see great things in your future.'
# else
#   puts 'Your future is... Oh my!  Look at the time!'
#   puts 'I really have to go, sorry!'
# end

# puts 'Hello, and welcome to 7th grade English.'
# puts 'My name is Mrs. Gabbard.  And your name is...?'
# name = gets.chomp


# if name == name.capitalize
#   puts 'Please take a seat, ' + name + '.'
# else
#   puts name + '?  You mean ' + name.capitalize + ', right?'
#   puts 'Don\'t you even know how to spell your name??'
#   reply = gets.chomp

#   if reply.downcase == 'yes'
#     puts 'Hmmph!  Well, sit down!'
#   else
#     puts 'GET OUT!!'
#   end
# end


# puts 'Hello, and welcome to 7th grade English.'
# puts 'My name is Mrs. Gabbard.  And your name is...?'
# name = gets.chomp

# if name == name.capitalize
#   puts 'Please take a seat, ' + name + '.'
# else
#   puts name + '?  You mean ' + name.capitalize + ', right?'
#   puts 'Don\'t you even know how to spell your name??'
#   reply = gets.chomp

#   if reply.downcase == 'yes'
#   else
#   end
# end


# command = ''

# while command != 'bye'
#   puts command
#   command = gets.chomp
# end

# puts 'Come again soon!'


# # inefficient because you're repeating yourself
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Chris'
#   puts 'What a lovely name!'
# else
#   if name == 'Katy'
#     puts 'What a lovely name!'
#   end
# end

# # better because you can get rid of the else statment by using an or-logical operator in your if-conditional
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if (name == 'Chris' or name == 'Katy')
#   puts 'What a lovely name!'
# end


iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )

i = 99
while i > 0
  if i == 1
    puts i.to_s + ' bottle of beer on the wall... ' + i.to_s + ' bottle of beer! Take it down, pass it around... ' + (i - 1).to_s + ' bottles of beer on the wall!'
  else
    puts i.to_s + ' bottles of beer on the wall... ' + i.to_s + ' bottles of beer! Take one down, pass it around... ' + (i - 1).to_s + ' bottles of beer on the wall!'
  end
  i = i - 1
end