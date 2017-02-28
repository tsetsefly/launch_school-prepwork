# [Loops and iterators](https://launchschool.com/books/ruby/read/loops_iterators)

## Simple loop

A repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met.

* ```while``` loops
* ```do / while``` loops
* ```for``` loops

```ruby
loop do
  puts "This will keep printing until you hit Ctrl + c"
end
```

```loop``` will continue to execute until you hit CTRL + 'c' or you insert a break statement inside to execute on a condition

## Controlling loops

```ruby
i = 0
loop do
  i += 1
  puts i
  break         # this will cause execution to exit the loop
end
```

```break``` allows you to exit a loop at any point (will not exit the program)
```ruby
i = 0
loop do
  i += 2
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end
```

```Next```:
```ruby
i = 0
loop do
  i += 2
  if i == 4
    next        # skip rest of the code in this iteration (will not print 4)
  end
  puts i
  if i == 10
    break
  end
end
```

## While loops

```while``` loops evaluates a boolean expression to determine length of loop execution

```ruby
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refactored this line
end

puts "Done!"
```

## Until loops

Opposite of a ```while``` loop

An example of the tools to write expressive code in Ruby.

## Do / While loops

Similar to a ```while`` loop except that **the code is executed once prior to the conditional check.**

```ruby
# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
```

Possible, but not recommended:
```ruby
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'
```

## For loops

```for``` loops are used to loop over a collection of elements. Loops over a finite number of elements.

```ruby
x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Done!"
```

Unlike ```while``` loops the ```for``` loop returns the collection of elements after execution.

```ruby
x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts "Done!"
```

## Conditionals within loops

With ```if``` statements:
```ruby
x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end
```

With ```next```:
```ruby
x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
```

With ```break```:
```ruby
x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end
```

## Iterators

