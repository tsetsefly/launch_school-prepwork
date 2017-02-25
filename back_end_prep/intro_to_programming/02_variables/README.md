# Variables

# Getting Data from a User
```ruby
name = gets
name = gets.chomp
```

# Variable Scope

A variable's scope determines where in a program a variable is available for use. It is defined by where the variable is initialized or created. Usually defined by a *block*, or a piece of code delimited by ```{}``` or ```do/end```.

```ruby
a = 5  # variable is initialized in the outer scope

3.times do |n|
  a = 3  # is a accessible here, in an inner scope?
end

puts a
```

