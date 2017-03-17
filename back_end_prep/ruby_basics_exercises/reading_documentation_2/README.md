# [Reading Documentation 2](https://launchschool.com/exercises/0f953b73)

## Question 1

Q: How would you use ```String#upcase``` to create an uppercase version of the string ```"xyz"```?

A: ```xyz = "xyz".upcase```

## Question 2

Q: Assume you have this Array:

```ruby
a = %w(a b c d e)
```

How would you use ```Array#insert``` to insert the numbers ```5```, ```6```, and ```7``` between the elements with values ```'c'``` and ```'d'```?

A: ```a.insert(3, 5, 6, 7)```

The documentation for ````Array#insert``` shows that its signature as:

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

## Question 3

Q: Assume you have the following code:

```ruby
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect
```

What will each of the 3 ```puts``` statements print?

A: 