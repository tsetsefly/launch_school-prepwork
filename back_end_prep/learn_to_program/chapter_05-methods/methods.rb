puts 'hello '.+ 'world'
puts (10.* 9).+ 9

# iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
# puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
# self.puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s +
     ' characters in your name, ' + name + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))

lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

# Angry Boss

puts 'What do you want to ask Angry Boss?'
str = gets.chomp
puts 'WHADDAYA MEAN "' + str.upcase + '"?!?  YOU\'RE FIRED!!'

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts((5-2).abs)
puts((2-5).abs)

