# [Reading Documentation 2](https://launchschool.com/exercises/0f953b73)

## Question 1: Methods Without Arguments

**Q:** How would you use ```String#upcase``` to create an uppercase version of the string ```"xyz"```?

**A:** ```xyz = "xyz".upcase```

## Question 2: Required Arguments

**Q:** Assume you have this Array:

```ruby
a = %w(a b c d e)
```

How would you use ```Array#insert``` to insert the numbers ```5```, ```6```, and ```7``` between the elements with values ```'c'``` and ```'d'```?

**A:** ```a.insert(3, 5, 6, 7)```

The documentation for ```Array#insert``` shows that its signature as:

* insert(index, obj...) → ary

As with the previous exercise, this isn't too helpful until you understand what it is telling you.

The part to the left of the → shows that ```insert``` takes a required index argument, and 0 or more ```obj``` arguments. We know that ```index``` is required because the name is shown in the signature with no ornamentation; such standalone names in the arguments portion of a signature are required arguments. Similarly, we know that we need 0 or more ```obj``` arguments because this time the name is adorned by ```...```, which should always be interpreted in the documentation as "0 or more occurrences of the item to the left".

> You will also see 0 or more arguments written as ```*obj``` or as ```[obj]*```. In fact, both of these are probably more common than 
> the ```...``` adornment.

Finally, we must ask if we need do anything with the return value. Going back to the signature, we see that the return value is given as ```ary```, not ```new_ary```; this usually means that the return value is the object to which the method was applied; ```a``` in this case. Since ```#insert``` modifies something, it must have modified ```a```, so it really doesn't matter if we use the return value, or just continue to use a directly; do whichever is most natural for the situation.

To prove this:

```ruby
puts a.insert(3, 5, 6, 7).inspect # => ["a", "b", "c", 5, 6, 7, "d", "e"]
puts a.inspect                    # => ["a", "b", "c", 5, 6, 7, "d", "e"]

b = a.insert(3, 5, 6, 7)
puts a.object_id            # => 70127114718140
puts b.object_id            # => 70127114718140
```

## Question 3: Optional Arguments

**Q:** Assume you have the following code:

```ruby
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect
```

What will each of the 3 ```puts``` statements print?

**A:** all *return* ```nil``` but *print*:

* ```["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]```
* ```["abc def ghi", "jkl mno pqr", "stu vwx yz"]```
* ```["abc def ghi", "jkl mno pqr,stu vwx yz"]```

