# [User Input](https://launchschool.com/exercise_sets/fa30c236)

## Question 1: Repeat after me

**Q:** Write a program that asks the user to type something in, after which your program should simply display what was entered.

```ruby
# Example

$ ruby repeater.rb
>> Type anything you want:
This is what I typed.
This is what I typed.
```

**A:**

```ruby
puts "Type anything you want: "
phrase = gets.chomp
puts phrase
```

This program first uses #puts to display a prompt. The use of >> is nothing special - we just use it to distinguish prompts from other kinds of text displayed by the program. It doesn't matter if you leave it off.

After displaying the prompt, we use #gets to read a line of input from the user and store it a variable named text.

Finally, we use #puts a second time to redisplay what the user typed.

## Question 2: Your Age in Months

**Q:** Write a program that asks the user for their age in years, and then converts that age to months.

```
$ ruby age.rb
>> What is your age in years?
35
You are 420 months old.
```

**A:**

```ruby
puts "What is your age is years?"
age = gets.chomp.to_i
months = age * 12
puts "You are #{months} months old."
```

This solution is very similar to that of the previous exercise: we use #puts to display a prompt and output our results. and use #gets to obtain a value from the user.

In addition, we need to perform a calculation on the input value. To accomplish this, we need to convert the input value (which is a String) to an Integer, which we do with the #to_i method. We then multiply the result by 12 to get the age in months.

Further Exploration

What happens if you enter a non-numeric value for the age?

## Question 3: Print Something (Part 1)

**Q:** Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

Examples:

```
$ ruby something.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something.rb
>> Do you want me to print something? (y/n)
n

$ ruby something.rb
>> Do you want me to print something? (y/n)
help
```

**A:**

```ruby
puts "Do you want me to print something? (y/n)"
response = gets.chomp
if response == "y"
  puts "something"
end
```

```ruby
puts '>> Do you want me to print something? (y/n)'
choice = gets.chomp
puts 'something' if choice == 'y'
```

Here we display an appropriate prompt using #puts, obtain the user's input with #gets, and finally, print something with #puts if the user entered a y.

Note that we now need to use #chomp on the return value of #gets; if we don't, the newline character will be included in choice, and choice == 'y' will return false.

Further Exploration

What happens if you type Y (in uppercase) instead of y in response to the prompt? This is a bad user experience: when obtaining input from a user, you should almost always allow both uppercase and lowercase entries. Can you modify this program so that it prints "something" if the user enters Y or y?

## Question 4: Print Something (Part 2)

**Q:** In the previous exercise, you wrote a program that asks the user if they want the program to print "something". However, this program recognized any input as valid: if you answered anything but y, it treated it as an n response, and quit without printing anything.

Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again. Keep asking for a response until you receive a valid y or n response. In addition, your program should allow both Y and N (uppercase) responses; case sensitive input is generally a poor user interface choice. Whenever possible, accept both uppercase and lowercase inputs.

Examples:

```
$ ruby something2.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something2.rb
>> Do you want me to print something? (y/n)
help
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
Y
something

$ ruby something2.rb
>> Do you want me to print something? (y/n)
N

$ ruby something2.rb
>> Do you want me to print something? (y/n)
NO
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
n
```

**A:**

```ruby
response = nil

until response == "n"
  puts "Do you want me to print something? (y/n)"
  response = gets.chomp.downcase
  if response == "y"
    puts "something"
    break
  elsif response != "n"
    puts "Invalid input! Please enter y or n"
  end
end
```

```ruby
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'
```

The solution to this exercise will become a familiar pattern early during your Launch School learning. We use a plain loop to solicit inputs until we have a valid input, then exit that loop.

In most such loops, we will need the user's choice after the loop finishes running. Since variables created inside of loops are scoped in such a way that they aren't visible outside the loop, we must start by first defining the variable we want to use. Here we start by setting choice to nil; this guarantees that choice will be available both inside the loop and after the loop has finished running.

Inside the loop, we display our prompt, and then use #gets to read the user's input. We also use #chomp in this case to get rid of the newline, and #downcase to convert the input to lowercase.

