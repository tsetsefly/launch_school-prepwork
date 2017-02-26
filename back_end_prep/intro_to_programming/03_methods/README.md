# [Methods](https://launchschool.com/books/ruby/read/methods)

## Intro

Methods must be defined with a reserved word ```def```. At the end you use reserved word ```end``` to denote completion.

```ruby
def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
```

In the above example ```(words)``` is a **parameter**.

**Arguments** are pieces of information that are sent into a method to be modified or used to return a specific result. We "pass" arguments into a method when we call it. For example, the strings we send into the ```say``` method through the ```(words)``` parameter are arguments.

### Default parameters

Automatically inserts a parameter in case an argument isn't passed.

```ruby
def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")
```

### Optional parenthesis

Stylistic choice to include parenthesis or not for readability.

```say()``` is the same as ```say```

```say("hi")``` is the same as ```say "hi"```

## ```obj.method``` or ```method(obj)```

There are two main ways to use methods:

1. ```some_method(obj)``` is for when you send arguments to a method
2. Explicit caller: ```a_caller.some_method(obj)```
