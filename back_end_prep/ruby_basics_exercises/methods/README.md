# [Methods](https://launchschool.com/exercise_sets/aefc58b9)

## Question 1: Greeting Through Methods (Part 1)

**Q:** Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

```
Hello World
```

**A:**

```ruby
def hello
	return "Hello"
end

def world
	return "World"
end

puts "#{hello} #{world}"
```

To do anything with the methods, we first have to define them. We've chosen to define our methods as hello and world. We've written both methods to only do one thing: return a string. This makes it easy for us to print the desired strings simply by calling the methods with #puts.

## Question 2: 	Greeting Through Methods (Part 2)

**Q:** Write a method named greet that invokes the following methods:

```ruby
def hello
  'Hello'
end

def world
  'World'
end
```

When greet is invoked with #puts, it should output the following:

```
Hello World
```

Make sure you add a space between "Hello" and "World", however, you're not allowed to modify hello or world.

**A:**

```ruby
def hello
  'Hello'
end

def world
  'World'
end

def greet
	puts "#{hello} #{world}"
end

greet
```

```ruby
def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + ' ' + world
end

puts greet
```

In the previous exercise, we invoked hello and world using string interpolation and printed their values with #puts. In this exercise, however, we're extracting that combination and placing it in a method named greet. We invoke both methods as we did before, but this time we don't use string interpolation. We simply invoke the methods and use the + sign to combine their values. If we do hello + world, and don't account for an extra space, the output will look like this:

```
HelloWorld
```

That's not very readable so it'd be good to add a space between the two words. To do that, we place a string containing one space between the method invocations.

```ruby
hello + ' ' + world # => Hello World
```

## Question 3: Make and Model

**Q:** Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.

```ruby
car('Toyota', 'Corolla')
```

Expected output:

```
Toyota Corolla
```

**A:**

```ruby
def car(make, model)
	puts "#{make} #{model}"
end

car('Toyota', 'Corolla')
```

When writing the car method it's important to keep two things in mind. First, make sure you're allowing for the correct number of parameters. If the method invocation provides two arguments, then the method must be able to accept two arguments and vice versa. Second, when printing the string, you should use #puts from inside the method. In this exercise, the method invocation isn't prepended by #puts, therefore, to print the string you have to print it from within the method.

Further Exploration

Remove the #puts call from the car method. Modify your program so it still prints the result.

How do the return values of car differ with and without the #puts?

```ruby
def car(make, model)
	return "#{make} #{model}"
end

car('Toyota', 'Corolla')
```

Returns "Toyota Corolla" vs "nil" for the prior example.

## Question 4: Day or Night?

**Q:** The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

```ruby
daylight = [true, false].sample
```

**A:**

```ruby
def time_of_day(light)
	light_status = nil
	light_status = (light ? "It's daytime!" : "It's nighttime!");
	puts light_status
end

daylight = [true, false].sample
time_of_day(daylight)
```

```ruby
def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)
```

Our time_of_day method is simple enough. It accepts one argument, daylight, and proceeds to use that argument as an if conditional. If daylight evaluates to true, then "It's daytime!" will be printed. If it evaluates to false, then "It's nighttime!" will be printed. Also, notice that we use #puts within the if/else statement and not when we invoke the method.

## Question 5: Naming Animals

**Q:** Fix the following code so that the names are printed as expected.

```ruby
def dog
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}."
```

Expected output:

```
The dog's name is Spot.
The cat's name is Ginger.
```

**A:**

```ruby
def dog
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."
```

When running the original code, you should have gotten an error called ArgumentError that looks like this:

```
wrong number of arguments (given 1, expected 0) (ArgumentError)
```

This error is telling you that dog passed in an argument when it was invoked. However, dog doesn't accept any arguments. To fix this, we need to change dog so that it accepts one argument.

After fixing the error and running the code again, you should encounter the same type of error. It should look like this:

```
wrong number of arguments (given 0, expected 1) (ArgumentError)
```

This error is nearly identical to the first one, except it's reversed. Here, cat accepts one argument. However, no arguments were passed in when cat was invoked. To fix this, we need to add an argument when we invoke the method, like this: cat('Ginger').

When you're writing methods, it's important to keep track of how many arguments the method accepts and how many it's given upon invocation. Both numbers need to match or an error will be thrown.

## Question 6: Name Not Found

**Q:** Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.

```ruby
puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'
```

The code should output true twice.

**A:**

```ruby
def assign_name(name='Bob')
	name
end

puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'
```

The method assign_name is written the same as any other method except for one key difference: it has a default parameter. This means that it accepts one argument, but doesn't break if that argument isn't given. It will simply assign the parameter to the default value which, in this case, is "Bob".

## Question 7: Multiply the Sum

**Q:** Write the following methods so that each output is true.

```ruby
puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
```

**A:**

```ruby
def add
	return 
end

def multiply

end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
```

```ruby
def add(num1, num2)
	return num1 + num2
end

def multiply(num1, num2)
	return num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
```

The goal here is to write two methods, add and multiply, that do simple math operations. We use the + and * operators inside the methods to add or multiply the numbers then we return the results. By returning the results, we can use the add method as an argument for multiply just like we would with a variable.

## Question 8: Random Sentence

**Q:** The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.

```ruby
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
```

Example output:

```
George went walking today!
```

**A:**

```ruby
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
	names[rand(names.length)]
end

def activity(activities)
	activities[rand(activities.length)]
end

def sentence(names, activities)
	puts "#{names} went #{activities} today!"
end

puts sentence(name(names), activity(activities))
```

```ruby
def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
```

Both methods, name and activity, are simple enough. We chose to use Array#sample to grab a random value from the array and return it from the method. Then, we pass those methods as arguments into sentence which lets us use the return value however we want. In this case, we want to combine them into a sentence. Notice that we aren't printing the string from within the method, instead, we're returning it so that it can be printed outside the method.

## Question 9: Print Me (Part 1)

**Q:** Write a method named print_me that prints "I'm printing within the method!" when invoked.

```
print_me
```

**A:**

```ruby
def print_me
	puts "I'm printing within the method!"
end

print_me
```

In previous exercises we've used #puts both inside and outside methods. When you use #puts inside a method, you're outputting one thing and returning another. #puts outputs whatever it's given and returns nil. In this case, we're printing the value inside the method, which means the method's return value is nil.

We can verify that #puts returns nil by using irb.

```
irb :001 > puts "Hello World!"
Hello World!
=> nil
```

The second line shows what was printed to the screen while the third line shows the return value. Looking at this, we can see that #puts outputs "Hello World!" and returns nil.

## Question 10: Print Me (Part 2)

**Q:** Write a method named print_me that returns "I'm printing the return value!" when using the following code.

```
print_me
```

**A:**

```ruby
def print_me
	return "I'm printing within the method!"
end

puts print_me
```

```ruby
def print_me
	"I'm printing within the method!"
end

puts print_me
```

When you don't use #puts within the method or when you invoke the method, then nothing will be printed. This doesn't mean that there's nothing available to print though. Methods will always return something. In this case, print_me is returning the string "I'm printing the return value!". Therefore, to print that string, all we need to do is place #puts before the method invocation.
