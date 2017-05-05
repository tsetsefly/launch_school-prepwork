# [Methods](https://launchschool.com/exercise_sets/aefc58b9)

## Question 1: Greeting Through Methods (Part 1)

**Q:** Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

```
Hello World
```

**A:**

```ruby
def hello
	return "Hello"
end

def world
	return "World"
end

puts "#{hello} #{world}"
```

To do anything with the methods, we first have to define them. We've chosen to define our methods as hello and world. We've written both methods to only do one thing: return a string. This makes it easy for us to print the desired strings simply by calling the methods with #puts.

## Question 2: 	Greeting Through Methods (Part 2)

**Q:** Write a method named greet that invokes the following methods:

```ruby
def hello
  'Hello'
end

def world
  'World'
end
```

When greet is invoked with #puts, it should output the following:

```
Hello World
```

Make sure you add a space between "Hello" and "World", however, you're not allowed to modify hello or world.

**A:**

```ruby
def hello
  'Hello'
end

def world
  'World'
end

def greet
	puts "#{hello} #{world}"
end

greet
```

```ruby
def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + ' ' + world
end

puts greet
```

In the previous exercise, we invoked hello and world using string interpolation and printed their values with #puts. In this exercise, however, we're extracting that combination and placing it in a method named greet. We invoke both methods as we did before, but this time we don't use string interpolation. We simply invoke the methods and use the + sign to combine their values. If we do hello + world, and don't account for an extra space, the output will look like this:

```
HelloWorld
```

That's not very readable so it'd be good to add a space between the two words. To do that, we place a string containing one space between the method invocations.

```ruby
hello + ' ' + world # => Hello World
```

## Question 3: Make and Model

**Q:** Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.

```ruby
car('Toyota', 'Corolla')
```

Expected output:

```
Toyota Corolla
```

**A:**


## Question 4: Day or Night?

**Q:**

**A:**


## Question 5: Naming Animals

**Q:**

**A:**


## Question 6: Name Not Found

**Q:**

**A:**

## Question 7: Multiply the Sum

**Q:**

**A:**


## Question 8: Random Sentence

**Q:**

**A:**

## Question 9: Print Me (Part 1)

**Q:**

**A:**


## Question 10: Print Me (Part 2)

**Q:**

**A:**
