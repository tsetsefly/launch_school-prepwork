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