Next, we use break to exit the loop if the user's input is a valid choice. Here we use #include? and apply it against an Array that contains the list of valid entries (y and n). We use the %w() shortcut syntax to represent the Array since it is easier to read %w(y n) than ['y', 'n'].

If we have an invalid response, we display an error message, after which the loop repeats. It continues repeating until a valid choice is entered.

After the loop finishes, we perform the requested action: we print '"something"', but only if the user's choice was y.

## Question 5: Launch School Printer (Part 1)

**Q:** Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.

For now, just use #to_i to convert the input value to an Integer, and check that result instead of trying to insist on a valid number; validation of numeric input is a topic with a fair number of edge conditions that are beyond the scope of this exercise.

Examples:

```
$ ruby lsprint.rb
>> How many output lines do you want? Enter a number >= 3:
5
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!

$ ruby lsprint.rb
>> How many output lines do you want? Enter a number >= 3:
2
>> That's not enough lines.
>> How many output lines do you want? Enter a number >= 3:
3
Launch School is the best!
Launch School is the best!
Launch School is the best!
```

**A:**

```ruby
response = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  response = gets.chomp.to_i
  if response > 2
    response.times do
      puts "Launch School is the best!"
    end
    break
  else response < 3
    puts "That's not enough lines."
  end
end
```

Like the previous exercise, our solution uses the soon-to-be-familiar pattern of looping to obtain a valid input. In this case, we use #to_i to convert inputs to Integer values, and only allow inputs of at least 3.

Once we have the number of lines to print, it's a simple matter to just print the lines in a loop.

## Question 6: Passwords

**Q:** Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

Examples:

```
$ ruby password.rb
>> Please enter your password:
Hello
>> Invalid password!
>> Please enter your password:
Secret
>> Invalid password!
>> Please enter your password:
SecreT
Welcome!
```

**A:**

```ruby
response = nil

until response == 'SecreT'
  puts '>> Please enter your password:'
  response = gets.chomp
  puts '>> Invalid Password' if response != 'SecreT'
end

puts 'Welcome!'
```

```ruby
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'
```

This exercise introduces a small variation on the pattern we've established in that we don't need to provide access to the entered password outside of the loop, so we don't need to initialize password_try before entering the loop.

Entering passwords is one of the few places where user input should be case-sensitive, so we don't attempt to convert the input to a consistent case, but instead compare the entry directly against the stored password.

This exercise should not be used as a model for how to deal with passwords in real programs. It has at least 2 major faults:

* The actual password is stored as clear text, not as encrypted form
* The password the user enters is visible for shoulder surfers to see
The purpose of this program is to provide a demonstration of obtaining inputs in different situations.

## Question 7: User Name and Password

**Q:** In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

```
$ ruby login.rb
>> Please enter user name:
John
>> Please enter your password:
Hello
>> Authorization failed!
>> Please enter user name:
mary
>> Please enter your password:
SecreT
>> Authorization failed!
>> Please enter user name:
admin
>> Please enter your password:
root
>> Authorization failed!
>> Please enter user name:
admin
>> Please enter your password:
SecreT
Welcome!
```

**A:**

```ruby
response = [nil, nil]
USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  response[0] = gets.chomp
  puts '>> Please enter your password:'
  response[1] = gets.chomp
  break if response[0] == 'admin' && response[1] == 'SecreT'
  puts '>> Authorization failed!'
end

puts 'Welcome!'
```

```ruby
USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'
```

In this exercise, we solicit two pieces of information, the user name and password, and validate the two entries together. The process is very similar to our established input loop pattern, except we now solicit two different items in the loop. To do this, we need an extra call to both #puts and #gets.

As with the previous exercise, passwords are treated as case sensitive. User names vary a bit. On some systems, the user name is case sensitive, while on others, it is case insensitive. Our solution assumes that user names are case sensitive, but can easily be converted to case insensitive by changing line 6 to read:

```ruby
user_name = gets.chomp.downcase
```

