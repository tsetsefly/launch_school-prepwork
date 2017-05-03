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

**Q:** 

**A:**

## Question 7: Stop Counting

**Q:**

**A:**


## Question 8: Only Even

**Q:**

**A:**

## Question 9: First to Five

**Q:**

**A:**


## Question 10: Greeting

**Q:**

**A:**
