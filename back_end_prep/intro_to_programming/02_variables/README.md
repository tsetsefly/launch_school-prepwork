# Variables

## Getting Data from a User
```ruby
name = gets
name = gets.chomp
```

## Variable Scope

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

The value of ```puts a``` is ```5```. Methods aren't the same as ```do/end``` or ```{}```.

**Note:** the key distinguishing factor for deciding whether code delimited by ```{}``` or ```do/end``` is considered a block (and thereby creating a new scope for variables), is seeing if the ```{}``` or ```do/end``` immediately follows a method invocation.

## Types of variables

1. Constants
2. Global variables
3. Class variables
4. Instance variables
5. Local variables

### Constants

Variables that don't change. Constants can't be declared within methods. They are available in all an application's scopes.

```ruby
MY_CONSTANT = 'I am available throughout your app.'
```

### Globals

Start the variable name with a ```$```. Variables are available throughout entire app, overrides all scope boundaries.

```ruby
$var = 'I am also available throughout your app.'
```

### Class variables

Start the variable with two ```@@```. These variables are accessible by instances of your class and the class itself. Must be initialized at the class level, outside of any methods.

```ruby
@@instances = 0
```

### Instance variables

