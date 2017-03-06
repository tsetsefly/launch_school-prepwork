# [Hashes](https://launchschool.com/books/ruby/read/hashes)

## Intro

A **hash** is a data structure that stores items by associated keys. Arrays store items by an ordered index. Entries in a hash are called key-value pairs. Generally surrounded by curly braces ```{}``` and comma-separated.

Two ways to create hashes:

The old way:
```ruby
irb :001 > old_syntax_hash = {:name => 'bob'}
=> {:name=>'bob'}
```

The newer way:
```ruby
irb :002 > new_hash = {name: 'bob'}
=> {:name=>'bob'}
```

Multiple key-value pairs:
```ruby
irb :003 > person = { height: '6 ft', weight: '160 lbs' }
=> {:height=>'6 ft', :weight=>'160 lbs'}
```

Adding onto an existing hash:
```ruby
irb :004 > person[:hair] = 'brown'
=> "brown"
irb :005 > person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

irb :006> person[:age] = 62
=> 62
irb :007> person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}
```

Removing from an existing hash:
```ruby
irb :008 > person.delete(:age)
=> 62
irb :009 > person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}
```

Retrieving info from a hash:
```ruby
irb :010 > person[:weight]
=> "160 lbs"
```

Merging hashes:
```ruby
irb :011 > person.merge!(new_hash)
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}
```

## Iterating over hashes

Using the ```each``` method:
```ruby
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
	puts "Bob's #{key} is #{value}"
end
```

## Hashes as optional parameters

```ruby
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
      " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")
```

## Hashes vs. arrays

* Specific label? **Hash**
* Order matter? **Array**
* Stack (first-in-first-out)? **Array**
* Queue (last-in-first-out)? **Hash**

## Hash keys

Can use many data types as the key. However, must use ```=>``` (hash rocket) style when not using symbols as keys.

```ruby
irb :001 > {"height" => "6 ft"}     # string as key
=> {"height"=>"6 ft"}
irb :002 > {["height"] => "6 ft"}   # array as key
=> {["height"]=>"6 ft"}
irb :003 > {1 => "one"}             # integer as key
=> {1=>"one"}
irb :004 > {45.324 => "forty-five point something"}  # float as key
=> {45.324=>"forty-five point something"}
irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
=> {{:key=>"key"}=>"hash as a key"}
```

## Common hash methods

[The hash class](http://ruby-doc.org/core-2.1.0/Hash.html)

### ```has_key?```

