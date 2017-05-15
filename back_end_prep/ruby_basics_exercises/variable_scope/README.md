# [Variable Scope](https://launchschool.com/exercises/10b4a68a)

## Question 1: What's my Value? - 1

**Q:** What will the following code print and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```

**A:**

```7```

Assignment, including assignment operators like ```+=```, does not mutate a variable, but changes the object that variable references. Since only the reference for ```b``` is changed, no alteration is made to the value referenced by ```a```. Thus, ```a``` is still equal to 7 at the time of the puts.

Another way to look at this is that numbers in ruby are immutable. Thus, there is no way for ```my_value``` to mutate the value referenced by ```b```. Thus, ```a``` is not changed by ```my_value```.

## Question 2: What's my Value? - 2

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a


```

**A:**

```7```

This problem is identical to the previous problem. The only thing we did is change the name b to a. Note that we can do this because methods are self-contained with respect to local variables. Variables outside the method are not visible inside the method, so the top level a is not available inside my_value. Furthermore, variables inside the method are not visible outside the method, so the a inside my_value is a local variable with no top-level visibility.

## Question 3: What's my Value? - 3

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

**A:**

```7```

Once again, the result is 7. Once again, a inside the my_value is not visible outside my_value, and a at the top level is not visible inside my_value because methods are self-contained with respect to local variables.

## Question 4: What's my Value? - 4

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```

**A:**

```Zy-zy```

This problem looks remarkably similar to the first problem in this set. However, this time we are working with a string, and we are assigning to b[2] instead of b.

The result is quite different. When we were working with a numeric variable, no changes were made to a. This was due to the fact that numbers are immutable, and assignment merely changes the object that a variable references. Now, though, Strings are mutable - they can be modified - and, in particular, the method String#[]= is a mutating method; it actually modifies the string. Since we are actually modifying the string referenced by b, and b references the same string as a, the result from printing a shows an update to the value of the string.

## Question 5: What's my Value? - 5

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```

**A:**

```Xyzzy```

This problem is nearly identical to the previous problem, except this time we are assigning directly to the variable b. When my_value begins executing, b is set to reference the same string that is reference by a. If we modify that string by using b, then that modification is reflected in a; it's the same string.

However, we are not modifying that string in this exercise. Instead, we are assigning a completely new string to b. Assignment never changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left. So, at the end of my_value, b references the string 'yzzyX', while a remains unchanged: it still references "Xyzzy".

## Question 6: What's my Value? - 6

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

**A:**

If you said this would issue an error message or raise an exception, you are correct. The error is:

```
`my_value': undefined local variable or method `a' for main:Object (NameError)
```

Even though a is defined before my_value is defined, it is not visible inside my_value. Methods are self contained with respect to local variables; local variables defined inside the method are not visible outside the method, and local variables defined outside the method are not visible inside the method.

Note, however, that local variables will be visible (via closures) inside blocks, procs, and lambdas.

## Question 7: What's my Value? - 7

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

**A:**

```
3
```

We are now dealing with blocks; the rules for blocks differ from the rules for methods. In methods, local variables are self-contained. Not so in blocks; blocks can use and modify local variables that are defined outside the block.

In this case, a starts out as 7, then we set a to 1, 2 and 3 in sequence. By the time we get to the puts, a has a value of 3.

## Question 8: What's my Value? - 8

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

**A:**

If you said this would issue an error message or raise an exception, you are correct. The error is:

```
undefined local variable or method `a' for main:Object (NameError)
```

Compared to the previous exercise, all we have done is remove the assignment of the a at the top level to after the block, and that has a completely different result. We now get an exception when the puts is executed because a is not defined. It is undefined because a in the block is local to the block; it is local to the block because a was not previously defined prior to the block.

## Question 9: What's my Value? - 9

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```

**A:**

```7```

This problem demonstrates *shadowing*. Shadowing occurs when a block argument hides a local variable that is defined outside the block. Since the outer ```a``` is shadowed, the ```a += 1``` has no effect on it. In fact, that statement has no effect at all.

The internal ```a``` is not the same as the local variable ```a``` because of how the array is referenced.

## Question 10: What's my Value? - 10

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```

**A:**

If you said this would issue an error message or raise an exception, you are correct. The error is:

```
undefined method `+' for nil:NilClass (NoMethodError)
```

a at the top level is not visible inside the block because the block is inside my_value, and methods are self-contained with respect to local variables. Since the outer a is not visible inside my_value, it isn't visible inside the block.

# TEMPLATE

## Question 1:

**Q:**

**A:**


## Question 2:

**Q:**

**A:**


## Question 3:

**Q:**

**A:**


## Question 4:

**Q:**

**A:**


## Question 5:

**Q:**

**A:**


## Question 6:

**Q:**

**A:**

## Question 7:

**Q:**

**A:**


## Question 8:

**Q:**

**A:**

## Question 9:

**Q:**

**A:**


## Question 10:

**Q:**

**A:**
