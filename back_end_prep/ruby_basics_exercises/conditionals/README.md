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
	puts 'THe clouds are blocking the sun!'
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


## Question 4: True or False

**Q:**

**A:**


## Question 5: Truthy Number

**Q:**

**A:**


## Question 6: Stoplight (Part 1)

**Q:**

**A:**

## Question 7: Stoplight (Part 2)

**Q:**

**A:**


## Question 8: Sleep Alert

**Q:**

**A:**

## Question 9: Cool Numbers

**Q:**

**A:**


## Question 10: Stoplight (Part 3)

**Q:**

**A:**
