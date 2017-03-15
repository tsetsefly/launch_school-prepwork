## Question 1

Q: Where can you find the most complete Ruby documentation?

A: You can find up-to-date ruby documentation at the [Ruby Doc Website](http://ruby-doc.org/)!

## Question 2

Q: Locate the description of the while loop in the ruby documentation.

A: You can find the description of the while loop [here](http://ruby-doc.org/core-2.4.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop)!

## Question 3

Q: Using the ruby documentation, determine what value a while loop returns.

A: "The result of a ```while``` loop is ```nil``` unless ```break``` is used to supply a value." [Source](http://ruby-doc.org/core-2.4.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop)

## Question 4

Q: In the previous exercise, you learned that the while loop returns nil unless break is used. Locate the documentation for break, and determine what value break sets the return value to for the while loop.

A: ```break``` accepts a value that supplies the result of the expression it is "breaking" out of:

```ruby
result = [1, 2, 3].each do |value|
  break value * 2 if value.even?
end

p result # prints 4
```

Documentation for ```break``` can be found on the "control expressions" page, or on the ```Object``` class page. Both pages tell you that ```break``` returns the value of the argument if the argument is given. However, neither page explicitly say what happens if you don't provide an argument.

You have to read between the lines here; the ```while``` loop documentation says that ```while``` returns ```nil``` unless ```break``` is supplied a value. So, if ```break``` is not supplied a value, ```while``` still returns ```nil```.

Another way of figuring out that ```break``` returns ```nil``` when not given an argument comes from knowing that ```break``` is a method; since methods must return a value, the only meaningful return value when no argument is given is ```nil```. However, this requires a bit of looking into the mind of the designer.

## Question 5

