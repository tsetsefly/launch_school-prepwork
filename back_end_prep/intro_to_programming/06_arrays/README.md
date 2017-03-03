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


