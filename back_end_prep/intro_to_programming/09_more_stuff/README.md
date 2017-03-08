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

## Ruby Standard Classes


```