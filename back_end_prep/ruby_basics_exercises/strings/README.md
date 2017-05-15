# [Strings](https://launchschool.com/exercise_sets/abf5dd86)

## Question 1: Create a String

**Q:** Create an empty string using the String class and assign it to a variable.

**A:**

```ruby
nothing = String.new
```

In Ruby, strings can be created in multiple ways. Empty strings, however, can only be created in two ways. In the solution, we use one of the two ways, which is invoking String's ::new class method. The second way involves the use of a string literal, like so:

```ruby
empty_string = ''
```

Ruby interprets string literals as String objects. Therefore, '' and String::new accomplish the same task because they both return an empty string object.

## Question 2: Quote Confusion

**Q:** Modify the following code so that double-quotes are used instead of single-quotes.

```ruby
puts 'It\'s now 12 o\'clock.'
```

Expected output:

```
It's now 12 o'clock.
```

**A:**

```ruby
puts "It\'s now 12 o\'clock."
```

When creating strings, we have the option of using either double-quotes or single-quotes. It's important to know the differences between them, especially when single-quotes are included in the text, like in the example.

Single-quotes don't allow for escape sequences. For instance, if you wanted to start a new line:

```ruby
'Hello\nworld' # => Hello\nworld
```

The escape sequence (\n) will be displayed instead of interpreted. There is one exception, however, which is the escaping of other single-quotes, such as:

```ruby
'12 o\'clock'
```

Even though this is perfectly valid Ruby, double-quotes are preferred in this situation, according to the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide#strings).

Further Exploration

It's possible to write a string without surrounding it with double- or single-quotes. Instead of using double-quotes, we could write the example string like this:

```ruby
%Q(It's now 12 o'clock.) # => "It's now 12 o'clock."
```

%Q is an alternative to double-quoted strings. There's also an alternative for single-quoted strings: %q.

What about strings that contain double- and single-quotes? How would you write those using the alternate syntax?

## Question 3: Ignoring Case

**Q:** Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

```ruby
name = 'Roger'
```

Expected output:

```
true
false
```

**A:**


## Question 4: Dynamic String

**Q:**

**A:**


## Question 5: Combining Names

**Q:**

**A:**


## Question 6: Tricky Formatting

**Q:**

**A:**

## Question 7: Goodbye, not Hello

**Q:**

**A:**


## Question 8: Print the Alphabet

**Q:**

**A:**

## Question 9: Pluralize

**Q:**

**A:**


## Question 10: Are You There?

**Q:**

**A:**