[Documentaiton for ```split```](http://ruby-doc.org/core-2.4.0/String.html#method-i-split)

```split(pattern=nil, [limit]) → anArray```

## Question 4: Optional Arguments Redux

**Q:** Assume you have the following code:

```ruby
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```

What will each of the 4 ```puts``` statements print?

**A:** [Date documentation](https://ruby-doc.org/stdlib-2.3.1/libdoc/date/rdoc/Date.html)

```ruby
# puts Date.new
-4712-01-01

# puts Date.new(2016)
2016-01-01

# puts Date.new(2016, 5)
2016-05-01

# puts Date.new(2016, 5, 13)
2016-05-13
```

## Question 5: Mandatory Blocks

**Q:** The ```Array#bsearch``` method is used to search ordered ```Array```s more quickly than ```#find``` and ```#select``` can. Assume you have the following code:

```ruby
a = [1, 4, 8, 11, 15, 19]
```

How would you search this ```Array``` to find the first element whose value exceeds ```8```?

**A:** [```bsearch``` documentation](https://ruby-doc.org/core-2.2.0/Array.html#method-i-bsearch)

```a.bsearch {|x| x > 8 } #=> 11```

## Question 6: Multiple Signatures

**Q:** What do each of these ```puts``` statements output?

```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```

**A:** [```fetch``` documentation](https://ruby-doc.org/core-2.2.0/Array.html#method-i-fetch)

```ruby
puts a.fetch(7) #=> IndexError: index 7 outside of array bounds: -5...5
puts a.fetch(7, 'beats me') #=> "beats me"
puts a.fetch(7) { |index| index**2 } #=> 49
```

The documentation for Array#fetch has the signature:
* fetch(index) → obj
* fetch(index, default) → obj
* fetch(index) { |index| block } → obj

With this basic overview, we can tell that the first ```puts``` should print an error message; the second form returns the value of the ```default``` argument if the element doesn't exist; the third form returns the value returned by the block. So, the first ```puts``` raises an ```IndexError```, the second prints beats me, while the third prints ```49```.

## Question 7: Keyword Arguments

**Q:** What does this code print?

```ruby
5.step(to: 10, by: 3) { |value| puts value }
```

**A:** [```Numeric:step``` documentation](https://ruby-doc.org/core-2.3.0/Numeric.html#method-i-step)

```ruby
5
8
```

Finding the documentation for ```#step``` can be a bit difficult since there are so many different types of number classes in ruby. Even a google search is likely to turn up a lot of false leads. If you need a method that works with numbers, the following classes are worth searching through:

* Fixnum
* Integer
* Float
* Numeric
* Math

```Fixnum``` inherits from ```Integer```; ```Integer``` and ```Float``` inherit from ```Numeric```. ```Numeric``` is basically the superclass of all things numeric, while ```Math``` is a module that supplies a lot of number crunching functionality. Choosing the right documentation to look at is difficult, so, for now, just be aware that you may have to look in multiple locations.

As it happens, ```#step``` is described in the ```Numeric``` class documentation. ```#step``` can be called in 4 different ways, but the way we're interested in is the first one listed. In this version, ```#step``` takes two keyword arguments (also called named arguments, ```:by``` and ```:step``` (keyword arguments are named by symbols). This shows up in our method signature:

* step(by: step, to: limit) { |i| block } → self

The argument named ```:by``` can be seen to be a "step" value, while the argument named ```:to``` is some sort of limit. The text below the signature shows that the "step" value indicates how much the index is incremented by with each iteration, while the "limit" is the largest value; if the index exceeds this value, the loop exits.

We can also see that ```#step``` takes a loop in this first form, and that the block will be executed for each value in the iteration.

Given all of this information, we can see that the code will print ```5``` on its first iteration, ```8``` on the second iteration, and then quit because ```11 > 10```

[Launch School Solution](https://launchschool.com/exercises/1206264a)

## Question 8: Parent Class

**Q:** Use irb to run the following code:

```ruby
s = 'abc'
puts s.public_methods.inspect
```

You should find that it prints a list of all of the public methods available to the String ```s```; this includes not only those methods defined in the String class, but also methods that are inherited from ```Object``` (which inherits other methods from the ```BasicObject``` class and the ```Kernel``` module). That's a lot of methods.

How would you modify this code to print just the public methods that are defined or overridden by the ```String``` class? That is, the list should exclude all members that are only defined in ```Object```, ```BasicObject```, and ```Kernel```.

**A:** [```public_methods``` documentation``` for Strings](https://ruby-doc.org/core-2.4.0/Object.html#method-i-public_methods)

```ruby
s = 'abc'
puts s.public_methods(false).inspect
```

If you look at the ```String``` documentation, you won't find any mention of ```#public_methods```. However, it is clearly available: it runs in our example. How is that? Where do you need to go to find the documentation for ```#public_methods```?

The issue here is that ruby is an object oriented language. Everything is an object, which means that everything has an associated class, and that class in turn has a superclass, or parent. Every class that inherits from a superclass also inherits all of its methods.

In the ```String``` documentation, if you look at the "Parent" box on the left side, you will see that the parent of the ```String``` class is ```Object```; in fact, this is true for most classes in the ruby documentation. What this means for the ```String``` class, though, is that ```String``` inherits from ```Object```, so every method in ```Object``` is also available in ```String```, though perhaps in modified form.

Since ```#public_methods``` is not described in the ```String``` documentation, we obviously must look elsewhere. One of two additional places you can look for method descriptions is in the documentation for the parent. So, go ahead and click ```Object``` in the Parent box to go to the ```Object``` class documentation.

Sure enough, there's ```#public_methods``` (make sure you don't select ```#public_method```) over on the left hand side under Methods. Go ahead and click ```#public_methods``` to scroll down to the documentation for the method.

Once you have the documentation in front of you, you can see that ```#public_methods``` takes an optional argument all. If that value is true or omitted, it returns a list of all public methods available to the object (our ```s``` ```String``` in this case); if all is false, ```#public_methods``` limits the output to just those methods in "the receiver"; for our purposes, this means just the methods defined directly in the ```String``` class.

Thus, our solution to the exercise is to modify the second line of code to include a false argument for ```#public_methods```.

[Launch School Solution](https://launchschool.com/exercises/bdff9488)

## Question 9: Included Modules

**Q:** Use irb to run the following code:

```ruby
a = [5, 9, 3, 11]
puts a.min
```

Find the documentation for the ```#min``` method and modify the above program to print the two smallest values in the ```Array```.

**A:** [```Array``` ```min``` method documentation](https://ruby-doc.org/core-2.4.0/Array.html#method-i-min)

```ruby
a = [5, 9, 3, 11]
puts a.min(2)
```

Ruby version 2.4.0 introduced an ```Array#min``` method not available in prior versions of Ruby; we wrote this exercise prior to that release. 

[Launch School Solution](https://launchschool.com/exercises/6e0bc760)

## Question 10: Down the Rabbit Hole

**Q:** Sometimes, the documentation is going to leave you scratching your head.

In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with ```YAML::load_file```:

```ruby
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
```

Find the documentation for ```YAML::load_file```.

**A:** [```YAML.load_file``` documentation```] (http://ruby-doc.org/stdlib-2.4.0/libdoc/psych/rdoc/Psych.html#method-c-load_file)

If you go to the YAML documentation (it's part of the Standard Library API), you will find a page that is almost completely devoid of useful information. There's not a single method described, and only 3 ridiculously trivial examples. There is no Parent class defined, there are no Included Modules, and the YAML-related links on the left-side are of no help.

The only really useful item on this page is the 3rd paragraph:

> The underlying implementation is the libyaml wrapper Psych.

The key here is the reference to ```Psych```. If you go back to the Standard Library API page and click on ```psych```, you see a long list of Psych-related classes. Unfortunately, that long list makes a quest for a method named ```::load_file``` somewhat daunting.

Fortunately, this page also lists all of the methods in the different classes, and up near the top of this list is ```::load_file```, which is part of the ```Psych``` module. Sure enough, there's the documentation for what we were looking for.

In fact, the entire ```Psych``` class is about methods that will be useful when working with YAML files.

[Launch School Solution](https://launchschool.com/exercises/795e842a)