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

## Question 3

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

## Question 4

**Q:**

**A:**


## Question 5

**Q:**

**A:**


## Question 6

**Q:**

**A:**

## Question 7

**Q:**

**A:**


## Question 8

**Q:**

**A:**

## Question 9

**Q:**

**A:**


## Question 10

**Q:**

**A:**
