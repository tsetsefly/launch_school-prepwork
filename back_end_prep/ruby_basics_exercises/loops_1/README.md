# [Loops 1](https://launchschool.com/exercise_sets/2ce91ec4)

## Question 1: Runaway Loop

**Q:** The code below is an example of an infinite loop. The name describes exactly what it does: loop infinitely. This loop isn't useful in a real program, though. Modify the code so the loop stops after the first iteration.

```ruby
loop do
  puts 'Just keep printing...'
end
```

**A:**

```ruby
loop do
  puts 'Just keep printing...'
  break
end
```

Stopping a loop is as simple as adding the reserved word break inside the loop. break is nearly always necessary when using loop and doesn't require any conditions. When loop executes a break, it stops iterating immediately and exits the block.

## Question 2: Loopception

**Q:** The code below is an example of a nested loop. Both loops currently loop infinitely. Modify the code so each loop stops after the first iteration.

```ruby
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
  end
end

puts 'This is outside all loops.'
```

**A:**

```ruby
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'
```

Looping within a loop is not uncommon. Therefore, it's important to understand how to avoid infinite loops and where to place break statements. When it comes to nested loops, it can be difficult to clearly understand what's going on. As you digest the code, focus on one loop at a time.

We begin by modifying the innermost block. This loop can be stopped by placing break on the line following #puts. This forces the loop to iterate only once. After we've fixed the innermost loop, our attention is now focused on the parent loop. We modify this loop the same way we modified the child loop: by placing break on the line following the end of the innermost loop.

The code in this exercise is considered bad practice. It's used to illustrate how to break out of a nested loop, not to encourage the use of nested loops.

## Question 3: Control the Loop

**Q:** Modify the following loop so it iterates 5 times instead of just once.

```ruby
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end
```

**A:**

```ruby
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  if iterations = 6
  	break
  end
end
```

```ruby
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end
```

## Question 4: Loop on Command

**Q:** Modify the code below so the loop stops iterating when the user inputs 'yes'.

```ruby
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
end
```

**A:**

```ruby
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end
```

This is a practical example of how a loop can be used to retrieve and handle user input. In the initial code, the loop continued iterating regardless of the input's value. To change that, we add break with an if condition. The condition, in this case, needs to be answer == 'yes'. This tells break to only execute if the input value is 'yes'.

We added a simple error message after break to demonstrate that break doesn't have to be at the end of the loop to do its job. Also, providing an error message can be useful in providing a better user experience when dealing with inputs.

```ruby
puts 'Incorrect answer. Please answer "yes".'
```

## Question 5: Say Hello

**Q:** Modify the code below so "Hello!" is printed 5 times.

```ruby
say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end
```

**A:**

```ruby
say_hello = true

i = 0

while say_hello
  puts 'Hello!'
  i += 1
  if i > 4
  	say_hello = false
  end
end
```

```ruby
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end
```

Loops are used regularly in Ruby, therefore, it's important to understand how to control them based on the program's conditions. In this exercise, the while loop is set to run based on the condition of say_hello. Since say_hello was initialized as true, the loop will execute at least once. Upon the first iteration, however, say_hello is set to false. Therefore, when while evaluates the condition of say_hello on the second iteration, it won't execute the block because say_hello equals false.

Now that we understand how this while loop works, we need to modify it to fit the requirements. In this case, we need to only change say_hello to false if we've said "Hello!" 5 times. We can accomplish this by adding a counter variable and if condition. We need count to track the number of times the loop has executed. Once count reaches 5, our if condition will evaluate to true.

We use Ruby's shorthand way of writing the if condition but it could also be written like this:

```ruby
if count == 5
  say_hello = false
end
```

Our solution works well, but there are simpler ways of accomplishing the same thing.

```ruby
5.times do
  puts 'Hello!'
end
```

