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

**Q:**

**A:**


## Question 3: Conditional Loop

**Q:**

**A:**


## Question 4: Get the Sum

**Q:**

**A:**


## Question 5: Insert Numbers

**Q:**

**A:**


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
