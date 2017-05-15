# [Conditionals](https://launchschool.com/exercise_sets/0b9fd4d2)

## Question 1: Unpredictable Weather (Part 1)

**Q:** In the code below, sun is randomly assigned as 'visible' or 'hidden'.

```ruby
sun = ['visible', 'hidden'].sample
```

Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

**A:**

```ruby
sun = ['visible', 'hidden'].sample

puts 'The sun is so bright!' if sun == 'visible'
```

```ruby
if sun == 'visible'
  puts 'The sun is so bright!'
end
```

We're originally given a variable named sun. We know that its value will either be 'visible' or 'hidden'. Therefore, when writing the condition for our if statement, we can easily determine what the condition should be. One of the simplest ways to write this condition is to use ==, which returns true only if the two compared entities have the same value.

Knowing this, we can compare sun with 'visible' in our if condition. If this comparison evaluates to true, then we'll use #puts to print "The sun is so bright!".

## Question 2: Unpredictable Weather (Part 2)

**Q:** In the code below, sun is randomly assigned as 'visible' or 'hidden'.

```ruby
sun = ['visible', 'hidden'].sample
```

Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.

**A:**

```ruby
sun = ['visible', 'hidden'].sample

unless sun == 'visible'
	puts 'The clouds are blocking the sun!'
end
```

This exercise should look familiar if you completed the previous one. The difference is, we use the unless statement, which is actually the opposite of the if statement.

Looking at the condition in our solution, you'll notice that it didn't change from the last exercise. This still works because instead of saying "do something if the sun is visible", we're essentially saying "do something if the sun is hidden". In code, this looks like unless sun == 'visible'.

## Question 3: Unpredictable Weather (Part 3)

**Q:** In the code below, sun is randomly assigned as 'visible' or 'hidden'.

```ruby
sun = ['visible', 'hidden'].sample
```

Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

When writing these statements, take advantage of Ruby's expressiveness and use statement modifiers instead of an if...end statement to print results only when some condition is met or not met.

**A:**

```ruby
sun = ['visible', 'hidden'].sample

puts 'The sun is so bright!' if sun == 'visible'
puts 'The clouds are blocking the sun!'unless sun == 'visible'
```

By combining the use of if and unless in one solution, we're able to produce the same output as the previous two exercises.

This solution gives us an opportunity to take advantage of how expressive Ruby is. We can call #puts and simply append an if or unless condition to form a shorter, more readable expression. Such conditions, when added to the end of a statement like this, are called modifiers.

## Question 4: True or False

**Q:** In the code below, boolean is randomly assigned as true or false.

```ruby
boolean = [true, false].sample
```

Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.

**A:**

```ruby
boolean = [true, false].sample

boolean ? puts('I'm true!') : puts('I'm false!')
```

The ternary operator is most useful when there are simple conditions with only two possible outcomes. It essentially reads like this:

```
<condition> ? <result if true> : <result if false>
```

When placing #puts within the appropriate clause, you may have run into an error.

```
syntax error, unexpected tSTRING_BEG, expecting keyword_do or '{' or '('
```

This error is telling you that you need to place parentheses around the argument, like this: puts("I'm true!"). This is one case where you can't take advantage of Ruby's syntactical sugar.

## Question 5: Truthy Number

**Q:** What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end
```

**A:**

```
"My favorite number is 7."
```

The key thing to keep in mind when determining what the code will print is that in Ruby, every expression evaluates to true when used in a condition. The only two exceptions to this are false and nil. Therefore, "My favorite number is 7." will print regardless of number's value as long as it's truthy.

## Question 6: Stoplight (Part 1)

**Q:** In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

```ruby
stoplight = ['green', 'yellow', 'red'].sample
```

Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

**A:**

```ruby
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
	puts 'Go!'
when 'yellow'
	puts 'Slow down!'
when 'red'
	puts 'Stop!'
end
```

Case statements are typically used when comparing multiple values to a single case. For each comparison, we use the reserve word when, like this:

```ruby
when <condition>
```

Following the condition, we add the operation that should be performed if the condition evaluates to true. We can repeat this pattern as many times as we'd like. For this exercise, however, we only need to repeat it three times.

## Question 7: Stoplight (Part 2)

**Q:** Convert the following case statement to an if statement.

```ruby
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end
```

**A:**

```ruby
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
	puts 'Go!'
elsif stoplight == 'yellow'
	puts 'Slow down!'
else
	puts 'Stop!'
end
```

We've written an if statement before, but it's good to see how it compares to a case statement. They're very similar in structure, however, for this example, the case statement would be more appropriate.

As stated in the previous exercise, the case statement is best suited for comparing multiple values to the same case. If you look at the if statement, you can see that we compare stoplight to a different value a total of three times. It would be much simpler to reference stoplight once, then list the comparisons. That's where case really shines.

## Question 8: Sleep Alert

**Q:**

In the code below, status is randomly assigned as 'awake' or 'tired'.

```ruby
status = ['awake', 'tired'].sample
```

Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print that variable.

**A:**

```ruby
status = ['awake', 'tired'].sample

alert = if status == 'awake'
			'Be productive!'
		else
			'Go to sleep!'
		end

puts alert
```

So far, we've been using if statements to print strings directly within the clauses. In this exercise, we aren't printing the string immediately, instead, we're returning the string to be printed at a later time. We can do this quite easily by saving the return value of the if statement to a variable.

If you think about this, a lot of time and space can be saved by structuring your code this way. Instead of repeating #puts twice, or many times, you only have to invoke it on

## Question 9: Cool Numbers

**Q:**

**A:**


## Question 10: Stoplight (Part 3)

**Q:**

**A:**
