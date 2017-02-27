# [Flow Control](https://launchschool.com/books/ruby/read/flow_control)

## Conditionals

Conditions are formed using a combination of ```if``` statements and **comparison operators**

* ```if``` statement reserved words: ```(if, else, elsif, end)```
* Comparison operators: ```(<, >, <=, >=, ==, !=, &&, ||)```

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

Comparison operators: ```(<, >, <=, >=, ==, !=, &&, ||)```