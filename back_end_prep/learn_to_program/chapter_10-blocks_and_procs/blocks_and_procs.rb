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

# 1. defining the method (def ...)
# 2. making the proc (Proc.new)
# 3. 