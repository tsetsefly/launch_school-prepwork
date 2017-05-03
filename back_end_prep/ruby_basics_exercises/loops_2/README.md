# [Loops 2](https://launchschool.com/exercise_sets/7d22644c)

## Question 1: Even or Odd?

**Q:** Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

```ruby
count = 1

loop do
  count += 1
end
```

Expected output:

```
1 is odd!
2 is even!
3 is odd!
4 is even!
5 is odd!
```

**A:**

```ruby
count = 1

loop do
  puts count.to_s + " is odd!" if count.odd?
  puts count.to_s + " is even!" if count.even?
  count += 1
  break if count > 5
end
```

```ruby
count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end
```

There are three main things going on inside this loop. First, count adds 1 to itself upon each iteration. This part was initially provided to you. Second, break is checking the value of count upon each iteration and will stop the loop if count equals 5. Lastly, there is an if/else statement that prints whether a number is even or odd. The if condition takes advantage of the Integer#even? method to check whether count is an even number. If it is, then "#{count} is even!" will be printed, if not, then "#{count} is odd!" will be printed.

## Question 2: Catch the Number
  
**Q:** Modify the following code so that the loop stops if number is between 0 and 10.

```ruby
loop do
  number = rand(100)
  puts number
end
```

**A:**

```ruby
loop do
  number = rand(100)
  puts number
  break if number < 11 && number > -1
end
```

```ruby
loop do
  number = rand(100)
  puts number

  if number.between?(0, 10)
    break
  end
end
```

Inside the loop, we're assigning a random integer to number upon each iteration. Our goal for this exercise is to create a condition that stops the loop if number is between 0 and 10. There are a couple ways we could have implemented this, however, we chose to use the Comparable#between? method. #between? takes two arguments and returns a boolean, true or false, if the caller's value is between the two integers provided. In this case, we use it in an if condition that will execute break when #between? returns true.

## Question 3: Conditional Loop

**Q:** Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.

```ruby
process_the_loop = [true, false].sample
```

**A:**

```ruby
process_the_loop = [true, false].sample

loop do
  puts "The loop was processed!" if process_the_loop == true
  puts "The loop wasn't processed!" if process_the_loop == false
  break
end
```

```ruby
process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end
```

The variable given to us, process_the_loop, will be assigned randomly to either true or false. Our goal here is to run the loop only if process_the_loop evaluates to true. We can use an if/else statement to accomplish this task.

To run a loop that prints "The loop was processed!" once, we can simply add a break immediately following #puts inside loop. We don't need to have any sort of counter variable in this case because we only need to print the string once. Then all we need to do is place puts "The loop wasn't processed!" in the else clause. This will print if process_the_loop evaluates to false.

## Question 4: Get the Sum

**Q:** The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer. Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.

```ruby
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
end
```

**A:**

```ruby
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end
```

```ruby
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  end

  puts 'Wrong answer. Try again!'
end
```

To do anything with the user's input, we must first assign it to a variable. This makes it easier to modify the input or check its value later on. In this case, we'll check the value of answer in the if condition. If answer equals 4 then "That's correct!" will be printed and the loop will stop when break is processed. If answer equals anything other than 4 then the error will be printed and the loop will continue iterating.

## Question 5: Insert Numbers

**Q:** Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.

```ruby
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
end
puts numbers
```

**A:**

```ruby
numbers = []
counter = 0

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  counter += 1
  break if counter > 4
end
puts numbers
```

```ruby
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end
puts numbers
```

When dealing with user input, it's likely the input will either be evaluated or added to something. In this case, we're adding an integer to an array. Array#push works well for this because it will take the value of input and add it to the end of the numbers array, which is exactly what we need.

Now that we are handling the input properly, the next step is to stop the loop. We can accomplish this by taking advantage of the Array#size method. #size returns the number of elements contained in the caller. To stop the loop when numbers contains 5 elements, we can simply add a break with an if numbers.size == 5 condition.

## Question 6: Empty the Array

**Q:** Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

```ruby
names = ['Sally', 'Joe', 'Lisa', 'Henry']
```

Keep in mind to only use loop, not while, until, etc.

**A:**

```ruby
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  name = names.pop
  puts name
  break if names.size == 0
end
```

```ruby
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end
```

Loops are really useful for iterating through arrays, therefore, it's important to know how to stop them when you need. In this case, we want to stop the loop once names is empty. To do this, we first need to figure out how to print each name while removing it from the array. There are a couple ways to do this, but we've chosen to use the Array#shift method. #shift removes the first element from an array and returns its value. This allows us to simply #puts the returned value.

Now that we're removing an element from names upon each iteration, we can stop the loop once the array is empty. Array#empty? is a really handy method for situations like this. #empty? simply checks to see if there are any elements in an array and returns a boolean. This allows us to add a break and an if names.empty? condition to stop the loop.

Our solution prints the names from first (Sally) to last (Henry). Can you change this to print the names from last to first?

## Question 7: Stop Counting

**Q:** The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

```ruby
5.times do |index|
  # ...
end
```

**A:**

```ruby
5.times do |index|
  puts index
  break if index == 2
end
```

The times method counts from 0 to one less than the specified number. In this case, that number is 5. The block parameter index represents the current iteration number. We can print the current number with puts index.

To stop the loop, we can simply add break. However, we want to only stop iterating when the current number equals 2. We can do this by adding the if index == 2 condition to break.

## Question 8: Only Even

**Q:** Using next, modify the code below so that it only prints even numbers.

```ruby
number = 0

until number == 10
  number += 1
  puts number
end
```

**A:**

```ruby
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end
```

Sometimes when using a loop, you need to skip to the next iteration. That's where next comes in. next lets you skip to the next iteration based on certain conditions. In this exercise, we use next to skip to the next iteration when number is odd. We can use the method Integer#odd? to evaluate number and return true if it's an odd number.

Further Exploration

Why did next have to be placed after the incrementation of number and before #puts?

## Question 9: First to Five

**Q:** The following code increments number_a and number_b by either 0 or 1. loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration. Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breaking out of the loop.

```ruby
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  break
end
```

**A:**

```ruby
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"  
end
```

## Question 10: Greeting

**Q:** Given the code below, use a while loop to print "Hello!" twice.

```ruby
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
```

**A:**

```ruby
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings = number_of_greetings - 1
end
```

```ruby
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
```

Using a loop makes it easy to do something multiple times. In this case, we want to call the greeting method two times. To do this, we'll make our conditional evaluate to true until number_of_greetings is less than 1. We control the value of number_of_greetings by subtracting 1 on each iteration. Lastly, to print "Hello!" we just need to invoke the greeting method provided to us.
