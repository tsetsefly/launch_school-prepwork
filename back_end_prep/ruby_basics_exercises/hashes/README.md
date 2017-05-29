# [Hashes](https://launchschool.com/exercise_sets/71b9ad5d)

## Question 1: First Car

**Q:** Create a hash that contains the following data and assign it to a variable named car.

|type|color|mileage|
|---|---|---|
|sedan|blue|80_000|

**A:**

```ruby
car = Hash.new
car = {
	type: "sedan",
	color: "blue",
	mileage: "80_000"
}
```

Along with arrays, hashes are among the most used data structures. To write a hash, we surround one or more key-value pairs with braces ({}), like this:

```ruby
{ number: 1 }
```

Notice the syntax used when defining the key-value pair. This syntax was introduced in Ruby 1.9 and makes writing a hash much simpler. The older syntax looks like this:

```ruby
{ :number => 1 }
```

We'll use Symbols as keys in most of these exercises, but we can just as easily use Strings. Symbols are faster and use less memory than Strings, so are preferred as Hash keys. Note also that Symbols and Strings aren't the same when compared. Consider the following:

```ruby
:color == 'color' # false
```

When creating a hash using Strings as keys, keep in mind the required syntax:

```ruby
car = {
  'type'    => 'sedan',
  'color'   => 'blue',
  'mileage' => 80_000
}
```

## Question 2: Adding the Year

**Q:**


|   |   |   |   |   |
|---|---|---|---|---|
|   |   |   |   |   |
|   |   |   |   |   |
|   |   |   |   |   |

**A:**


## Question 3: Broken Odometer

**Q:**


|   |   |   |   |   |
|---|---|---|---|---|
|   |   |   |   |   |
|   |   |   |   |   |
|   |   |   |   |   |

**A:**


## Question 4: What Color?

**Q:**

**A:**


## Question 5: Labeled Numbers

**Q:**

**A:**


## Question 6: Divided by Two

**Q:**

**A:**

## Question 7: Low, Medium, or High?

**Q:**

**A:**


## Question 8: Low or Nothing

**Q:**

**A:**

## Question 9: Multiple Cars

**Q:**

**A:**


## Question 10: Which Collection?

**Q:**

**A:**
