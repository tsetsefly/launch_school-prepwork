# [The Basics](https://launchschool.com/books/ruby/read/basics)

## Strings

### Difference between single and double quotes

Escaping characters
```ruby
# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex 2: with single quotes and escaping
'The man said, \'Hi there!\''
```
String interpolation with double quotes
```ruby
irb :001 > a = 'ten'
=> "ten"

irb :002 > "My favorite number is #{a}!"
=> "My favorite number is ten!"
```

## Symbols

Symbols are generally used for immutable references

```ruby
# Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

## nil

```nil``` is treated as ```false``` in control flow
```ruby
irb :001 > if nil
irb :002 > puts "Hello, World!"
irb :003 > end
=> nil
```
... however ...
```ruby
irb :001 > false == nil
=> false
```

## Type Conversion

```ruby
irb :001 > '4'.to_i
=> 4

irb :002 > '4 hi there'.to_i
=> 4

irb :003 > 'hi there 4'.to_i
=> 0

irb :004 > '4'.to_f
=> 4.0

irb :005 > '4 hi there'.to_f
=> 4.0

irb :006 > 'hi there 4'.to_f
=> 0.0
```

## Basic Data Structures

### Arrays

Denoted by a ```[]``` (square bracket). Can contain any data type.

Accessed by index
```ruby
irb :001 > [ 1, 2, 3, 4, 5][0]
=> 1
```

### Hashes

Denoted by a ```{}``` (curly braces). Also called a dictionary, is a set of key-value pairs.

```ruby
irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
=> {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
irb :002 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat]
=> "meows"
```

### Expressions and Return

