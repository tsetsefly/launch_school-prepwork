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

**Q:**

**A:**


## Question 4: Print Something (Part 2)

**Q:**

**A:**


## Question 5: Launch School Printer (Part 1)

**Q:**

**A:**


## Question 6: Passwords

**Q:**

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