Although using #times may be simpler and lets you write less code, it's still important to understand the fundamentals of how a method like #times actually works. Just keep in mind that there's usually more than one way to accomplish a given task.

## Question 6: Print While

**Q:** Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

```ruby
numbers = []

while <condition>
  # ...
end
```

Example output (your numbers will most likely be different):

```
62
96
31
16
36
```

**A:**

```ruby
i = 0

while i < 5
  puts rand(100)
  i += 1
end
```

```ruby
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers
```

Implementing a while loop that iterates under set conditions should be fairly trivial. The more difficult part of this exercise is, perhaps, getting random numbers and keeping track of them. To accomplish this, we use #rand. This method works well because it returns a random number between 0 and one less than the number provided. In this case, that number is 100.

Once the random number is returned, we want to avoid printing it immediately. If we simply printed the returned number, while would iterate infinitely. Instead, we want to add the returned number to an array. This way, we can tell whileto stop iterating after 5 numbers have been added to the array.

## Question 7: Count Up

**Q:** The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

```ruby
count = 10

until count == 0
  puts count
  count -= 1
end
```

**A:**

```ruby
count = 1

until count == 11
  puts count
  count += 1
end
```

The until loop is the opposite of the while loop. while iterates until the condition evaluates to false. until iterates until the condition evaluates to true. In this case, the condition evaluates to true when count equals 0. We want it to be the opposite though. We would like until to iterate until count is greater than 10. We use greater than here so 10 is included in the output. If we used ==, then 9 would be the last number printed.

There are two more things that need to be changed to fill the requirements. count should be initialized as 1 instead of 10 and, within the loop, count should add 1 instead of subtract 1.

## Question 8: Print Until

**Q:** Given the array of several numbers below, use an until loop to print each number.

```ruby
numbers = [7, 9, 13, 25, 18]
```

Expected output:

```
7
9
13
25
18
```

**A:**

```ruby
numbers = [7, 9, 13, 25, 18]
i = 0

until i > 4
  puts numbers[i]
  i += 1
end
```

```ruby
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end
```

There are multiple ways we could have used until to accomplish this task. Our solution uses a counter variable to track the current iteration number. This number gets incremented upon each iteration.

Using count helps us in two ways. First, it lets us control the number of iterations. In this case, we want to stop iterating when count equals the length of numbers. Second, we use it to select the next value in the array. This works because count matches the index of each number we want to print.

## Question 9: That's Odd

**Q:** The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

```ruby
for i in 1..100
  puts i
end
```

**A:**

```ruby
for i in 1..100
  puts i if i % 2 == 1
end
```

```ruby
for i in 1..100
  puts i if i.odd?
end
```

for loops aren't used very often in Ruby, but it's still important to know how they work. It's typically used to iterate over a collection. In this case, we use it to iterate over the range 1..100, therefore, the i variable represents the current iteration number. This makes it easy to count from 1 to 100 by outputting the value of i.

For this exercise, we'd like to only output the odd numbers. We can do this by adding an if statement to #puts. We can tell #puts to only output i if i is an odd number by using the #odd? method on i.

## Question 10: Greet Your Friends

**Q:** Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

```ruby
friends = ['Sarah', 'John', 'Hannah', 'Dave']
```

Expected output:

```
Hello, Sarah!
Hello, John!
Hello, Hannah!
Hello, Dave!
```

**A:**

```ruby
friends = ['Sarah', 'John', 'Hannah', 'Dave']
count = 0

until count == friends.size
  puts "Hello, " + friends[count] + "!"
  count += 1
end
```

```ruby
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end
```

The for loop is useful for looping over a set number of elements. Using for allows us to easily do something with each element in the given array. In this case, we want to output each name along with a greeting. We can do this by using the friend variable which represents the current element. We simply need to output our greeting and friend.

When naming variables in a for loop it's typical to use the standard format: for friend in friends, for cat in cats, etc. This makes it clear that we're iterating over friends and doing something with each friend.

