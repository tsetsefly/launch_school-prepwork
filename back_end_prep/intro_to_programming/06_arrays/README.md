# [Arrays](https://launchschool.com/books/ruby/read/arrays)

## Accessing Arrays

An **array** is an ordered list of leements that can be of any type.

Format:
```ruby
irb :001 > [1, 'Bob', 4.33, 'another string']
```

Some methods of accessing the array:
```ruby
irb :003 > array.first
=> 1
irb :004 > array.last
=> "another string"
irb :006 > array[2]
=> 4.33
```

## Modifying Arrays

```array.pop``` method:
```ruby
irb :001 > [1, 'Bob', 4.33, 'another string']

irb :007 > array.pop
=> "another string"
irb :008 > array
=> [1, "Bob", 4.33]
```

The pop method gets rid of the last element as an action and 'mutates the caller.' However, **returns** the popped element.

```array.push``` method:
```ruby
=> [1, "Bob", 4.33]
irb :009 > array.push("another string")
=> [1, "Bob", 4.33, "another string"]
```

Shovel operator (```<<```):
```ruby
irb :010 > array.pop
=> "another string"
irb :011 > array << "another string"
=> [1, "Bob", 4.33, "another string"]
```

Map method:
```ruby
irb :001 > a = [1, 2, 3, 4]
=> [1, 2, 3, 4]
irb :002 > a.map { |num| num**2 }
=> [1, 4, 9, 16]
irb :003 > a.collect { |num| num**2 }
=> [1, 4, 9, 16]
irb :004 > a
=> [1, 2, 3, 4]
```

The ```map``` method applies a block of code over an array and returns a **new** array with those results. It does NOT mutate the caller. The ```collect``` method is and alias to ```map``` and does the same thing.

```delete_at``` method:

Modifies your array destructively.

```ruby
irb :005 > a.delete_at(1)
=> 2
irb :006 > a
=> [1, 3, 4]

```delete``` method:

If you know the value of what you want to delete but not the index.

```ruby
irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"]
=> ["cat", "dog", "bird", "cat", "snake"]
irb :008 > my_pets.delete("cat")
=> "cat"
irb :009 > my_pets
=> ["dog", "bird", "snake"]
```

```uniq``` method:

Iterates through array and deletes and duplicates. It does NOT mutate the caller but returns a new array with the results.

The bang operator (```!```)

Can make a non-destructive method destructive. It does not work for all methods.

```ruby
irb :013 > b = [1, 1, 2, 2, 3, 3, 4, 4]
=> [1, 1, 2, 2, 3, 3, 4, 4]
irb :014 > b.uniq!
=> [1, 2, 3, 4]
irb :015 > b
=> [1, 2, 3, 4]
```

## Iterating over arrays

The ```select``` method:

```ruby
irb :001 > numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb :002 > numbers.select { |number| number > 4 }
 => [5, 6, 7, 8, 9, 10]
irb :003 > numbers
 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

 ## Methods with a ```!```

 A bang operator (```!```) at the end of a method generally means that the method will change (or mutate) the caller permanently. Unfortunately this is not always the case.

 NOTE: ```push``` and ```pop``` are destructive (mutates the caller) and don't have a ```!```.
```

## Mutating the Caller

It is possible to send an argument to a method and have that method and change that argument forever without knowing. Therefore make sure to know:

1. what a method is doing to its arguments
2. what a method returns

What does this output?

## Nested Arrays

```ruby
irb :001 > teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
=> [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
irb :002 > teams[1]
=> ["Frank", "Molly"]

## Comparing Arrays

```ruby
irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > b = [2, 3, 4]
=> [2, 3, 4]
irb :003 > a == b
=> false
irb :004 > b.pop
=> 4
irb :005 > b.unshift(1)
=> [1, 2, 3]
irb :006 > a == b
=> true
```

NOTE: the ```unshift``` method is kinda the opposite of ```pop```.

## ```to_s```

```ruby
irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > "It's as easy as #{a}"
=> "It's as easy as [1, 2, 3]"
```

## Common Array Methods

[The array class](http://www.ruby-doc.org/core-2.1.0/Array.html)

### ```include?```

Checks to see if the argument given is included in the array.

NOTE: ```?``` at the end of an array generally means that it will return a boolean value.

```ruby
irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.include?(3)
=> true
irb: 003 > a.include?(6)
=> false
```

### ```flatten```

Used to flatten nested arrays into a one-dimensional array.

```ruby
irb: 001 > a = [1, 2, [3, 4, 5], [6, 7]]
=> [1, 2, [3, 4, 5], [6, 7]]
irb: 002 > a.flatten
=> [1, 2, 3, 4, 5, 6, 7]
```

Not destructive without a ```!```

### ```each_index```

Iterates through an array much like the ```each``` method except it represents the **index** instead of the **value**.

```ruby
irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_index { |i| puts "This is index #{i}" }
This is index 0
This is index 1
This is index 2
This is index 3
This is index 4
=> [1, 2, 3, 4, 5]
```

### ```each_with_index```

Lets you manipulate both index and value (passes in two parameters).

```ruby
irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
1. 1
2. 2
3. 3
4. 4
5. 5
=> [1, 2, 3, 4, 5]
```

### ```sort```

Returns a sorted array. It is not destructive.

```ruby
irb :001 > a = [5, 3, 8, 2, 4, 1]
=> [5, 3, 8, 2, 4, 1]
irb :002 > a.sort
=> [1, 2, 3, 4, 5, 8]
```

### ```product```

Creates an array of all combinations of all elements of all arrays.

```ruby
irb :001 > [1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
```

## ```each``` vs. ```map```

### ```each```

Allows for iteration over a collection. It is generally preferred to a ```for``` loop. ```each``` runs the code in the block once for each element in the collection and returns the collection it was invoked on. With no block, it returns an enumerator.

```ruby
a = [1, 2, 3]
a.each { |e| puts e }

# Outputs
1
2
3
=> [1, 2, 3]
```

```ruby
a = [1, 2, 3]
a.each { |e| puts e + 2 }

# Outputs
3
4
5
=> [1, 2, 3]
```

```ruby
a = [1, 2, 3]
a.each
=> #<Enumerator: [1, 2, 3]:each>
```

### ```map```

Works similarly to ```each``` except that the return value creates a new array containing the values after the block code is run on each element.

```ruby
a = [1, 2, 3]
a.map { |x| x**2 }
=> [1, 4, 9]
```

```ruby
a = [1, 2, 3]
a.map { |x| puts x**2 }
=> [nil, nil, nil]
```

```ruby
a = [1, 2, 3]
a.map
#<Enumerator: ...>
```