Soliciting two bits of information that are tightly coupled like this is not very common - usually, you want to validate each entry separately. We'll show this in a later exercise.

This exercise should not be used as a model for how to deal with user names and passwords in real programs. The purpose of this program is to provide a demonstration of obtaining two inputs in an input loop.

## Question 8: Dividing Numbers

**Q:** Write a program that obtains two Integers from the user, then prints the results of dividing the first by the second. The second number must not be 0, and both numbers should be validated using this method:

```ruby
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
```

This method returns true if the input string can be converted to an Integer and back to a string without loss of information, false otherwise. It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.

Examples:

```
$ ruby division.rb
>> Please enter the numerator:
8
>> Please enter the denominator:
2
>> 8 / 2 is 4

$ ruby division.rb
>> Please enter the numerator:
8.3
>> Invalid input. Only integers are allowed.
>> Please enter the numerator:
9
>> Please enter the denominator:
4
>> 9 / 4 is 2


$ ruby division.rb
>> Please enter the numerator:
10
>> Please enter the denominator:
a
>> Invalid input. Only integers are allowed.
>> Please enter the denominator:
0
>> Invalid input. A denominator of 0 is not allowed.
>> Please enter the denominator:
5
>> 10 / 5 is 2
```

**A:**

```ruby
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil
quotient = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end
numerator = numerator.to_i

loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  break if valid_number?(denominator) && denominator != '0'
  if denominator == '0'
    puts ">> Invalid input. A denominator of 0 is not allowed."
  else
    puts ">> Invalid input. Only integers are allowed."
  end
end
denominator = denominator.to_i

quotient = numerator / denominator

puts "#{numerator} / #{denominator} is #{quotient}"
```

```ruby
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only integers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"
```

In this exercise, we solicit two pieces of independent information, so we need separate loops for each number. The first should look reasonably familiar by now, but the second is a bit more complex due to the additional requirement that the denominator not be 0. There are a number of different ways to do this; we just chose a way that we feel is reasonably clear.

In our last two lines, we convert the two inputs to integers, divide them, and then print the result. Note that we are doing integer division, so 9 / 4 is 2, not 2.25.

## Question 9: Launch School Printer (Part 2)

**Q:** In an earlier exercise, you wrote a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. Our solution looked like this:

```ruby
number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end
```

Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.

Examples:

```
$ ruby lsprint2.rb
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
5
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
2
>> That's not enough lines.
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
3
Launch School is the best!
Launch School is the best!
Launch School is the best!
>> How many output lines do you want? Enter a number >= 3 (Q to quit):
q
```

**A:**

```ruby
number_of_lines = nil

loop do
	loop do
	  puts '>> How many output lines do you want? Enter a number >= 3 (Q to Quit):'
	  number_of_lines = gets.chomp
    break if number_of_lines == 'q' || number_of_lines == 'Q'
    number_of_lines = number_of_lines.to_i
	  break if number_of_lines >= 3
	  puts ">> That's not enough lines."
	end

  break if number_of_lines == 'q' || number_of_lines == 'Q'

	while number_of_lines > 0
	  puts 'Launch School is the best!'
	  number_of_lines -= 1
	end
end
```

```ruby
loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? ' \
         'Enter a number >= 3 (Q to Quit):'

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

  break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end
```

Our solution requires an outer loop to control the repetition of the input and output processes. We also need to change how inputs are handled since we can have both numeric and alphabetic (q or Q) inputs, and must account for both.

We store the actual input string in input_string, get rid of the newline, and convert it to lowercase. We then break out of the inner loop if input_string is a q. The rest of the inner loop is just like our original program: we convert the input to a number, and ensure the value is at least 3.

Our inner loop is followed by a second break if input_string == 'q' to break out of the outer loop if the user quit. This is necessary since a break inside a loop always exits the innermost containing loop, so the break in the inner loop can't exit the outer loop.

The two breaks for input_string == 'q' are repetitive and a bit ugly. Better solutions are possible, but beyond the scope of this exercise.

## Question 10: Opposites Attract

**Q:**

**A:**
