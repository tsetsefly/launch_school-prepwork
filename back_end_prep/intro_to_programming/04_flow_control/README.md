# [Flow Control](https://launchschool.com/books/ruby/read/flow_control)

## Conditionals

Conditions are formed using a combination of ```if``` statements and **comparison operators**

* ```if``` statement reserved words: ```(if, else, elsif, end)```
* Comparison operators: ```(<, >, <=, >=, ==, !=)```
* Combining expressions: ```(&&, ||, !)```

```ruby
puts "Put in a number: "
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end
```

Other ways to use conditions and comparisons:
```ruby
if x == 3 then puts "x is 3" end

puts "x is 3" if x == 3

puts "x is NOT 3" unless x == 3
```

## Comparisons

Comparison operators: ```(<, >, <=, >=, ==, !=)```

## Combining expressions

Combining expressions: ```(&&, ||, !)```

Order of **precedence**:

1. ```<=, <, >, >=``` (comparison)
2. ```==, !=``` (equality)
3. ```&&``` (logical AND)
4. ```||``` (logical OR)

## Ternary Operator

To build short, concise conditional ```if``` / ```else``` statements (generally on one line)

```ruby
# Ternary operator example

irb :001 > true ? "this is true" : "this is not true"
 => "this is true"

irb :001 > false ? "this is true" : "this is not true"
 => "this is not true"
```

## Case statements

Similar functionality to an ```if``` statement.

Uses reserved words: ``` case, when, else, end```

```ruby
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
```

```ruby
# case_statement.rb <-- refactored with no case argument

a = 5

answer = case
  when a == 5
    "a is 5"
  when a == 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer
```

## True and false

**In Ruby, every expression evalutes to ```true``` when used in flow control except ```false``` and ```nil```.**

Subtle example (evaluates to true because evaluating the assignment of ```5``` to ```x```)
```ruby
if x = 5
  puts "how can this be true?"
else
  puts "it is not true"
end
```

Above would be different from...
```ruby
if x == 5
  puts "how can this be true?"
else
  puts "it is not true"
end
```
