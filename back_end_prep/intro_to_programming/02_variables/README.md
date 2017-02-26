# Variables

# Getting Data from a User
```ruby
name = gets
name = gets.chomp
```

# Variable Scope

A variable's scope determines where in a program a variable is available for use. It is defined by where the variable is initialized or created. Usually defined by a *block*, or a piece of code delimited by ```{}``` or ```do/end```.

Inner scope can access variables initialized in an outer scope, but not vise versa.

```ruby
a = 5  # variable is initialized in the outer scope

3.times do |n|
  a = 3  # is a accessible here, in an inner scope?
end

puts a
```

Yup! ```puts a``` should output ```3```.

```ruby
a = 5

3.times do |n|
  a = 3
  b = 5      # b is initialized in the inner scope
end

puts a
puts b       # is b accessible here, in the outer scope?
```

```puts b``` will output:
```ruby
scope.rb:11:in `<main>': undefined local variable or method `b' for main:Object
(NameError)
```

Another example:

```ruby
a = 5

def some_method
  a = 3
end

puts a
```

