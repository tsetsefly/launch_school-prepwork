# [Methods](https://launchschool.com/books/ruby/read/methods)

## Intro

Methods must be defined with a reserved word ```def```. At the end you use reserved word ```end``` to denote completion.

```ruby
def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
```

In the above example ```(words)``` is a **parameter**.

**Arguments** are pieces of information that are sent into a method to be modified or used to return a specific result. We "pass" arguments into a method when we call it. For example, the strings we send into the ```say``` method through the ```(words)``` parameter are arguments.

### Default parameters

Automatically inserts a parameter in case an argument isn't passed.

```ruby
def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")
```

### Optional parenthesis

Stylistic choice to include parenthesis or not for readability.

```say()``` is the same as ```say```

```say("hi")``` is the same as ```say "hi"```

## ```obj.method``` or ```method(obj)```

There are two main ways to use methods:

1. ```some_method(obj)``` is for when you send arguments to a method
2. Explicit caller: ```a_caller.some_method(obj)```

## Mutating the caller

When calling a method, the argument is permanetly altered.

```ruby
def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a
```

The output of the above is ```5``` because the scope of ```number``` is inside of the method ```some_method```. So, ```a```'s value is not reassigned. The caller is **not mutated** in this example. Methods cannot modify arguments passed into them permanently.

Exception to this rule is when you ***mutate the caller***.

```ruby
a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
```

The ```pop``` function *mutates the caller*

Compare with the ```last``` function which does NOT mutate the caller.

```ruby
a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
```

NOTE: the only way to know if a function mutates the caller is to look at the documentation.

## puts vs. return

```return```: in Ruby, every method ALWAYS returns the evaluated result of the last line that is executed unless an explicit return comes before it.

```ruby
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
```

Output of the above is ```7``` because of the **explicit return**.

## Chaining methods

```ruby
def add_three(n)
  n + 3
end

add_three(5).times { puts 'this should print 8 times'}
```

```ruby
"hi there".length.to_s      # returns "8" - a String
```

NOTE: in order to chain methods, the return value must be accepted by the next method

```ruby
def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?" }
```

The above code produces this error:
```ruby
NoMethodError: undefined method `times' for nil:NilClass
```

Could fix with:
```ruby
def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end
```

## Methods as arguments

```ruby
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(num1, num2)
  num1 * num2
end

multiply(add(20, 45), subtract(80, 10))
```

The above produces this:
```ruby
=> 4550
```

Another example:
```ruby
add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
=> 560
```