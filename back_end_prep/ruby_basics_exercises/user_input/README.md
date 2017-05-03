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



## Question 7: User Name and Password

**Q:**

**A:**


## Question 8: Dividing Numbers

**Q:**

**A:**

## Question 9: Launch School Printer (Part 2)

**Q:**

**A:**


## Question 10: Opposites Attract

**Q:**

**A:**
