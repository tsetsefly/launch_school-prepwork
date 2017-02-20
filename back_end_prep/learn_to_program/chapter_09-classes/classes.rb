a = Array.new  + [12345]  # Array  addition.
b = String.new + 'hello'  # String addition.
c = Time.new

puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s

# String.new creates a new string
# Array.new creates a new array
# you CAN'T create a new integer with Integer.new

# The Time Class

time  = Time.new   # The moment I generated this web page.
time2 = time + 60  # One minute later.

puts time
puts time2

puts Time.mktime(2000, 1, 1)          # Y2K.
puts Time.mktime(1976, 8, 3, 10, 11, 6)  # When I was born.

seconds = Time.mktime(1985, 9, 22, 3, 14)
puts seconds
puts seconds.to_f

puts seconds + 1000000000


colorArray = [] # same as Array.new
colorHash = {}  # same as Hash.new

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'
colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
	puts color
end

colorHash.each do |codeType, color|
	puts codeType + ': ' + color
end


weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'


class Integer
	def to_eng
		if self == 5
			english = 'five'
		else
			english = 'fifty-eight'
		end

		english
	end
end

puts 5.to_eng
puts 58.to_eng
