# [More stuff!](https://launchschool.com/books/ruby/read/more_stuff)

## Regex

Regular expressions.

### Some examples of uses

* Check if the pattern "ss" appears in the string "Mississippi"
* Print out the 3rd word of each esentence from a list of sentences.
* Find and replace all instances of "Mrs" with "Ms" in a sentence.
* Does a string start with "St"?
* Does a string end with "art"?
* Does a string have a non-alphanumeric character in it?
* Are there any whitespace characters in the string?
* Find and replace all non-alphanumeric characters in a string "-".

### Creating regular expressions

Start with a ```/```.

Inside of two ```/``` (```/<regex here>/```) you can put any characters you'd like to match with a string.

```=~``` operator: allows you to see if there is a match in the regular expression.

Looking for the letter "b" in a string "powerball":
```ruby
irb :001 > "powerball" =~ /b/
=> 5
```

NOTE: ```5``` is the index, the expression itself evaluates to ```true```

```ruby
def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

# We have a match
# We have a match
# No match here.
# No match here.
```

```match``` method: allows for regex comparisions as well...
```ruby
irb :001 > /b/.match("powerball")
=> #<MatchData "b">
```

```ruby
def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
```

## Ruby Standard Classes

Don't re-write stuff that's already there.

Examples:

* ```Math``` module
 * ```Math::sqrt``` class method
 * ```Math::PI```
* ```Time```

```ruby
irb :003 > t = Time.new(2008, 7, 4)
=> 2008-07-04 00:00:00 -0400
irb :004 > t.monday?
=> false
irb :005 > t.friday?
=> true
```

## Variables as pointers

What is the difference between...

```ruby
a = "hi there"
b = a
a = "not here"
```

and...

```ruby
a = "hi there"
b = a
a << ", Bob"
```

The ```=``` operator reassigns a variable to a new **memory address**.

The ```<<``` **mutates the caller** (or the memory address / space) by modified the existing string.

## Blocks and Procs

### Blocks

Blocks can be passed into methods like normal variables.

```ruby
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end
```

The ```&``` in the method definition tells us that the argument is a block. Needs to be the last parameter in the method definition.

You call the method the same way (```take_block```). We pass in a block of code using ```do/end```.

```ruby
def take_block(number, &block)
  block.call(number)
end

number = 42   
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
```

Here you pass the ```number``` into ```take_block``` method and use it in our ```block.call```.

### Procs

Procs are blocks that are wrapped in a proc object and stored in a variable to be passed around.

```ruby
talk = Proc.new do
  puts "I am talking."
end

talk.call
```

```ruby
talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"
```

```ruby
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
```

Gives flexibility to reuse blocks in more than one place without repeating code.

## Exception Handling

Dealing with errors in a predictable way.

Ruby has an ```Exception``` class that makes handling errors easier. It has reserved words:

* ```begin```: designates the operation or code that is being handled
* ```rescue```: if the operation fails have an action (like logging the error)

Pattern:
```ruby
begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end
```

```ruby
names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end
```

Calling ```.length``` on ```nil``` will result in an error. The ```rescue``` block will allow the function to continue operating.

Can also use ```rescue``` inline:
```ruby
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"
```

Triggers ```rescue``` block because you can't call ```.each``` on an integer value (the value of the ```zero``` variable). If we didn't have the ```rescue``` block the second ```puts``` (```puts "After each call"```) would not execute.

You can also ```rescue``` pre-existing errors:
```ruby
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
```

Saving the ```ZeroDivisionError``` to the ```e``` variable and printing it to avoid discontinuation of program.

## Exceptions and Stack Traces
