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

```ruby
name = 'Roger'
if
	name.downcase == 'RoGeR'.downcase then puts 'true'
else
	puts 'false'
end

name = 'DAVE'
if
	name.downcase == 'RoGeR'.downcase then puts 'true'
else
	puts 'false'
end
```

String#casecmp compares the value of two strings while ignoring the case of both strings.

```ruby
name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0
```

Discussion

Typically, when comparing strings, the goal is to compare their values, regardless of whether the characters are uppercase or lowercase. In the solution, we perform that exact comparison by using String#casecmp, the case-insensitive version of String#<=>. If you're unfamiliar with #casecmp then you might be surprised to see a numerical return value instead of a boolean.

#casecmp performs a case-insensitive comparison, meaning it ignores the case of each character. When both compared strings are equal, #casecmp will return 0. That's why, in the solution, we needed the comparison with 0. If the return value equals 0, then we know both strings are equal.

What if both strings aren't equal? If the value of the calling string - name - is less than the provided argument - 'RoGeR' - then #casecmp will return -1. Similarly, if the provided argument is less than the calling string, #casecmp will return 1.

## Question 4: Dynamic String

**Q:** Modify the following code so that the value of name is printed within "Hello, !".

```ruby
name = 'Elizabeth'

puts "Hello, !"
```

Expected output:

```
Hello, Elizabeth!
```

**A:**

```ruby
name = 'Elizabeth'

puts "Hello, #{name}!"
```

One of the advantages of using double-quotes is the ability to use string interpolation. With string interpolation, you can invoke a variable - or a method - within a string, and Ruby will automatically call #to_s on the value. This allows us to include dynamic values within a string.

In the solution, we include the name variable in the string by surrounding the invocation of it with curly braces ({}) and prepending those curly braces with the pound sign (#). This tells Ruby to evaluate the code within the curly braces.

## Question 5: Combining Names

**Q:** Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.

```ruby
first_name = 'John'
last_name = 'Doe'
```

Expected output:

```
John Doe
```

**A:**

```ruby
first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name
```

```ruby
first_name = 'John'
last_name = 'Doe'

full_name = first_name + ' ' + last_name
puts full_name
```

Adding strings together can be accomplished in multiple ways. In the solution, we use String#+ to add the specified strings together and return a new string: "John Doe". By using String#+, we must assign the returned string to a variable if we want to use it at a later time. Otherwise, the returned string will be inaccessible.

If we didn't want to create a new variable, and instead modify the existing strings, we could have used String #<<, like this:

```ruby
first_name = 'John'
last_name = 'Doe'

first_name << last_name
puts first_name # => JohnDoe
```

String#<< mutates the caller, which means first_name now represents the full name. This isn't the desired result for this exercise, which is why String#+ was used instead of String#<<.

Further Exploration

Can you think of at least two additional ways to combine a first and last name into a full name?

## Question 6: Tricky Formatting

**Q:** Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

```ruby
state = 'tExAs'
```

Expected output:

```Texas```

**A:**

```ruby
state = 'tExAs'

puts state.capitalize
```

```ruby
state = 'tExAs'

state.capitalize!
puts state
```

Strings are commonly used to hold formatted values. Those values won't always be properly formatted, however. To ensure the correct formatting in this case, we use String#capitalize! in the solution. We use the destructive version of String#capitalize to satisfy the requirement that state is actually modified. #capitalize! mutates the caller, therefore, when we invoke puts state, the correctly formatted value will be printed, and state will continue to have the corrected value afterwards.

## Question 7: Goodbye, not Hello

**Q:** Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

```ruby
greeting = 'Hello!'
puts greeting
```

Expected output:

```Goodbye!```

**A:**

```ruby
greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting
```

Ruby provides a great String method named String#gsub! that allows us to replace specific characters within the string by modifying the original object. In the solution, we use the destructive version of #gsub by invoking it on greeting before invoking #puts. We could have also used the non-destructive version, like so:

```ruby
greeting = 'Hello!'

puts greeting.gsub('Hello', 'Goodbye')
```

This works because #gsub returns the modified string.

## Question 8: Print the Alphabet

**Q:** Using the following code, split the value of alphabet by individual characters and print each character.

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'
```

Expected output:

```
a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
```

**A:**

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'
i = 0
while i < alphabet.length
	puts alphabet[i]
	i = i + 1
end
```

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')
```

It's common to split strings by character or words. In fact, Ruby provides a method named String#split that conveniently does this for us. By invoking #split on alphabet and passing an empty string as an argument, we can separate individual characters in alphabet. To print each character, we simply need to use #puts because #split returns an array containing each character as its own element.

## Question 9: Pluralize

**Q:** Given the following code, use Array#each to print the plural of each word in words.

```ruby
words = 'car human elephant airplane'
```

Expected output:

```
cars
humans
elephants
airplanes
```

**A:** 

```ruby
words = 'car human elephant airplane'

words.split(' ').each do |word|
	puts word << 's'
end
```

To iterate over each word in words we first need to split the string into separate words. As discussed in the previous exercise, String#split will split elements in a string according to the provided argument. In this case, we pass in a string consisting of a single space, which means #split will return an array containing each word.

We then invoke Array#each on the return value of #split, which lets us perform an action for each word. Our goal is to print the plural of each word, therefore, we simply append 's' to the word and invoke #puts.

## Question 10: Are You There?

**Q:** Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

```ruby
colors = 'blue pink yellow orange'
```

Expected output:

```
true
false
```

**A:**

```ruby
colors = 'blue pink yellow orange'

puts colors.include? 'yellow'
puts colors.include? 'purple'
```

To check if a given string includes a specific character or word, we can use String's #include? method. #include? checks the calling string for the provided argument and returns true if the argument is included and false if it isn't.

This way of checking a string for a value is also useful for validating user input. Say you want to return true if a user enters a form of confirmation, like 'yes' or 'yeah', you could do something like this:

```ruby
user_input = gets.chomp.downcase
'yes yeah'.include?(user_input)
```

This is useful, however, it would be more appropriate to use an array in this case, like so:

```ruby
user_input = gets.chomp.downcase
['yes', 'yeah'].include?(user_input)
```

The result is the same, but using an array is preferred when there's more than one value.

Further Exploration

Let's say color is changed to the following value:

```ruby
colors = 'blue boredom yellow'
```

...and we invoke #include? as we did before:

```ruby
puts colors.include?('red')
```

What will the output be? Why?

```true```

Because 'red' is inside 'boREDom'
