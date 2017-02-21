toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call

doYouLike = Proc.new do |aGoodThing|
	puts 'I *really* like '+aGoodThing+'!'
end

doYouLike.call 'chocolate'
doYouLike.call 'ruby'


# Methods which take procs

def doSelfImportantly someProc
	puts 'Everybody just HOLD ON! I have something to do...'
	someProc.call
	puts 'Ok everyone, I\'m done. Go on with what you were doing.'
end

sayHello = Proc.new do
	puts 'hello'
end

sayGoodbye = Proc.new do
	puts 'goodbye'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye


def maybeDo someProc
	if rand(2) == 0
		someProc.call
	end
end

def twiceDo someProc
	someProc.call
	someProc.call
end

wink = Proc.new do
	puts '<wink>'
end

glance = Proc.new do
	puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance


def doUntilFalse firstInput, someProc
  input  = firstInput
  output = firstInput

  while output
    input  = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop                         	# Take off the last number...
    array.push lastNumber * lastNumber  # ...and replace it with its square...
    array.push lastNumber - 1           # ...followed by the next smaller number.
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)


# Methods which return procs

# creating procs inside of methods allow for things like: lazy evaluation, infinite data structures, and currying

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)


# Passing blocks (not procs) into methods

# So far... to use Procs you need to:
# 1. defining the method (def ...)
# 2. making the proc (Proc.new)
# 3. calling the method with a Proc
# ... should probably only need to define the method and pass a block directly into the method without the Proc

class Array
	def eachEven(&wasABlock_nowAProc)
		# We start with "true" because arrays start with 0, which is even.
		isEven = true

		self.each do |object|
			if isEven
				wasABlock_nowAProc.call object
			end

			isEven = (not isEven) # Toggle from even to odd, or odd to even.
		end
	end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
	puts 'Yum! I just love ' + fruit + 'pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end


# helps show the amount of time it takes to execute a function

def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end