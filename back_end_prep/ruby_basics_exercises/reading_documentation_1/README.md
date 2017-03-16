# [Reading Documentation 1](https://launchschool.com/exercise_sets/4c75f0c5)

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

Q: Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.

A: Use the ```number_to_human``` [method](http://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#method-i-number_to_human)

Also...

Using **literals**.

You can write large numbers by using underscores to separate groups of digits, like so:

```1_987_654_321```

Finding this information can be a bit difficult, especially if you don't know the right terms; most values you use in ruby have some sort of "literal" syntax: numbers can be entered as ```123```, while Strings are entered using quotes, e.g., "quotes". The key word here is **literal**. Since it is also a syntax item, we might start our search on the syntax page in the core API documentation.

If you go to this page, though, you won't find a great deal of information - just a table of different syntax items, and a whole bunch of links down the left side. The very first item in the table (as of this writing) is **Literals**, which sounds promising. But, there doesn't appear to be a way to learn more.

Actually, there is - look under Files on the left side of the page. There you will find a link to a file named ```literals.rdoc```. Click this to view a page that discusses all of ruby's different literals (and there are quite a few).

Once on the ```literals.rdoc``` page, you will find a brief blurb about using underscores for readability in numeric literals.

## Question 6

Q: Using the ruby documentation, determine how you would write a Symbol that represents your name. We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.

A: [Ruby cocumentation on symbols](http://ruby-doc.org/core-2.4.0/Symbol.html). Can also look at the documentation for symbol literals is on the ```literals.rdoc``` [page](https://ruby-doc.org/core-2.4.0/doc/syntax/literals_rdoc.html).

## Question 7

Q: Consider the following method and a call to that method:

```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```

Use the ruby documentation to determine what this code will print.

A: We are using "default positional arguments" here.

```ruby
[4, 5, 3, 6]
```

Information about arguments can be found at [Ruby Docs](http://ruby-doc.org/) by selecting the ```doc/syntax/calling_methods.rdoc``` [link](http://ruby-doc.org/core-2.4.0/doc/syntax/calling_methods_rdoc.html) from the core API page. If you scroll down to the Default Positional Arguments section and start reading, you will learn that ruby lets you use default arguments in the middle of a number of positional arguments, much as we are doing here. The documentation shows that positional arguments are filled out first, then the default arguments are set with any values supplied, and, finally, default values are applied to anything remaining.

In this exercise, ```4```, ```5``` and ```6``` are assigned to the positional arguments ```a```, ```b``` and ```d```. Note that ```5``` overrides the default value for ```b```, but ```c``` is not set to any of the listed values. ```c```, instead, is assigned its default value, ```3```. Thus, when the results are printed, we see the results shown in our solution.

## Question 8

Q: Lets move on now to the documentation you will use most often; the core API section on Classes and Modules. All of these are listed under **Classes** on the Core API page.

Locate and open the class documentation for the ```String``` class.

A: ```String``` [documentation](http://ruby-doc.org/core-2.4.0/String.html)

To get to this page, go to the Core API page of ruby-docs.org, and locate the Classes section. You can apply a filter to this list by just typing into the text box next to the header: if you type "str", for example, the list collapses into just a handful of classes/methods, of which one is our desired ```String``` class. Clicking on String opens the ```String``` class documentation.

In later exercises, we will see the important parts of this page. For now, the main part of each page contains descriptions for all methods associated with the class or module you are viewing. They are also listed on the left under the **Methods** header.

There are two main types of methods:

1. **instance methods** (```#```), which you will use most often, and...
2. **class methods** (```::```), which will become more important later.

For now, you are mostly interested in the instance methods.

On the left-hand side, instance methods are identified with a ```#```, e.g., ```#size```, while class methods and module methods are identified with a ```::```, e.g., ```::new```. This is merely a documentation convention; the ```#``` and ```::``` are not part of the method names, nor are they used to refer to methods in your programs.

You will often see the ```#``` and ```::``` notation in ruby documentation, not just on the ruby-doc.org website. In particular, we use it here at Launch School. You will also see this notation prefixed by a class or module name; for instance, you may see ```String#size``` or ```Array#size```, ```Range::new``` or ```Hash::new```. This notation simply means that the named method is a member of the specified class or module.

## Question 9

Q: Use the ruby documentation for the ```String``` class to determine which method can be used to right justify a ```String``` object.

A: ```rjust``` [method](http://ruby-doc.org/core-2.4.0/String.html#method-i-rjust)

## Question 10

Q: Locate the ruby documentation for methods ```File::path``` and ```File#path```. How are they different?

A: One is a class method and the other is an instance method. Class methods are called on the class, while instance methods are called on objects.

```File::path``` [class method](http://ruby-doc.org/core-2.4.0/File.html#method-c-path)

```ruby
# calls the class method File::path since we're calling it on the 'File' class
puts File.path('bin')
```

```File#path``` [instance method](http://ruby-doc.org/core-2.4.0/File.html#method-i-path)

```ruby
# calls the instance method File#path since we're calling it on an object of the 'File' class, namely 'f'
f = File.new('my-file.txt')
puts f.path
```
