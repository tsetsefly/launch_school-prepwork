# [Preparations](https://launchschool.com/books/ruby/read/preparations)

## Methods
In documentation, methods are either denoted by a ```::``` or a ```#```
* ```::``` denotes a class method
* ```::``` denotes an instance method

**NOTE:** these symbols have different meanings in code syntax (vs. documentation syntax)

* **Instance methods:** can be applied to any instance of the class
Example ```#split```
```ruby
"world wide web".split
```
* **Class methods:** are called directly from the class
Example ```::new```
```ruby
String.new("blue")
```

## Parent
Every class sub-classes from a parent class, so you can access methods (both instance and class) that are a part of the parent class.

Example: The parent of ```String``` is ```Object```

So this means you can potentially get namespace collisions from inheirited methods from parent classes.

## irb

Interactive environment for ruby at the command line.

## Ruby Interpreter

```ruby example.rb```

## RubyGems

```gem install <gem name>```

## rbenv

### Installation

[Instructions for installing rbenv](https://github.com/rbenv/rbenv)
* Be mindful of what shell you use (bash, zsh, etc)
* **Caution:** some of the commands will overwrite your ~/.zshrc file
* Also install [ruby-build](https://github.com/rbenv/ruby-build#readme)
* Remember to reset your terminal session

### Usage
```
rbenv version
rbenv global <version number>
rbenv local <version number>
```

## Debugging code with Pry

Pry is a library that doubles as an alternative to irb.

```gem install pry```

You'll need to both ```require "pry"``` and add a ```binding.pry``` to your code to use it for debugging

```ruby
require "pry"

a = [1, 2, 3]
a << 4
binding.pry # execution will pause here, allowing you to inspect all objects
puts a
```

Continue program execution with ```Ctrl + D```